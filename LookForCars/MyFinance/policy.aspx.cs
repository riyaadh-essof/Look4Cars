using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LookForCars.MyFinance
{
    public partial class policy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            L4C.LookForCarsServiceClient l = new L4C.LookForCarsServiceClient();
            seriti.PolicyServicesV300SoapClient s = new seriti.PolicyServicesV300SoapClient();
            seriti.Credentials cred = new seriti.Credentials
            {
                CompanyCode = "FTSC",
                CompanyPassword = "FTSC@76$1"
            };
            string id = Request.QueryString["id"].ToString();
            DataTable dt = l.GetVehicleDetails(id);
            foreach(DataRow dr in dt.Rows)
            {
                vehicleImage.Src = dr["Image"].ToString();
                txtDateCreated.InnerHtml = dr["Created"].ToString();
                txtID.InnerHtml = "L4C786"+dr["ID"].ToString();
            }
            seriti.GetPolicyDetailsResult response = s.GetPolicyDetails(cred, id, "", "", true);
            txtMake.InnerHtml = response.Policy.Manufacturer;
            txtModel.InnerHtml = response.Policy.Model;
            string financeStatus = response.Policy.FinanceStatus;
            if (financeStatus == "PENDING")
            {
                txtFinance.InnerHtml += "<div class='progress-container progress-warning'><span class='progress-badge'>Finance Status</span><div class='progress'><div class='progress-bar progress-bar-warning' role='progressbar' aria-valuenow='20' aria-valuemin='0' aria-valuemax='100' style='width: 20%;'><span class='progress-value'>Pending</span></div></div></div>";
            }
            else if (financeStatus == "APPROVED")
            {
                txtFinance.InnerHtml += "<div class='progress-container progress-success'><span class='progress-badge'>Finance Status</span><div class='progress'><div class='progress-bar progress-bar-success' role='progressbar' aria-valuenow='90' aria-valuemin='0' aria-valuemax='100' style='width: 90%;'><span class='progress-value'>Approved</span></div></div></div>";
                btnDeliver.Visible = true;
            } else if (financeStatus == "PENDING NO SUPPORTING DOCS")
            {
                txtFinance.InnerHtml += "<div class='progress-container progress-warning'><span class='progress-badge'>Finance Status</span><div class='progress'><div class='progress-bar progress-bar-success' role='progressbar' aria-valuenow='70' aria-valuemin='0' aria-valuemax='100' style='width: 70%;'><span class='progress-value'>Pending Docs</span></div></div></div>";
            }
            else if (financeStatus == "DECLINED")
            {
                txtFinance.InnerHtml += "<div class='progress-container progress-danger'><span class='progress-badge'>Finance Status</span><div class='progress'><div class='progress-bar progress-bar-danger' role='progressbar' aria-valuenow='80' aria-valuemin='0' aria-valuemax='100' style='width: 80%;'><span class='progress-value'>Declined</span></div></div></div>>";
            }
            else if (financeStatus == "ITC DECLINED")
            {
                txtFinance.InnerHtml += "<div class='progress-container progress-danger'><span class='progress-badge'>Finance Status</span><div class='progress'><div class='progress-bar progress-bar-danger' role='progressbar' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100' style='width: 100%;'><span class='progress-value'>ITC Declined</span></div></div></div>";
            }

            string transStatus = response.Policy.TransactionStatus;
            if (transStatus == "AWAITING CLIENT DOCS")
            {
                txtFinance.InnerHtml += "<div class='progress-container progress-warning'><span class='progress-badge'>Transaction Status</span><div class='progress'><div class='progress-bar progress-bar-warning' role='progressbar' aria-valuenow='30' aria-valuemin='0' aria-valuemax='100' style='width: 30%;'><span class='progress-value'>Awaiting Docs</span></div></div></div>";
            }
            else if (transStatus == "AWAITING FINANCE APP INFORMATION")
            {
                txtFinance.InnerHtml += "<div class='progress-container progress-warrning'><span class='progress-badge'>Transaction Status</span><div class='progress'><div class='progress-bar progress-bar-warrning' role='progressbar' aria-valuenow='50' aria-valuemin='0' aria-valuemax='100' style='width: 50%;'><span class='progress-value'>Awaiting Finance</span></div></div></div>";
            }
            else if (transStatus == "DELIVERED")
            {
                txtFinance.InnerHtml += "<div class='progress-container progress-success'><span class='progress-badge'>Transaction Status</span><div class='progress'><div class='progress-bar progress-bar-success' role='progressbar' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100' style='width: 100%;'><span class='progress-value'>Delivered</span></div></div></div>";
            }
            else if (financeStatus == "DEAL CANCELLED")
            {
                txtFinance.InnerHtml += "<div class='progress-container progress-danger'><span class='progress-badge'>Transaction Status</span><div class='progress'><div class='progress-bar progress-bar-danger' role='progressbar' aria-valuenow='0' aria-valuemin='0' aria-valuemax='100' style='width: 0%;'><span class='progress-value'>Approved</span></div></div></div>";
            }

            txtMake2.InnerHtml = response.Policy.Manufacturer;
            txtModel2.InnerHtml = response.Policy.Model;
            
            txtVehicleUse.InnerHtml = response.Policy.VehicleUse;
            txtPolicyNumber.InnerHtml = response.Policy.PolicyNumber;
            txtVehicleUse.InnerHtml = response.Policy.VehicleUse;
            string DeclineQuote = response.Policy.InsuranceDeclineMotorComprehensiveQuoteInd.ToString();
            if (DeclineQuote == "0") { DeclineQuote = "NO"; } else
            {
                DeclineQuote = "YES";
            }
            txtDeclineIns.InnerHtml = DeclineQuote;
            txtPurchAmount.InnerHtml = "R"+response.Policy.RetailPrice.ToString();
            txtDeposit.InnerHtml = "R" + response.Policy.DepositValue.ToString();
            txtInterestRate.InnerHtml = response.Policy.FinanceRate.ToString();
            txtBalloon.InnerHtml = response.Policy.ResidualPercentage.ToString();
            txtTerms.InnerHtml = response.Policy.FinanceTerm.ToString();
            txtRegNum.InnerHtml = response.Policy.RegistrationNumber;
            txtVIN.InnerHtml = response.Policy.VINNumber;
            txtEngine.InnerHtml = response.Policy.EngineNumber;
            string takeabreak = response.Policy.TakeABreakMonth;
            if (takeabreak == "")
            {
                takeabreak = "Not selected";
            }
            txtTakeABreakMonth.InnerHtml = takeabreak;

            string FirstPaymentExtended = response.Policy.FirstPaymentExtendedInd.ToString();
            System.Diagnostics.Debug.WriteLine("First Payment Ext: "+response.Policy.FirstPaymentExtendedInd.ToString());
            if (FirstPaymentExtended == "0" || FirstPaymentExtended == "") { FirstPaymentExtended = "NO"; }
            else
            {
                FirstPaymentExtended = "YES";
            }
            txtFirstPaymentExtended.InnerHtml = FirstPaymentExtended;

            string ManWarranty = response.Policy.WarrantyInd.ToString();
            if (ManWarranty == "0"||ManWarranty == "") { ManWarranty = "YES"; }
            else
            {
                ManWarranty = "YES";
            }
            txtManufacturerWarranty.InnerHtml = ManWarranty;

            string AfterWarranty = response.Policy.ExistingWarrantyInd.ToString();
            if (AfterWarranty == "0" || AfterWarranty == "") { AfterWarranty = "NO"; }
            else
            {
                AfterWarranty = "YES";
            }
            txtAfterWarranty.InnerHtml = AfterWarranty;

            txtPlanType.InnerHtml = response.Policy.PlanType.ToString();
            txtAftermarketType.InnerHtml = response.Policy.ExistingPlanType.ToString();
            txtMileage.InnerHtml = response.Policy.OdometerReading.ToString();

            string serviceHistory = response.Policy.FullServiceHistoryInd.ToString();
            if (serviceHistory == "0" || serviceHistory == "") { serviceHistory = "NO"; }
            else
            {
                serviceHistory = "YES";
            }
            txtFullServiceHistory.InnerHtml = serviceHistory;






        }
    }
}