
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Data.Entity.Migrations;
using StackExchange.Profiling;
using StackExchange.Profiling.MVCHelpers;
using Microsoft.Web.Infrastructure.DynamicModuleHelper;
using WebActivator;
using WebBackgrounder;
using Elmah;
using Elmah.Contrib.Mvc;
using Ninject;
using Ninject.Web.Common;
using Maitonn.Web;

[assembly: WebActivator.PreApplicationStartMethod(typeof(JobConfig), "PreStart")]
[assembly: WebActivator.PostApplicationStartMethod(typeof(JobConfig), "Start")]
[assembly: WebActivator.ApplicationShutdownMethod(typeof(JobConfig), "Shutdown")]

namespace Maitonn.Web
{
    public static class JobConfig
    {

        private static readonly Bootstrapper bootstrapper = new Bootstrapper();
        private static JobManager _jobManager;

        public static void PreStart()
        {
            NinjectPreStart();
            MiniProfilerPreStart();
        }

        public static void Start()
        {
            MiniProfilerPostStart();
            //DbMigratorPostStart();
            BackgroundJobsPostStart();
            AppPostStart();
        }

        public static void Shutdown()
        {
            BackgroundJobsStop();
            NinjectStop();
        }



        private static void NinjectPreStart()
        {
            DynamicModuleUtility.RegisterModule(typeof(OnePerRequestHttpModule));
            DynamicModuleUtility.RegisterModule(typeof(NinjectHttpModule));
            bootstrapper.Initialize(CreateKernel);
        }

        private static IKernel CreateKernel()
        {
            var kernel = new StandardKernel();
            kernel.Bind<Func<IKernel>>().ToMethod(ctx => () => new Bootstrapper().Kernel);
            kernel.Bind<IHttpModule>().To<HttpApplicationInitializationHttpModule>();
            NinjectBinding.Binding(kernel);
            //GlobalConfiguration.Configuration.DependencyResolver.GetService(new NinjectDependencyResolver(kernel));
            return kernel;
        }

        private static void NinjectStop()
        {
            bootstrapper.ShutDown();
        }

        private static void DbMigratorPostStart()
        {
            var dbMigrator = new DbMigrator(new Maitonn.Web.Migrations.Configuration());
            //// After upgrading to EF 4.3 and MiniProfile 1.9, there is a bug that causes several 
            //// 'Invalid object name 'dbo.__MigrationHistory' to be thrown when the database is first created; 
            //// it seems these can safely be ignored, and the database will still be created.
            dbMigrator.Update();
        }

        private static void AppPostStart()
        {
            GlobalFilters.Filters.Add(new ElmahHandleErrorAttribute());
        }


        private static void BackgroundJobsPostStart()
        {
            var jobs = new IJob[]
            {
                new WorkItemCleanupJob(TimeSpan.FromDays(1), () => new EntitiesContext(), timeout: TimeSpan.FromDays(4)),
                new LuceneIndexingJob(TimeSpan.FromMinutes(10), timeout: TimeSpan.FromMinutes(2))
            };

            var coordinator = new WebFarmJobCoordinator(new EntityWorkItemRepository(() => new EntitiesContext()));
            _jobManager = new JobManager(jobs, coordinator)
            {
                RestartSchedulerOnFailure = true
            };
            _jobManager.Fail(ex => Elmah.ErrorLog.GetDefault(null).Log(new Error(ex)));
            _jobManager.Start();
        }

        private static void BackgroundJobsStop()
        {
            _jobManager.Dispose();
        }

        private static void MiniProfilerPreStart()
        {
            MiniProfilerEF.Initialize();
            DynamicModuleUtility.RegisterModule(typeof(MiniProfilerStartupModule));
        }

        private static void MiniProfilerPostStart()
        {
            var copy = ViewEngines.Engines.ToList();
            ViewEngines.Engines.Clear();
            foreach (var item in copy)
            {
                ViewEngines.Engines.Add(new ProfilingViewEngine(item));
            }
        }


        private class MiniProfilerStartupModule : IHttpModule
        {
            public void Init(HttpApplication context)
            {
                context.BeginRequest += (sender, e) => MiniProfiler.Start();

                context.AuthorizeRequest += (sender, e) =>
                {
                    bool stopProfiling;
                    var httpContext = HttpContext.Current;

                    if (httpContext == null)
                    {
                        stopProfiling = true;
                    }
                    else
                    {
                        // Temporarily removing until we figure out the hammering of request we saw.
                        //var userCanProfile = httpContext.User != null && HttpContext.Current.User.IsInRole(Const.AdminRoleName);
                        var requestIsLocal = httpContext.Request.IsLocal;

                        //stopProfiling = !userCanProfile && !requestIsLocal
                        stopProfiling = !requestIsLocal;
                    }

                    if (stopProfiling)
                    {
                        MiniProfiler.Stop(true);
                    }
                };

                context.EndRequest += (sender, e) => MiniProfiler.Stop();
            }

            public void Dispose()
            {
            }
        }

    }
}