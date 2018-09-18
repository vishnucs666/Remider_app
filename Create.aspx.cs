using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Create : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Create one";
    
        if(!IsPostBack)
        {

            string date = DateTime.Now.ToString("MM/dd/yyyy");
            db_connection.con();
            DataTable dt1= new DataTable();
            SqlDataAdapter adt1 = new SqlDataAdapter("spoperations", db_connection.db);
            adt1.SelectCommand.CommandType = CommandType.StoredProcedure;
            adt1.SelectCommand.Parameters.Add("@flag", SqlDbType.Int).Value = 4;
            adt1.SelectCommand.Parameters.Add("@edate", SqlDbType.VarChar).Value = date;
            adt1.Fill(dt1);

            if(dt1.Rows.Count>0)
            {
                this.ModalPopupExtender1.Show();
                lblcount.Text = dt1.Rows.Count.ToString();
            }

        }
        //Response.Write(DateTime.Now.ToString("MM/dd/yyyy"));
        //try
        //{
        //    if (Request.Cookies["loginvl"].Value == null)
        //    {
        //        Response.Redirect("Home.aspx");
        //    }
        //    else
        //    {
              

        //    }
        //}
        //catch (Exception)
        //{

        //    Response.Redirect("Create.aspx");
        //}
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        db_connection.con();
        DataTable dt9 = new DataTable();
        SqlDataAdapter adt9 = new SqlDataAdapter("spoperations", db_connection.db);
        adt9.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt9.SelectCommand.Parameters.Add("@flag", SqlDbType.Int).Value = 0;
        adt9.SelectCommand.Parameters.Add("@name", SqlDbType.VarChar).Value = TextBox1.Text;
        adt9.SelectCommand.Parameters.Add("@edate", SqlDbType.VarChar).Value =TextBox2.Text;
        adt9.SelectCommand.Parameters.Add("@starttime", SqlDbType.VarChar).Value = txtstarttime.Text;
        adt9.SelectCommand.Parameters.Add("@endtime", SqlDbType.VarChar).Value = txtendtime.Text;
        adt9.SelectCommand.Parameters.Add("@loc", SqlDbType.VarChar).Value = TextBox4.Text;
        adt9.Fill(dt9);
        Response.Write("<script>alert('Created')</script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox4.Text = "";
        txtendtime.Text = "";
        txtstarttime.Text="";

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["lvl"] = "0"; 
        Response.Redirect("View.aspx");
        
    }
}