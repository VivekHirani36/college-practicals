using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PR6.Models
{
    public class Products
    {
        public int Product_ID { get; set; }
        public string Product_Name { get; set; }
        public string Product_Desc { get; set; }
        public int Price { get; set; }
        public string Category { get; set; }

    }
}