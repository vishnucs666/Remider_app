using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["loginvl"].Value == "vishnu")
        {
           
        }
        else
        {
          
            Response.Redirect("Home.aspx");
        }
    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        Session["lvl"] = "1";
        Response.Redirect("View.aspx");

    }
    protected void logout_ServerClick(object sender, EventArgs e)
    {
       Response.Cookies["loginvl"].Value = "";
       Session["lvl"] = "0";
       Response.Redirect("Home.aspx");

    }
}
