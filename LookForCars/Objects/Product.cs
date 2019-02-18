using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Look4Cars.Objects
{
    public class Products
    {
        public string SalesReferenceNumber { get; set; }
        public int ProductOptionId { get; set; }
        public decimal Price { get; set; }

        public Products(string salesReferenceNumber, int productOptionId, decimal price)
        {
            SalesReferenceNumber = salesReferenceNumber;
            ProductOptionId = productOptionId;
            Price = price;
        }
    }
}