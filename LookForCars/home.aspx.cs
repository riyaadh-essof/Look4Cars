using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace LookForCars
{
    public partial class home : System.Web.UI.Page
    {
        string id = "";
        string make = "";
        string year = "";
        string trans = "";
        string price = "";
        string mil = "";
        string sort = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            make = "TOYOTA";

            if (price == "")
            {
                price = "9999999999";
            }
            if (mil == "")
            {
                mil = "9999999999";
            }
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
                            string img = "";
                            XDocument X = XDocument.Parse(r);
                            var car = X.Element("root").Elements("row").Where(E => (E.Element("Make").Value.Contains(make)));


                            foreach (var item in car)
                            {
                                var vehicleid = item.Element("AdvertId").Value;
                                var Year = item.Element("Year").Value;
                                var Make = item.Element("Make").Value;
                                var Model = item.Element("Model").Value;
                                var Derivative = "";
                                if (item.Element("Derivative") != null)
                                {
                                    Derivative = item.Element("Derivative").Value;
                                }
                                var Mileage = item.Element("Mileage").Value;
                                var Colour = "";
                                if (item.Element("Colour") != null)
                                {
                                    Colour = item.Element("Colour").Value;
                                }
                                var TransmissionType = item.Element("TransmissionType").Value;
                                var FuelType = item.Element("FuelType").Value;
                                var Price = item.Element("Price").Value;
                                var picElements = item.Element("Media").Elements("Pic");
                                var image = picElements.FirstOrDefault();
                                if (image == null)
                                {
                                    image = new XElement("Image");
                                    image.SetValue("noimage.jpg");
                                }
                                foreach (var picElement in picElements)
                                {
                                    img = picElement.Value;
                                }
                                String str = Price;
                                int index = str.IndexOf('.');
                                if (index > 0)
                                {
                                    str = str.Substring(0, index);
                                }

                                String mileage = Mileage;
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


                                var total = premium + balloonInterest + monthlyCharges;
                                double install = Math.Round(total * 100) / 100;
                                var install2 = install.ToString("N", new CultureInfo("en-US"));
                                double str2 = double.Parse(str);
                                var str3 = str2.ToString("N", new CultureInfo("en-US"));
                                if (item.Element("NewUsed").Value == "used")
                                {
                                    divVehicles.InnerHtml += "<div><a href='usedvehicledetails.aspx?usedid=" + vehicleid + "'><img src='" + image.Value + "' alt='Look4Cars Car' class='img-fluid rounded-top' /></a>";
                                    divVehicles.InnerHtml += "<div class='card c-brd-light car-box'><div class='card-body'><h6 class='mb-2 c-font-size-16'><a href='details.aspx?id=" + vehicleid + "'>" + Year + " " + Make + " " + Model + " " + Derivative + "</a></h6>";
                                    divVehicles.InnerHtml += "<ul class='list-unstyled mb-0 c-line-height-2_5'><li><h6 class='c-primary mb-0'><small class='c-light'>Price</small> R" + str3 + " </h6></li>";
                                    divVehicles.InnerHtml += "<li><i class='fa fa-credit-card pr-1'></i> From R" + install2 + " pm with no deposit</li></ul></div><ul class='list-inline mb-0 p-3 c-brd-light border border-left-0 border-bottom-0 border-right-0'>";
                                    divVehicles.InnerHtml += "<li class='list-inline-item mr-3'><a href='#' class='c-light'><i class='flaticon-calendar pr-1'></i> " + Year + " </a></li><li class='list-inline-item mr-3'><a href='#' class='c-light'><i class='flaticon-clock pr-1'></i> " + mileage + "km</a></li>";
                                    divVehicles.InnerHtml += "<li class='list-inline-item mr-3'><a href='#' class='c-light'><i class='flaticon-fuel pr-1'></i>  " + item.Element("FuelType").Value + " </a></li><li class='list-inline-item'><a href='#' class='c-light'><i class='flaticon-transport-2 pr-1'></i>  " + TransmissionType + " </a></li></ul></div></div>";
                                }
                            }
                        }
                    }
                }
                return xmlDoc;
            }

        }
    }
}