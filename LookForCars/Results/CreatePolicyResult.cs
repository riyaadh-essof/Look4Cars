using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Look4Cars.Results
{
    public class CreatePolicyResult
    {
        public Response Response { get; set; }
        public string PolicyNumber { get; set; }
        public string PolicyStatusCode { get; set; }
        public string AccessoryStatusCode { get; set; }
    }
}