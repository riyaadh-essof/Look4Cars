using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LookForCars.MyFinance
{
    public partial class createpolicy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            seriti.PolicyServicesV300SoapClient s = new seriti.PolicyServicesV300SoapClient();
            //string vehicleID = Request.QueryString["req"].ToString();
            seriti.Credentials cred = new seriti.Credentials
            {
                CompanyCode = "FTSC",
                CompanyPassword = "FTSC@76$1"
            };
            seriti.PhysicalAddress Address = new seriti.PhysicalAddress
            {
                Address1 = "44 Garrick Avenue",
                Address2 = "Extension 8",
                Suburb = "Lenasia",
                City = "Johannesburg",
                Country = "South Africa",
                PostCode = "1827",
                Province = "Gauteng"
            };
            seriti.Person Person = new seriti.Person
            {
                //AdminOrderInd = "0",
                //SequestrianOrderInd = "0",
                //DebtReviewInd = "0",
                //GuarantorInd = "0",
                //SuretyInd = "0",
                //CoDebtorInd = "0",
                LastName = "Bracke",
                //IDNumber = "9507165121083",
                //IDType = "RSA ID",
                //PhysicalAddress = Address

            };

            seriti.BankAccount BankAccount = new seriti.BankAccount
            {


            };



            seriti.Policy Policy = new seriti.Policy
            {
                SalesReferenceNumber = "FinalTest",
                BranchCode = "FTTG001",

                Client = Person



            };

            seriti.Accessory Accessory = new seriti.Accessory
            {

            };


            seriti.Product Product = new seriti.Product
            {

            };



            seriti.QuoteProduct QuoteProduct = new seriti.QuoteProduct
            {

            };

            seriti.QuoteProduct[] QuoteprodArr = new seriti.QuoteProduct[1];
            seriti.Accessory[] accessArr = new seriti.Accessory[1];
            seriti.Product[] prodArr = new seriti.Product[1];


            QuoteprodArr[0] = QuoteProduct;
            accessArr[0] = Accessory;
            prodArr[0] = Product;


            seriti.CreatePolicyResult response = s.CreatePolicy(cred, Policy, null, null, null);

            for (int i = 0; i < response.response.Errors.Length; i++)
            {
                System.Diagnostics.Debug.WriteLine("Field Cat: " + response.response.Errors[i].FieldCategory);
                System.Diagnostics.Debug.WriteLine("Field Name: " + response.response.Errors[i].FieldName);
                System.Diagnostics.Debug.WriteLine("Description: " + response.response.Errors[i].Description);
            }

            System.Diagnostics.Debug.WriteLine(response.response.StatusCode.ToString());
            //System.Diagnostics.Debug.WriteLine(response.PolicyStatusCode.ToString());
            if(response.PolicyStatusCode.ToString()=="200" || response.PolicyStatusCode.ToString() == "100"){
                System.Diagnostics.Debug.WriteLine(response.PolicyNumber.ToString());
            }
            
        }
    }
}