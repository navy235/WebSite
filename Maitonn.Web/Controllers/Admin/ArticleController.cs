using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using Kendo.Mvc.UI;
using Kendo.Mvc.Extensions;
using Maitonn.Core;

namespace Maitonn.Web
{
    [Permission]
    public class ArticleController : Controller
    {
        //
        // GET: /Article/
        private IArticleService ArticleService;
        private IArticleCateService ArticleCateService;
        public ArticleController(
             IArticleService _ArticleService,
             IArticleCateService _ArticleCateService
          )
        {
            ArticleService = _ArticleService;
            ArticleCateService = _ArticleCateService;
        }

        #region KendoGrid Action

        public ActionResult Index()
        {
            ViewBag.ArticleCode = Utilities.CreateSelectList(
                ArticleCateService.GetALL().ToList()
                , item => item.ID
                , item => item.CateName, true);
            return View();
        }

        public ActionResult Editing_Read([DataSourceRequest] DataSourceRequest request)
        {

            var Articles = ArticleService.GetKendoALL();
            return Json(Articles.ToDataSourceResult(request));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Create([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Article> Articles)
        {
            var results = new List<Article>();

            if (Articles != null && ModelState.IsValid)
            {
                foreach (var Article in Articles)
                {
                    ArticleService.Create(Article);
                }
            }
            return Json(results.ToDataSourceResult(request, ModelState));
        }


        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Editing_Destroy([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Article> Articles)
        {
            if (Articles.Any())
            {
                foreach (var Article in Articles)
                {
                    ArticleService.Delete(Article);
                }
            }
            return Json(ModelState.ToDataSourceResult());
        }

        #endregion


        #region Create Edit
        public ActionResult Create()
        {
            return View(new ArticleViewModel());
        }

        [HttpPost]
        [ValidateInput(false)]
        [ValidateAntiForgeryToken]
        public ActionResult Create(ArticleViewModel model)
        {

            if (ModelState.IsValid)
            {
                try
                {
                    Article article = new Article()
                    {
                        AddTime = DateTime.Now,
                        ArticleCode = model.ArticleCode,
                        Content = model.Content,
                        Name = model.Name,
                        LastTime = DateTime.Now
                    };
                    ArticleService.Create(article);
                    return RedirectToAction("index");
                }
                catch (Exception ex)
                {
                    ViewBag.Message = ex.Message;
                    return View(model);
                }
            }
            else
            {
                return View(model);
            }
        }

        public ActionResult Edit(int id)
        {
            Article article = ArticleService.Find(id);
            ArticleViewModel model = new ArticleViewModel()
            {
                Name = article.Name,
                ID = article.ID,
                ArticleCode = article.ArticleCode,
                Content = article.Content
            };
            return View(model);
        }

        [HttpPost]
        [ValidateInput(false)]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(ArticleViewModel model)
        {

            if (ModelState.IsValid)
            {
                try
                {
                    ArticleService.Update(model);
                    return RedirectToAction("index");
                }
                catch (Exception ex)
                {
                    ViewBag.Message = ex.Message;
                    return View(model);
                }
            }
            else
            {
                return View(model);
            }

        }
        #endregion
    }
}

