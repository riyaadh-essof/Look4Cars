﻿using System;
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

            string vehicleID = Request.QueryString["req"].ToString();
            seriti.PolicyServicesV300SoapClient s = new seriti.PolicyServicesV300SoapClient();

            seriti.Credentials cred = new seriti.Credentials
            {
                CompanyCode = "FTHFA",
                CompanyPassword = "B8479481-4EE7-4E93-B375-486228940F52"
            };

            seriti.Person Person = new seriti.Person
            {
                AdminOrderInd = "0",
                SequestrianOrderInd = "0",
                DebtReviewInd = "0",
                GuarantorInd = "0",
                SuretyInd = "0",
                CoDebtorInd = "0",
                LastName = ""
            };

            seriti.BankAccount BankAccount = new seriti.BankAccount
            {
                AccountHolderName = "",
                AccountType = "",
                AccountNumber = ""
            };



            seriti.Policy Policy = new seriti.Policy
            {
                SalesReferenceNumber = "",
                BranchCode = "",
                VehicleCode = "64020101",
                Manufacturer = "VOLKSWAGEN",
                Model = "POLO VIVO GP",
                ManufacturerDerivativeCode = "",
                Client = Person,

            };

            seriti.Accessory Accessory = new seriti.Accessory
            {
                Category = "",
                CashInd = "0",
                Price = "0"
            };


            seriti.Product Product = new seriti.Product
            {
                ProductOptionId = "0",
                Price = "0"

            };



            seriti.QuoteProduct QuoteProduct = new seriti.QuoteProduct
            {
                ProductId = "0"
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