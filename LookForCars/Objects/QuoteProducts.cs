using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Look4Cars.Objects
{
    public class QuoteProducts
    {
        public int ProductId { get; set; }

        public QuoteProducts(int productId)
        {
            ProductId = productId;
        }
    }
}