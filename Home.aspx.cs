using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Response.Cookies["loginvl"].Value = "";
            if (Request.Cookies["loginvl"].Value == "")
            {
               
            }
            else
            {
                Response.Redirect("Create.aspx");

            }
        }
        catch (Exception)
        {

            Response.Redirect("Create.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        
        if (TextBox1.Text=="vishnu" && TextBox2.Text=="007")
        {
            Response.Cookies["loginvl"].Value = TextBox1.Text;
            Response.Redirect("Create.aspx");

        }
        else
        {
            Response.Write("<script>alert('No accesss')</script>");
        }
    }
}