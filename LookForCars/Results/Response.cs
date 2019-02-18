using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Look4Cars.Results
{
    public class Response
    {
        public Error Error { get; set; }
        public string Message { get; set; }
        public string StatusCode { get; set; }
    }
}