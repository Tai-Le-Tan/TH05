using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TH05.Models;

namespace TH05.Controllers
{
    public class CategoriesController : Controller
    {
        // GET: Categories
            DBSportStoreEntities1 database = new DBSportStoreEntities1();
        public ActionResult Index(string _name)
        {
            if(_name==null)
            {
               
            return View(database.Categories.ToList());
            }
            return View(database.Categories.Where(s=>s.NameCate.Contains(_name)).ToList());
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Category cate)

        {
            try
            {
                database.Categories.Add(cate);
                database.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return Content(" lỗi");
            }
        }
        public ActionResult Details( int id)
        {
            return View(database.Categories.Where(s => s.IDCate == id).FirstOrDefault());
        }
        public ActionResult Edit(int id)
        {
            return View(database.Categories.Where(s => s.IDCate == id).FirstOrDefault());
        }
        [HttpPost]
        public ActionResult Edit(int id,Category cate)
        {
            database.Entry(cate).State = System.Data.Entity.EntityState.Modified;
            database.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Delete(int id)
        {
            return View(database.Categories.Where(s => s.IDCate == id).FirstOrDefault());
        }
        [HttpPost]
        public ActionResult Delete(int id, Category cate)
        {
            try
            {
                cate=database.Categories.Where(s => s.IDCate == id).FirstOrDefault();
                database.Categories.Remove(cate);
                database.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return Content("Lỗi");
            }
        }
       public PartialViewResult CategoryParial()
        {
            var cateList = database.Categories.ToList();
            return PartialView(cateList);
        }
    }
}