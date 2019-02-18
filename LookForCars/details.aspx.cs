using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;
using System.Xml.XPath;

namespace LookForCars
{
    public partial class details : System.Web.UI.Page
    {
        string id = "";
        string title = "Greetings";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["id"].ToString();
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc = GetRootLevelServiceDocument("http://live.autotrader.co.za/merlin-service-search/rest/StockFeedService/Download?dealers=*",
                "683591254B2B133-32EA-4630-9727-80A7E0451329", id);
        }

        private HttpWebRequest CreateHttpRequest(string serviceEndPoint, string oAuthToken)
        {
            HttpWebRequest request =
            (HttpWebRequest)WebRequest.Create(serviceEndPoint);
            request.Method = "GET";
            request.Headers.Add("AccessToken", oAuthToken);
            request.ContentType = "application/xml";
            return request;
        }
        private XmlDocument GetRootLevelServiceDocument(string serviceEndPoint, string oAuthToken, string vehicleID)
        {
            HttpWebRequest request = CreateHttpRequest(serviceEndPoint,
                oAuthToken);
            XmlDocument xmlDoc = new XmlDocument();
            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            {

                using (Stream responseStream = response.GetResponseStream())
                {
                    if (responseStream != null)
                    {

                        using (StreamReader reader = new StreamReader(responseStream))
                        {
                            string r = reader.ReadToEnd();

                            XDocument X = XDocument.Parse(r);
                            var BMW = X.Element("root").Elements("row").Where(E => E.Element("AdvertId").Value == vehicleID);

                            foreach (var item in BMW)
                            {
                                String str = item.Element("Price").Value;
                                int index = str.IndexOf('.');
                                if (index > 0)
                                {
                                    str = str.Substring(0, index);
                                }

                                String mileage = item.Element("Mileage").Value;
                                int index2 = mileage.IndexOf('.');
                                if (index2 > 0)
                                {
                                    mileage = mileage.Substring(0, index2);
                                }

                                double init = 1207.5;
                                var period = 72;
                                var deposit = 0;
                                double balloon = (25 / 100) * double.Parse(str);
                                var interestRate = 13.5 / 100;
                                var financed = (double.Parse(str) + init - deposit - balloon) * 1;
                                var a = financed * (interestRate / 12);
                                var b = 1 + (interestRate / 12);
                                var premium = a / (1 - (Math.Pow(b, (-1 * period))));
                                var balloonInterest = balloon * (1.125 / 100);
                                var monthlyCharges = 69;
                                var dep = (80 / 100) * double.Parse(str);
                                
                                var total = premium + balloonInterest + monthlyCharges;

                                double install = Math.Round(total * 100) / 100;
                                var install2 = install.ToString("N", new CultureInfo("en-US"));
                                double str2 = double.Parse(str);
                                double max = str2*0.8;
                                sliderdeposit.Attributes["data-slider-max"] = max.ToString();
                                var str3 = str2.ToString("N", new CultureInfo("en-US"));
                                txtInstallment.InnerHtml += "From R"+ install +"pm with no deposit and no balloon";
                                demo.InnerHtml = "R" + install + "pm";
                                txtBodyType.InnerHtml = item.Element("BodyType").Value;
                                txtColour.InnerHtml = item.Element("Colour").Value;
                                //txtDerivative.InnerHtml = item.Element("Derivative").Value;
                                txtDescription.InnerHtml = item.Element("AdditionalText").Value;
                                //txtDoors.InnerHtml = item.Element("Doors").Value;
                                if (item.Element("TransmissionDriveType") != null)
                                {
                                    //txtDrivetrain.InnerHtml = item.Element("TransmissionDriveType").Value;
                                }
                                else
                                {
                                    //txtDrivetrain.InnerHtml = "Unspecified";
                                }

                                txtFuelType.InnerHtml = item.Element("FuelType").Value;
                                //txtMake.InnerHtml = item.Element("Make").Value;
                                txtMileage.InnerHtml = item.Element("Mileage").Value + "km";
                               //txtModel2.InnerHtml = item.Element("Model").Value;
                                txtTitle.InnerHtml = item.Element("Year").Value + " " + item.Element("Make").Value + " "
                                    + item.Element("Model").Value + " " + item.Element("Derivative").Value + " ";
                                //txtTitle2.InnerHtml = item.Element("Year").Value + " " + item.Element("Make").Value + " "
                                  //  + item.Element("Model").Value + " " + item.Element("Derivative").Value + " ";
                                if (item.Element("TransmissionType") != null)
                                {
                                    txtTransmission.InnerHtml = item.Element("TransmissionType").Value;
                                }
                                else
                                {
                                    txtTransmission.InnerHtml = "Unspecified";
                                }

                                txtYear.InnerHtml = item.Element("Year").Value;
                                txtPrice.InnerHtml = "R" + str3;
                                string number = item.Element("Price").Value.Split('.')[0].Trim();
                                txtPrice2.Value = number;
                                txtPriceHidden.Value = number;
                                var monthly = install2;// Double.Parse(item.Element("Price").Value) / 60;
                                //monthlyPrice.InnerHtml = "<span style='font-size:16px;'> From</span> R" + monthly.ToString() + "<sup style='font-size:16px;'> Per Month</sup>";
                                var picElements = item.XPathSelectElements("Media/Pic");
                                foreach (var picElement in picElements)
                                {
                                    divImages.InnerHtml += "<li class='position-relative'  data-thumb='" + picElement.Value + "'><img src='" + picElement.Value+"' alt='Vehicle Image' width='100%' class='img-fluid' />";
                                    divImages.InnerHtml += "<div class='fullscreen position-absolute text-center'><a href='" + picElement.Value + "' class='btn-gallery c-primary'><i class='fa fa-arrows-alt'></i></a></div></li>";
                                }

                                var features = "";
                                if (item.Element("Features") != null)
                                {
                                    features = item.Element("Features").Value;
                                }
                                else
                                {
                                    features = "Unspecified";
                                }
                                txtDrivetrain.InnerHtml = item.Element("TransmissionDriveType").Value;
                                string list = features.ToString();
                                string[] feat = list.Split(',');
                                foreach (var f in feat)
                                {
                                    txtFeatures.InnerHtml += "<li><i class='fa fa-check c-primary pr-2'></i>"+f+"</li>";
                                }
                                    // financeAnchor.Attributes["Href"] = "https://torque.seritisolutions.co.za/app/financeapplication?CompanyCode=FTHFA&UniqueCode=B8479481-4EE7-4E93-B375-486228940F52&MMCode=" + item.Element("MMCode").Value;
                                //A1.Attributes["Href"] = "https://torque.seritisolutions.co.za/app/financeapplication?CompanyCode=FTHFA&UniqueCode=B8479481-4EE7-4E93-B375-486228940F52&MMCode=" + item.Element("MMCode").Value;
                                //testDriveAnchor.HRef = "booktestdrive.aspx?id=" + id + "&Make=" + item.Element("Make").Value + "&Model=" + item.Element("Model").Value + "&Year=" + item.Element("Year").Value + "";
                                title = item.Element("Year").Value + " " + item.Element("Make").Value + " "
                                    + item.Element("Model").Value + " " + item.Element("Derivative").Value + " ";
                            }
                        }
                    }
                }

                return xmlDoc;
            }

        }

