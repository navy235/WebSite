using System;
using System.Web;
using System.Web.Mvc;
using Ninject;
using Ninject.Web.Common;
using Maitonn.Core;
namespace Maitonn.Web
{
    public class NinjectBinding
    {
        public static void Binding(IKernel kernel)
        {
            //kernel.Bind<IUnitOfWork>().To<EntitiesContext>();
            kernel.Bind<IUnitOfWork>()
                .To<EntitiesContext>()
                .InRequestScope();

            kernel.Bind<IMemberService>()
                .To<MemberService>()
                .InRequestScope();
            kernel.Bind<IMember_ActionService>()
                .To<Member_ActionService>()
                .InRequestScope();
            kernel.Bind<ICompanyService>()
                 .To<CompanyService>()
                 .InRequestScope();
            kernel.Bind<IAreaAttService>()
                .To<AreaAttService>()
                .InRequestScope();


            kernel.Bind<IOutDoorService>()
                .To<OutDoorService>()
                .InRequestScope();
            kernel.Bind<IAuctionCalendarService>()
                 .To<AuctionCalendarService>()
                 .InRequestScope();


            kernel.Bind<IDepartmentService>()
                .To<DepartmentService>()
                .InRequestScope();
            kernel.Bind<IPermissionService>()
                .To<PermissionService>()
                .InRequestScope();
            kernel.Bind<IRoleService>()
                .To<RoleService>()
                .InRequestScope();
            kernel.Bind<IGroupService>()
                .To<Groupervice>()
                .InRequestScope();

            kernel.Bind<IArticleService>()
                .To<ArticleService>()
                .InRequestScope();

            kernel.Bind<IStaticTemplateService>()
                .To<StaticTemplateService>()
                .InRequestScope();

            kernel.Bind<IOwnerCateService>()
                .To<OwnerCateService>()
                .InRequestScope();
            kernel.Bind<IAreaService>()
                .To<AreaService>()
                .InRequestScope();
            kernel.Bind<ICompanyBussinessService>()
                .To<CompanyBussinessService>()
                .InRequestScope();
            kernel.Bind<ICompanyFundService>()
                .To<CompanyFundService>()
                .InRequestScope();
            kernel.Bind<ICompanyScaleService>()
                .To<CompanyScaleService>()
                .InRequestScope();
            kernel.Bind<IFormatCateService>()
                .To<FormatCateService>()
                .InRequestScope();
            kernel.Bind<IPeriodCateService>()
                .To<PeriodCateService>()
                .InRequestScope();
            kernel.Bind<IOutDoorMediaCateService>()
                .To<OutDoorMediaCateService>()
                .InRequestScope();
            kernel.Bind<IArticleCateService>()
                .To<ArticleCateService>()
                .InRequestScope();
            //kernel.Bind<IOwnerService>()
            //    .To<OwnerService>()
            //    .InRequestScope();


            kernel.Bind<IEmailService>()
                .To<EmailService>()
                .InRequestScope();


        }
    }
}