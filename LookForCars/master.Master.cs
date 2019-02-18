using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LookForCars
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_ServerClick(object sender, EventArgs e)
        {
            L4C.LookForCarsServiceClient l = new L4C.LookForCarsServiceClient();

            int id = 0;
            string profileImage = "";


            if (l.UserAuth(txtUsername.Value, txtPassword.Value, ref id, ref profileImage))
            {
                Session["LoggedIn"] = txtUsername.Value;
                Session["ID"] = id;
                Session["Propic"] = profileImage;

                string vehicleID = "";
                if (!(Session["VehicleID"] == null))
                {
                    vehicleID = Session["VehicleID"].ToString();
                    Response.Redirect("MyFinance/createpolicy.aspx?req=" + vehicleID);
                }
                else
                {
                    Response.Redirect("MyFinance/dashboard.aspx");
                }

            }
            else
            {
                fail.Visible = true;
            }
        }

        protected void btnSignup_ServerClick(object sender, EventArgs e)
        {

        }

    }
}