using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Look4Cars.Objects
{
    public class FinanceApplication
    {
        public string CompanyCode { get; set; }

        public FinanceApplication(string companyCode)
        {
            CompanyCode = companyCode;
        }
    }
}