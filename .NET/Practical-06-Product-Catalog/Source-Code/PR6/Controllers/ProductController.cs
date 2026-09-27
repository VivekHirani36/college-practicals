using PR6.Models;
using System.Collections.Generic;
using System.Web.Mvc;

namespace PR6.Controllers
{
    public class ProductController : Controller
    {
        public ActionResult Index()
        {
            List<Products> productList = new List<Products>();

            productList.Add(new Products
            {
                Product_ID = 1,
                Product_Name = "Laptop",
                Product_Desc = "HP Laptop with Intel Core i5 processor",
                Price = 55000,
                Category = "Electronics"
            });

            productList.Add(new Products
            {
                Product_ID = 2,
                Product_Name = "Smartphone",
                Product_Desc = "Android smartphone with 128GB storage",
                Price = 25000,
                Category = "Electronics"
            });

            productList.Add(new Products
            {
                Product_ID = 3,
                Product_Name = "Headphones",
                Product_Desc = "Wireless Bluetooth headphones",
                Price = 2000,
                Category = "Accessories"
            });

            productList.Add(new Products
            {
                Product_ID = 4,
                Product_Name = "Keyboard",
                Product_Desc = "Mechanical gaming keyboard",
                Price = 1500,
                Category = "Accessories"
            });

            return View(productList);
        }
    }
}