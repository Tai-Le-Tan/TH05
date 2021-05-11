using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TH05.Models;
namespace TH05.Controllers
{
    public class ProductController : Controller
    {
        DBSportStoreEntities1 db = new DBSportStoreEntities1();
        
        // GET: Product
        public ActionResult Index()
        {
                var data = db.Products.ToList();
                return View(data);
        }
    }
}