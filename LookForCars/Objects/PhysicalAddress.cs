using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Look4Cars.Objects
{
    public class PhysicalAddress
    {
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string Suburb { get; set; }
        public string City { get; set; }
        public string PostCode { get; set; }
        public string Province { get; set; }
        public string Country { get; set; }

        public PhysicalAddress(string address1, string address2, string suburb, string city, string postCode, string province, string country)
        {
            Address1 = address1;
            Address2 = address2;
            Suburb = suburb;
            City = city;
            PostCode = postCode;
            Province = province;
            Country = country;
        }
    }
}