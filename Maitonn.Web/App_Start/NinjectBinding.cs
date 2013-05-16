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

            kernel.Bind<IUnitOfWork>().To<EntitiesContext>().InRequestScope();

            kernel.Bind<ISourceService>().To<SourceService>().InRequestScope();

            kernel.Bind<IMemberService>().To<MemberService>().InRequestScope();

            kernel.Bind<IMember_ActionService>().To<Member_ActionService>().InRequestScope();

            kernel.Bind<ICompanyService>().To<CompanyService>().InRequestScope();

            kernel.Bind<IAreaAttService>().To<AreaAttService>().InRequestScope();

            kernel.Bind<IOutDoorService>().To<OutDoorService>().InRequestScope();

            kernel.Bind<IAuctionCalendarService>().To<AuctionCalendarService>().InRequestScope();

            kernel.Bind<ISearchService>().To<LuceneSearchService>().InRequestScope();

            kernel.Bind<IIndexingService>().To<LuceneIndexingService>().InRequestScope();

            kernel.Bind<IMember_FavoriteService>().To<Member_FavoriteService>().InRequestScope();

      

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


            kernel.Bind<IMember_Money_TypeService>()
              .To<Member_Money_TypeService>()
              .InRequestScope();

            kernel.Bind<IMember_MoneyService>()
              .To<Member_MoneyService>()
              .InRequestScope();

            kernel.Bind<IMember_Money_ListService>()
              .To<Member_Money_ListService>()
              .InRequestScope();


            kernel.Bind<IMember_CreditIndex_TypeService>()
              .To<Member_CreditIndex_TypeService>()
              .InRequestScope();

            kernel.Bind<IMember_CreditIndexService>()
              .To<Member_CreditIndexService>()
              .InRequestScope();

            kernel.Bind<IMember_CreditIndex_ListService>()
              .To<Member_CreditIndex_ListService>()
              .InRequestScope();

            kernel.Bind<IMember_SchemeService>()
                .To<Member_SchemeService>()
                .InRequestScope();

            kernel.Bind<IScheme_MediaService>()
               .To<Scheme_MediaService>()
               .InRequestScope();

            kernel.Bind<IMedia_RefreshService>().To<Media_RefreshService>().InRequestScope();


            kernel.Bind<IMember_VIPService>()
              .To<Member_VIPService>()
              .InRequestScope();

            kernel.Bind<IPayListService>()
                .To<PayListService>()
                .InRequestScope();


            kernel.Bind<IServerItemService>()
              .To<ServerItemService>()
              .InRequestScope();

            kernel.Bind<ISliderImgService>()
             .To<SliderImgService>()
             .InRequestScope();

            kernel.Bind<ITopMediaService>()
              .To<TopMediaService>()
              .InRequestScope();


            kernel.Bind<ITopCompanyService>()
              .To<TopCompanyService>()
              .InRequestScope();

            kernel.Bind<IMember_MessageService>()
              .To<Member_MessageService>()
              .InRequestScope();

            kernel.Bind<ISys_MessageService>()
              .To<Sys_MessageService>()
              .InRequestScope();


            kernel.Bind<IEmailService>()
                .To<EmailService>()
                .InRequestScope();


        }
    }
}