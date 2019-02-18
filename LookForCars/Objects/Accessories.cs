using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Look4Cars.Objects
{
    public class Accessories
    {
        public string AccessoryCode { get; set; }
        public string SalesReferenceNumber { get; set; }
        public string Category { get; set; }
        public bool CashInd { get; set; }
        public decimal Price { get; set; }
        public bool VATInd { get; set; }
        public string Description { get; set; }

        public Accessories(string accessoryCode, string salesReferenceNumber, string category, bool cashInd, decimal price, bool vATInd, string description)
        {
            AccessoryCode = accessoryCode;
            SalesReferenceNumber = salesReferenceNumber;
            Category = category;
            CashInd = cashInd;
            Price = price;
            VATInd = vATInd;
            Description = description;
        }
    }
}