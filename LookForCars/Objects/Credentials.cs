using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Look4Cars.Objects
{
    public class Credentials
    {
        public int CompanyCode { get; set; }
        public string CompanyPassword { get; set; }

        public Credentials(int companyCode, string companyPassword)
        {
            CompanyCode = companyCode;
            CompanyPassword = companyPassword;
        }
    }
}