        protected void A2_ServerClick(object sender, EventArgs e)
        {

            string body = "Welcome to ASPSnippets.com";
            ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + title + "', '" + body + "');", true);
        }

        protected void btnQuery_ServerClick(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient();
            SmtpServer.Host = "mail.freewaytoyota.co.za";
            SmtpServer.Port = 587;
            SmtpServer.EnableSsl = true;
            SmtpServer.Credentials = new System.Net.NetworkCredential("webresponse@freewaytoyota.co.za", "Freeway_i22");
            mail.IsBodyHtml = true;
            mail.From = new MailAddress("webresponse@freewaytoyota.co.za", "Freeway Automark Query");
            mail.To.Add("freewayform@gmail.com");
            mail.Subject = title;

            string body = "Hi, <br/>";
            body += "We have recieved a Used Car Query. Here are the details:<br/> <br/>";

            //body += "Customer Name: " + txtName.Value + "<br/>";
            //body += "Email Adderss: " + txtEmail.Value + "<br/>";
            // += "Contact Number: " + txtContact.Value + "<br/><br/>";
            body += "Vehicle Details<br/>Vehicle: " + title + "<br/>";

            body += "Thank you.";

            mail.Body = body;
            //if (txtName.Value != "" || txtEmail.Value != "" || txtContact.Value != "")
            //{
            //    SmtpServer.Send(mail);
            //    success.Visible = true;
            //    btnQuery.Visible = false;
            //}

        }

        protected void btnFinance_ServerClick(object sender, EventArgs e)
        {
            Session["VehicleID"] = Request.QueryString["id"].ToString();
            if (Session["LoggedIn"] == null)
            {
                Response.Redirect("MyFinance/login.aspx");
            }
            else
            {
                Response.Redirect("MyFinance/createpolicy.aspx");
            }
        }
    }
}