using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TH05.Models;
using PagedList;
using PagedList.Mvc;
namespace TH05.Controllers
{
    public class ProductController : Controller
    {
        DBSportStoreEntities1 db = new DBSportStoreEntities1();

        // GET: Product
        public ActionResult Index(string category, int? page)

        {
            int pageSize = 4;
            int pageNum = (page ?? 1);
            if (category == null)
            {
                var productList = db.Products.OrderByDescending(x => x.NamePro).ToList();
                return View(productList.ToPagedList(pageNum,pageSize));
            }
            else
            {
                var productList = db.Products.OrderByDescending(x => x.NamePro)
                    .Where(x => x.Category.ToString()== category).ToList();
                return View(productList.ToPagedList(pageNum, pageSize));
            }
            /* var data = db.Products.ToList();
             return View(data);*/
            /*if (category == null)
            {

                return View(db.Categories.ToList());
            }
            return View(db.Categories.Where(s => s.NameCate.Contains(category)).ToList());
        }*/
        }
        public ActionResult SearchOption(double min=double.MinValue,double max=double.MaxValue)
        {
            var list = db.Products.Where(p => (double)p.Price >= min && (double)p.Price <= max).ToList();
            return View(list);
        }
    }
}