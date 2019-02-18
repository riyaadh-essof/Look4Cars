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
using System.Xml.XPath;

namespace LookForCars
{
    public partial class preowned : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc = GetRootLevelServiceDocument("http://live.autotrader.co.za/merlin-service-search/rest/StockFeedService/Download?dealers=*",
                "683591254B2B133-32EA-4630-9727-80A7E0451329");
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

        private XmlDocument GetRootLevelServiceDocument(string serviceEndPoint, string oAuthToken)
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

                            XElement xmlData = XElement.Parse(r);
                            var nodes = xmlData.XPathSelectElements(@"/row").OrderBy(E => E.Element("Price").Value);

                            var count = nodes.Count();
                            //txtCount.InnerHtml = count.ToString() + " Vehicles";
                            foreach (var node in nodes)
                            {
                                var vehicleid = node.XPathSelectElement("AdvertId").Value;
                                var Year = node.XPathSelectElement("Year").Value;
                                var Make = node.XPathSelectElement("Make").Value;
                                var Model = node.XPathSelectElement("Model").Value;
                                var Derivative = "";
                                if (node.XPathSelectElement("Derivative") != null)
                                {
                                    Derivative = node.XPathSelectElement("Derivative").Value;
                                }
                                var Mileage = node.XPathSelectElement("Mileage").Value;
                                var Colour = "";
                                if (node.XPathSelectElement("Colour") != null)
                                {
                                    Colour = node.XPathSelectElement("Colour").Value;
                                }
                                var TransmissionType = node.XPathSelectElement("TransmissionType").Value;
                                var FuelType = node.XPathSelectElement("FuelType").Value;
                                var Price = node.XPathSelectElement("Price").Value;
                                var picElements = node.XPathSelectElements("Media/Pic");
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
                                if (node.XPathSelectElement("NewUsed").Value == "used")
                                {
                                    divCars.InnerHtml += "<div class='col-12 col-md-6 col-xl-4 mb-4'><a href='details.aspx?id=" + vehicleid + "'><img src='" + image.Value + "' alt='Look4Cars Image' class='img-fluid rounded-top'/></a>";
                                    divCars.InnerHtml += "<div class='card c-brd-light car-box'><div class='card-body'><h6 class='mb-2'><a href='details.aspx?id=" + vehicleid + "'>" + Year + " " + Make + " " + Model + " " + Derivative + "</a></h6>";
                                    divCars.InnerHtml += "<ul class='list-unstyled mb-0 c-line-height-2_5'><li><h6 class='c-primary mb-0'><small class='c-light'>Price</small> R" + str3 + " </h6></li>";
                                    divCars.InnerHtml += "<li><i class='fa fa-credit-card pr-1'></i> From R" + install2 + " with no deposit and no balloon</li></ul></div>";
                                    divCars.InnerHtml += "<ul class='list-inline mb-0 p-3 c-brd-light border border-left-0 border-bottom-0 border-right-0'><li class='list-inline-item mr-3'><a href='#' class='c-light'><i class='flaticon-calendar pr-1'></i> " + Year + " </a></li>";
                                    divCars.InnerHtml += "<li class='list-inline-item mr-3'><a href='#' class='c-light'><i class='flaticon-clock pr-1'></i> " + Mileage + "km</a></li><li class='list-inline-item mr-3'><a href='#' class='c-light'><i class='flaticon-fuel pr-1'></i>  " + node.XPathSelectElement("FuelType").Value + " </a></li>";
                                    divCars.InnerHtml += "<li class='list-inline-item'><a href='#' class='c-light'><i class='flaticon-transport-2 pr-1'></i>  " + TransmissionType + " </a></li></ul></div></div>";
                                }
                                txtCount.InnerHtml = count + " Vehicles";
                            }
                            XmlDocument doc = new XmlDocument();
                            doc.LoadXml(r);
                            XmlNodeList xnList = doc.SelectNodes("/root/row");
                            xmlDoc = doc;
                        }
                    }
                }
                return xmlDoc;
            }
        }
        protected void btnSearch_ServerClick1(object sender, EventArgs e)
        {
            // Response.Redirect("usedsearch.aspx?make=" + txtMake.Value + "&year=" + txtYear.Value + "&trans=" + txtTrans.Value + "&price=" + txtPrice.Value + "&mileage=" + txtMileage.Value + "&sort=" + txtOrderBy.Value);

        }
    }
}