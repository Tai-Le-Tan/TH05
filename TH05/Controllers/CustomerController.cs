using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TH05.Models;

namespace TH05.Controllers
{
    public class CustomerController : Controller
    {
        DBSportStoreEntities1 database = new DBSportStoreEntities1();
        // GET: Customer
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Customer _user)
        {
            if (ModelState.IsValid)
            {
                var check_id = database.Customers.Where(s => s.NameCus == _user.NameCus).FirstOrDefault();
                if (check_id == null)
                {
                    database.Configuration.ValidateOnSaveEnabled = false;
                    database.Customers.Add(_user);
                    database.SaveChanges();
                    return RedirectToAction("ShowCart","ShoppingCart");
                }
                else
                {
                    ViewBag.ErrorRegister = "This ID is exit";
                    return View();

                }
            }
            return View();
        }
    }
}