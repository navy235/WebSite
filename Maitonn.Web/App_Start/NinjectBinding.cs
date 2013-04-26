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


            kernel.Bind<IMember_Money_TypeService>()
              .To<Member_Money_TypeService>()
              .InRequestScope();

            kernel.Bind<IMember_MoneyService>()
              .To<Member_MoneyService>()
              .InRequestScope();

            kernel.Bind<IMember_Money_ListService>()
              .To<Member_Money_ListService>()
              .InRequestScope();

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