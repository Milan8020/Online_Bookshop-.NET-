using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Visitor_login : System.Web.UI.Page
{
    static string s = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    SqlConnection con = new SqlConnection(s);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void imageLogin_Click(object sender, ImageClickEventArgs e)
    {
        SqlCommand login = new SqlCommand("select userstatus from login where username='" + textUsername.Text + "' and password='" + textPassword.Text + "'", con);
        con.Open();
        SqlDataReader rdr = login.ExecuteReader();
        rdr.Read();
        if (rdr.HasRows)
        {
            rdr.Close();
            string userstatus = login.ExecuteScalar().ToString();
            Session["Username"] = textUsername.Text;
            Session.Timeout = 30;
            if (userstatus == "User")
            {
                Response.Redirect("~//User//Home.aspx");
            }
            else
            {
                Response.Redirect("~//Admin//Home.aspx");
            }
        }
        else
        {
            labelLoginError.Visible = true;
            textUsername.Text = "";
        }
        rdr.Close();
        con.Close();
    }
}
