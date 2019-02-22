using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LookForCars.MyFinance
{
    public partial class dashboard : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] == null || Session["LoggedIn"].ToString() == "")
            {
                Response.Redirect("login.aspx");
            }
            try
            {
                txtFirstName.InnerHtml = Session["FirstName"].ToString();
                txtLastName.InnerHtml = Session["LastName"].ToString();
                userImage.Src = "assets/images/Users/" + Session["Propic"].ToString();
            } catch(NullReferenceException ex)
            {
                Response.Redirect("error.aspx");
            }
            
        }
    }
}