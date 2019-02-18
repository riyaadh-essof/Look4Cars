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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitForm_ServerClick(object sender, EventArgs e)
        {
            seriti.PolicyServicesV300SoapClient s = new seriti.PolicyServicesV300SoapClient();
            //Credentials........................
            seriti.Credentials CompanyCred = new seriti.Credentials
            {
                CompanyCode = "",
                CompanyPassword = ""
            };
            //Address........................

            seriti.PhysicalAddress physicalAdd = new seriti.PhysicalAddress
            {
                Address1 = AddsLine1.Value.ToString(),
                Address2 = AddLine2.Value.ToString(),
                City = CitySub.Value.ToString(),
                PostCode = postalCode.Value.ToString(),
                Province = provinceSelect.Value.ToString(),

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
                LastName= txtSpouseLastName.Value.ToString(),
                IDType = selIdType.Value.ToString(),
                IDNumber = txtSpouseIdNumber.Value.ToString(),

            };

            seriti.Person Relatives = new seriti.Person
            {
                FirstName= txtNextFirstName.Value.ToString(),
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
                    Model = VehMod.Value.ToString(),
                    VehicleCost = PurchPrice.Value.ToString(),
                    DepositValue = depositField.Value.ToString(),
                    PaymentDay = paymentDay.ToString(),
                    Client = person,
                    Spouse = spouse,
                   Relative = Relatives,
                   RelativeRelation = relationRela.Value.ToString()

                };


            }
        }
    }