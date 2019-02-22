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
                CompanyCode = "FTSC",
                CompanyPassword = "FTSC@76$1"
            };
            L4C.LookForCarsServiceClient l = new L4C.LookForCarsServiceClient();
            id = int.Parse(Session["ID"].ToString());
            DataTable dt = l.GetUserPolicies(id);
            foreach (DataRow dr in dt.Rows)
            {
                seriti.GetPolicyDetailsResult response = s.GetPolicyDetails(cred, dr["PolicyNumber"].ToString(), "L4C786" + dr["ID"].ToString(), "FTTG001", false);
                for (int i = 0; i < response.Response.Errors.Length; i++)
                {
                    System.Diagnostics.Debug.WriteLine("Field Cat: " + response.Response.Errors[i].FieldCategory);
                    System.Diagnostics.Debug.WriteLine("Field Name: " + response.Response.Errors[i].FieldName);
                    System.Diagnostics.Debug.WriteLine("Description: " + response.Response.Errors[i].Description);
                }
                System.Diagnostics.Debug.WriteLine(response.Response.StatusCode.ToString());
                DataTable Vehicle = l.GetVehicleDetails(dr["PolicyNumber"].ToString());
                foreach (DataRow car in Vehicle.Rows)
                {
                    string status = response.Policy.TransactionStatus;
                    string statusbar = "<div class='progress'><div class='progress-bar l-info' role='progressbar' aria-valuenow='20' aria-valuemin='0' aria-valuemax='100' style='width: 20%;'></div></div>";
                    if (status == "")
                    {
                        status = "Pending Inception";
                        statusbar = "<div class='progress'><div class='progress-bar l-info' role='progressbar' aria-valuenow='20' aria-valuemin='0' aria-valuemax='100' style='width: 20%;'></div></div>";
                    }
                    else if (status == "AWAITING CLIENT DOCS")
                    {
                        statusbar = "<div class='progress'><div class='progress-bar l-amber' role='progressbar' aria-valuenow='30' aria-valuemin='0' aria-valuemax='100' style='width: 30%;'></div></div>";
                    }
                    else if (status == "INVOICED")
                    {
                        statusbar = "<div class='progress'><div class='progress-bar l-info' role='progressbar' aria-valuenow='80' aria-valuemin='0' aria-valuemax='100' style='width: 80%;'></div></div>";
                    }
                    else if (status == "DELIVERED")
                    {
                        statusbar = "<div class='progress'><div class='progress-bar l-success' role='progressbar' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100' style='width: 100%;'></div></div>";
                    }
                    string FinanceStatus = response.Policy.FinanceStatus;
                    if (FinanceStatus == "")
                    {
                        FinanceStatus = "Pending Inception";
                    }
                    divPolicies.InnerHtml += "<div class='col-lg-12 col-md-12 col-sm-12'><div class='card widget_2 big_icon mcard_4'>";
                    divPolicies.InnerHtml += "<div class='body'><h2>" + response.Policy.Manufacturer + " <small class='info'> " + response.Policy.Model + "</small></h2>";
                    divPolicies.InnerHtml += "<small>Application Date: " + response.Policy.SubmitDate + "</small><br/><small class='capitalize'>Transaction Status: " + status + "</small>";
                    divPolicies.InnerHtml += "<br/><a href='policy.aspx?id=" + dr["PolicyNumber"].ToString() + "' class='btn btn-primary mt-4 mb-4 white'>View Application</a><div class='img-2'>";
                    divPolicies.InnerHtml += "<img src='" + car["Image"] + "' class='rounded-circle' alt='Vehicle Image'></div>";
                    divPolicies.InnerHtml += statusbar;
                    divPolicies.InnerHtml += "</div></div></div>";
                }
            }

        }
    }
}