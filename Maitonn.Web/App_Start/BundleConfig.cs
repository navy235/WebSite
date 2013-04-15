using System.Web;
using System.Web.Optimization;

namespace Maitonn.Web
{
    public class BundleConfig
    {
        // 有关 Bundling 的详细信息，请访问 http://go.microsoft.com/fwlink/?LinkId=254725
        public static void RegisterBundles(BundleCollection bundles)
        {
            //BundleTable.EnableOptimizations = true;
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));


            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.unobtrusive*",
                        "~/Scripts/jquery.validate*"
                        ));

            bundles.Add(new ScriptBundle("~/bundles/jqueryplug").Include(
                       "~/Scripts/jquery.slider-2.0.js",
                       "~/Scripts/jquery.tab-1.0.js",
                       "~/Scripts/jquery.sliderbox-1.0.js",
                       "~/Scripts/jquery.hoverlist-1.0.js",
                       "~/Scripts/jquery.jqzoom-core.js"
                       ));


            bundles.Add(new ScriptBundle("~/bundles/smooth").Include(
                        "~/Scripts/smooth/jquery-ui-1.8.custom.min.js",
                        "~/Scripts/smooth/jquery.ui.selectmenu.js",
                        "~/Scripts/smooth/ jquery.flot.min.js",
                        "~/Scripts/smooth/smooth.js",
                        "~/Scripts/smooth/smooth.menu.js",
                        "~/Scripts/smooth/smooth.table.js",
                        "~/Scripts/smooth/smooth.form.js",
                        "~/Scripts/smooth/smooth.dialog.js",
                        "~/Scripts/smooth/smooth.autocomplete.js"
                        ));


            // 使用 Modernizr 的开发版本进行开发和了解信息。然后，当你做好
            // 生产准备时，请使用 http://modernizr.com 上的生成工具来仅选择所需的测试。
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                        "~/Content/163.base.css",
                        "~/Content/show.css",
                        "~/Content/site.css",
                        "~/Content/kendohelper.css",
                        "~/Content/bootstrap.css",
                        "~/Content/jquery.jqzoom.css"
                        ));


            bundles.Add(new StyleBundle("~/Content/company").Include(
                        "~/Content/163.base.css",
                        "~/Content/show.css",
                        "~/Content/site.css",
                        "~/Content/company.css",
                        "~/Content/kendohelper.css",
                        "~/Content/bootstrap.css"));

            bundles.Add(new StyleBundle("~/Content/base").Include(
                      "~/Content/163.base.css",
                      "~/Content/163.admin.css",
                      "~/Content/site.css",
                      "~/Content/kendohelper.css",
                      "~/Content/bootstrap.css"));


            bundles.Add(new StyleBundle("~/Content/back").Include(
             "~/Content/163.base.css",
             "~/Content/site.css",
             "~/Content/kendohelper.css"));


            bundles.Add(new StyleBundle("~/Content/smooth/css").Include(
                "~/Content/smooth/css/reset.css",
                "~/Content/smooth/css/style.css"
               ));

            bundles.Add(new StyleBundle("~/Content/smooth/css/colors").Include(
                 "~/Content/smooth/css/colors/blue.css"
                ));

            bundles.Add(new StyleBundle("~/Content/login").Include(
                       "~/Content/163.base.css",
                       "~/Content/login.css",
                       "~/Content/kendohelper.css",
                       "~/Content/bootstrap.css"));

            bundles.Add(new StyleBundle("~/Content/kendo/2012.3.1114/css").Include(
                        "~/Content/kendo/2012.3.1114/kendo.common.min.css",
                        "~/Content/kendo/2012.3.1114/kendo.dataviz.min.css",
                        "~/Content/kendo/2012.3.1114/kendo.default.min.css"
                     ));

            bundles.IgnoreList.Clear();


            // Add back the default ignore list rules sans the ones which affect minified files and debug mode
            bundles.IgnoreList.Ignore("*.intellisense.js");
            bundles.IgnoreList.Ignore("*-vsdoc.js");
            bundles.IgnoreList.Ignore("*.debug.js", OptimizationMode.WhenEnabled);

        }
    }
}