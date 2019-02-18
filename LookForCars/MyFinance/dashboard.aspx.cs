using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LookForCars.MyFinance
{
    public partial class dashboard1 : System.Web.UI.Page
    {
        int id = 0;
        seriti.PolicyServicesV300SoapClient s = new seriti.PolicyServicesV300SoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            seriti.Credentials cred = new seriti.Credentials
            {
                CompanyCode = "",
                CompanyPassword = ""

            };
            L4C.LookForCarsServiceClient l = new L4C.LookForCarsServiceClient();
            id = int.Parse(Session["ID"].ToString());
            DataTable dt = l.GetUserPolicies(id);
            foreach(DataRow dr in dt.Rows)
            {
                seriti.GetPolicyDetailsResult policy = s.GetPolicyDetails(cred, dr["PolicyNumber"].ToString(),"","",false); 
                
                divPolicies.InnerHtml += "<div class='col-lg-12 col-md-12 col-sm-12'><div class='card widget_2 big_icon mcard_4'>";
                divPolicies.InnerHtml += "<div class='body'><h6>Pending Application</h6><h2>VOLKSWAGEN <small class='info'>POLO VIVO GP 1.4 CONCEPTLINE 5DR</small></h2>";
                divPolicies.InnerHtml += "<small>Application Date: 16/02/2019</small><br/><small>Status: Pending</small>";
                divPolicies.InnerHtml += "<br/><button class='btn btn-primary mt-4 mb-4'>View Application</button><div class='img-2'>";
                divPolicies.InnerHtml += "<img src='assets/images/lg/testcar.jpg' class='rounded-circle' alt='profile-image'></div>";
                divPolicies.InnerHtml += "<div class='progress-bar l-amber' role='progressbar' aria-valuenow='45' aria-valuemin='0' aria-valuemax='100' style='width: 45%;'></div>";
                divPolicies.InnerHtml += "</div></div></div></div>";
            }
        }
    }
}