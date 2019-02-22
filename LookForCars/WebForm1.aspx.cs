using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LookForCars
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            seriti.PolicyServicesV300SoapClient s = new seriti.PolicyServicesV300SoapClient();

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
                AdminOrderInd = "0",
                SequestrianOrderInd = "0",
                DebtReviewInd = "0",
                GuarantorInd = "0",
                SuretyInd = "0",
                CoDebtorInd = "0",
                LastName = "Chopdat",
                IDNumber = "9507165121083",
                IDType = "RSA ID",
                PhysicalAddress = Address
            };

            seriti.BankAccount BankAccount = new seriti.BankAccount
            {
                AccountHolderName = "Zayd",
                AccountType = "CHEQUE",
                AccountNumber = "62491165984",
                PrimaryAccountInd = "1",
                
            };



            seriti.Policy Policy = new seriti.Policy
            {
                SalesReferenceNumber = "175-544-5",
                BranchCode = "FTTG001",
                VehicleCode = "64020101",
                Manufacturer = "VOLKSWAGEN",
                Model = "POLO VIVO GP",
                Client = Person,
                FIUserName = "ZaydC",
               
                SalesFirstName = "Zayd",
                SalesLastName="Chopdat",
                SalesRSAIDNumber = "8809105008086",
                
                
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


            seriti.CreatePolicyResult response = s.CreatePolicy(cred, Policy, accessArr, prodArr, QuoteprodArr);
            
            System.Diagnostics.Debug.WriteLine(response.response.Message.ToString());
            System.Diagnostics.Debug.WriteLine(response.response.StatusCode.ToString());


            //System.Diagnostics.Debug.WriteLine(response.PolicyStatusCode.ToString());

            //System.Diagnostics.Debug.WriteLine(response.PolicyNumber.ToString());

            //System.Diagnostics.Debug.WriteLine(response.QuoteProductStatusCode.ToString());



        }
    }
}