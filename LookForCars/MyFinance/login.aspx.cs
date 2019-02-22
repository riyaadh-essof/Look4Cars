using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LookForCars.MyFinance
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_ServerClick(object sender, EventArgs e)
        {
            L4C.LookForCarsServiceClient l = new L4C.LookForCarsServiceClient();
            int id = 0;
            string profileImage = "";
            string firstname = "";
            string lastname = "";
            if (l.UserAuth(txtUsername.Value, txtPassword.Value, ref id, ref profileImage, ref firstname, ref lastname))
            {
                Session["LoggedIn"] = txtUsername.Value;
                Session["FirstName"] = firstname;
                Session["LastName"] = lastname;
                Session["ID"] = id;
                Session["Propic"] = profileImage;
                Response.Redirect("dashboard.aspx");
            }
            else
            {
                fail.Visible = true;
            }
        }
    }
}