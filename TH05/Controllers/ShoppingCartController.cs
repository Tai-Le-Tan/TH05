using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TH05.Models;

namespace TH05.Controllers
{
    public class ShoppingCartController : Controller
    {
        DBSportStoreEntities1 database = new DBSportStoreEntities1();
        // GET: ShoppingCart
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ShowCart()
        {
            if (Session["Cart"] == null)
                return RedirectToAction("ShowCart", "ShoppingCart");
            Cart _cart = Session["Cart"] as Cart;
            return View(_cart);
        }
        public Cart GetCart()
        {
            Cart cart = Session["Cart"] as Cart;
            if(cart==null||Session["Cart"]==null)
            {
                cart = new Cart();
                Session["Cart"] = cart;
            }    
            return cart;

        }
        public ActionResult AddToCart(int id)
        {
            var _pro = database.Products.SingleOrDefault(s => s.ProductID == id);
                if(_pro!=null)
            {
                GetCart().Add_Product_Cart(_pro);
            }
            return RedirectToAction("ShowCart", "ShoppingCart");
        }
        public ActionResult Update_Cart_Quantity(FormCollection form)
        {
            Cart cart = Session["Cart"] as Cart;
            int id_pro = int.Parse(form["idpro"]);
            int _quatity = int.Parse(form["cartQuantity"]);
            cart.update_quantity(id_pro, _quatity);
            return RedirectToAction("ShowCart", "ShoppingCart");
        }
        public ActionResult Removecart(int id)
        {
            Cart cart = Session["Cart"] as Cart;
            cart.Remove_CartItem(id);
            return RedirectToAction("ShowCart", "ShoppingCart");
        }
        public PartialViewResult BagCarts()
        {
            int total_qua_item = 0;
            Cart cart = Session["Cart"] as Cart;
            if (cart != null)
                total_qua_item = cart.Total_quantity();
            ViewBag.QuatityCart = total_qua_item;
            return PartialView("BagCarts");
        }
        public ActionResult CheckOut(FormCollection form)
        {
            try
            {
                Cart cart = Session["Cart"] as Cart;
                OrderPro _order = new OrderPro();
                _order.DateOrder = DateTime.Now;
                _order.AddressDeliverry = form["AddressDeliverry"];
                _order.IDCus = int.Parse(form["CodeCustomer"]);
                database.OrderProes.Add(_order);
                foreach(var item in cart.Items)
                {
                    OrderDetail _order_detail = new OrderDetail();
                    _order_detail.IDOrder = _order.ID;
                    _order_detail.IDProduct = item._product.ProductID;
                    _order_detail.UnitPrice = (double)item._product.Price;
                    _order_detail.Quantity = item._quantity;
                    database.OrderDetails.Add(_order_detail);

                }
                database.SaveChanges();
                cart.ClearCart();
                return RedirectToAction("CheckOut_Success", "ShoppingCart");

            }
            catch
            {
                return Content("Erorr");
            }
           
        }
        public ActionResult CheckOut_Success()
        {
            return View();
        }

    }
}