using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LookForCars
{
    public partial class register : System.Web.UI.Page
    {
        string Deriv = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            VehMake.Value = Session["Make"].ToString();
            VehMod.Value = Session["Model"].ToString();
            Deriv = Session["Derivative"].ToString();
            VehMake.Value = Session["Make"].ToString();
            PurchPrice.Value = Session["Price"].ToString();
        }

        protected void SubmitForm_ServerClick(object sender, EventArgs e)
        {
            seriti.PolicyServicesV300SoapClient s = new seriti.PolicyServicesV300SoapClient();
           
            L4C.LookForCarsServiceClient l = new L4C.LookForCarsServiceClient();
            if (!l.checkUser(EmailAddresss.Value))
            {
                int id = l.CreateUser(FirstNames.Value, LastNames.Value, IdTypes.Value, PassIDNum.Value, EmailAddresss.Value, MobNum.Value, homeTelNum.Value, password1.Value);
                int PolicyReference = l.CreatePolicy(id, "Not Created", "Pending Policy Creation");
                //Credentials........................
                seriti.Credentials CompanyCred = new seriti.Credentials
                {
                    CompanyCode = "FTSC",
                    CompanyPassword = "FTSC@76$1"
                };
                //Address........................

                seriti.PhysicalAddress physicalAdd = new seriti.PhysicalAddress
                {
                    Address1 = AddsLine1.Value.ToString(),
                    Address2 = AddLine2.Value.ToString(),
                    Suburb = Suburb.Value.ToString(),
                    City = City.Value.ToString(),
                    PostCode = postalCode.Value.ToString(),
                    Province = provinceSelect.Value.ToString(),
                    Country ="South Africa"

                };
                //Person........................
                string insolvBox = "0";
                string adBox = "0";
                string seBox = "0";
                string debttBox = "0";
                string codebBox = "0";
                string guaBox = "0";
                string surBox = "0";
                string TCBox = "0";

                if (Insolv.Checked)
                {
                    insolvBox = "-1";
                }
                else
                    insolvBox = "0";


                if (Adminbox.Checked)
                {
                    adBox = "-1";
                }
                else
                    adBox = "0";

                if (seqBox.Checked)
                {
                    seBox = "-1";
                }
                else
                    seBox = "0";

                if (DebtBox.Checked)
                {
                    debttBox = "-1";
                }
                else
                    debttBox = "0";

                if (DebtBox.Checked)
                {
                    debttBox = "-1";
                }
                else
                    debttBox = "0";

                if (CoDebtBox.Checked)
                {
                    codebBox = "-1";
                }
                else
                    codebBox = "0";


                if (guarBox.Checked)
                {
                    guaBox = "-1";
                }
                else
                    guaBox = "0";

                if (suretyBox.Checked)
                {
                    surBox = "-1";
                }
                else
                    surBox = "0";

                if (termsBox.Checked)
                {
                    TCBox = "-1";
                }
                else
                    TCBox = "0";

                string contractTypes = ContractTypeSelect.Value.ToString();
                string PreferedcontactTypes = PreferedMethodSelect.Value.ToString();
                string resStatSelect = ResStatus.Value.ToString();

                seriti.Person person = new seriti.Person
                {
                    FirstName = FirstNames.Value.ToString(),
                    Initials = "",
                    LastName = LastNames.Value.ToString(),
                    EmailAddress = EmailAddresss.Value.ToString(),
                    IDNumber = PassIDNum.Value.ToString(),
                    IDType = IdTypes.Value.ToString(),
                    InsolventInd = insolvBox.ToString(),
                    AdminOrderInd = adBox.ToString(),
                    SequestrianOrderInd = seBox.ToString(),
                    DebtReviewInd = debttBox.ToString(),
                    CoDebtorInd = codebBox.ToString(),
                    GuarantorInd = guaBox.ToString(),
                    SuretyInd = surBox.ToString(),
                    MobileNumber = MobNum.Value.ToString(),
                    AlternativeMobileNumber = AltNum1.Value.ToString(),
                    MobileContractType = contractTypes.ToString(),
                    HomeTelephoneNumber = homeTelNum.Value.ToString(),
                    FaxNumber = faxNum.Value.ToString(),
                    ContactMethod = PreferedcontactTypes.ToString(),
                    PhysicalAddress = physicalAdd,
                    PhysicalAddressDate = DateOcc.Value.ToString(),
                    ResidentialStatus = resStatSelect.ToString(),
                    MaritalStatus = selMaritalStatus.Value.ToString(),
                    MarriageType = selMaritalType.Value.ToString(),
                    MarriageDate = txtMaritalDate.Value.ToString(),

                };


                seriti.Person spouse = new seriti.Person
                {
                    FirstName = txtSpouseFirstName.Value.ToString(),
                    LastName = txtSpouseLastName.Value.ToString(),
                    IDType = selIdType.Value.ToString(),
                    IDNumber = txtSpouseIdNumber.Value.ToString(),

                };

                seriti.Person Relatives = new seriti.Person
                {
                    FirstName = txtNextFirstName.Value.ToString(),
                    LastName = txtNextLastName.Value.ToString(),
                    MobileNumber = txtNextMobile.Value.ToString(),

                };



                //Policy........................          

                string usedNew = newUsedselection.Value.ToString();
                string paymentDay = paymentDaySelect.Value.ToString();


                seriti.Policy Policy = new seriti.Policy
                {
                    NewUsed = usedNew.ToString(),
                    Manufacturer = VehMake.Value.ToString(),
                    Model = VehMod.Value.ToString() + " " + Deriv,
                    VehicleCode = Session["MMCode"].ToString(),
                    VehicleCost = PurchPrice.Value.ToString(),
                    DepositValue = depositField.Value.ToString(),
                    PaymentDay = paymentDay.ToString(),
                    Client = person,
                    Spouse = spouse,
                    Relative = Relatives,
                    RelativeRelation = txtKinRelation.Value.ToString(),
                    SalesReferenceNumber = "L4C786" + PolicyReference,
                    BranchCode = "FTTG001",
                    TransactionType = "VEHICLE SALE",
                    FinanceCompanyCode = "TFS",
                    FinanceRate = "0.16",
                    FinanceTerm = "72",
                    VehicleUse = "PRIVATE",
                    InsuranceDeclineMotorComprehensiveQuoteInd = "0",
                    PopiConcentInd = "-1",
                    IDXConsentInd = "-1",
                    CompanyConsentInd ="-1",
                    CreditCheckConsentInd ="-1",
                    IVXConsentInd ="-1",
                    MarketingConsentInd ="-1",
                    OtherCompanyConsentInd ="-1",
                            

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
                seriti.Product[] prodArr = (seriti.Product[])Session["Products"];


                QuoteprodArr[0] = QuoteProduct;
                accessArr[0] = Accessory;
                prodArr[0] = Product;


                seriti.CreatePolicyResult response = s.CreatePolicy(CompanyCred, Policy, null, prodArr, null);

                for (int i = 0; i < response.response.Errors.Length; i++)
                {
                    System.Diagnostics.Debug.WriteLine("Field Cat: " + response.response.Errors[i].FieldCategory);
                    System.Diagnostics.Debug.WriteLine("Field Name: " + response.response.Errors[i].FieldName);
                    System.Diagnostics.Debug.WriteLine("Description: " + response.response.Errors[i].Description);
                }
                System.Diagnostics.Debug.WriteLine(response.response.StatusCode.ToString());
                System.Diagnostics.Debug.WriteLine(response.response.ToString());
                System.Diagnostics.Debug.WriteLine(response.PolicyStatusCode.ToString());

                if (response.PolicyStatusCode.ToString() == "200" || response.PolicyStatusCode.ToString() == "100")
                {
                    string vehicleID = Session["VehicleID"].ToString();
                    string Make = Session["Make"].ToString();
                    string Model = Session["Model"].ToString();
                    string Derivative = Session["Derivative"].ToString();
                    string year = Session["Year"].ToString();
                    string image = Session["Image"].ToString();
                    string status = "Policy Created";

                    string PolicyNumber = response.PolicyNumber.ToString();
                    l.UpdatePolicy(PolicyReference, PolicyNumber, "Pending");
                    System.Diagnostics.Debug.WriteLine(vehicleID);
                    System.Diagnostics.Debug.WriteLine(Make);
                    System.Diagnostics.Debug.WriteLine(Model);
                    System.Diagnostics.Debug.WriteLine(Derivative);
                    System.Diagnostics.Debug.WriteLine(year);
                    System.Diagnostics.Debug.WriteLine(image);
                    l.CreateVehicle(id, PolicyNumber, vehicleID, Make, Model, Derivative, int.Parse(year), image, status);
                    System.Diagnostics.Debug.WriteLine(PolicyNumber);
                    Response.Redirect("MyFinance/login.aspx");
                }

            }
            else
            {
                Response.Redirect("MyFinance/login.aspx");
            }


        }
    }
}