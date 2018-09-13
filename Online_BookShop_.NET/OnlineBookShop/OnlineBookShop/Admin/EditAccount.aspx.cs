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

public partial class editaccount : System.Web.UI.Page
{
    static string connectionstring = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    SqlConnection con = new SqlConnection(connectionstring);
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string pwd;
        con.Open();
        SqlCommand getpwd = new SqlCommand("select password from login where username='"+Session["Username"].ToString()+"'",con);
        pwd = getpwd.ExecuteScalar().ToString();
        if (pwd == textOldpassword.Text)
        {
            SqlCommand changepassword = new SqlCommand("changePassword1", con);
            changepassword.CommandType = CommandType.StoredProcedure;
            changepassword.Parameters.AddWithValue("@password", textNewpassword.Text);
            changepassword.Parameters.AddWithValue("@username", Session["Username"].ToString());
            changepassword.ExecuteNonQuery();
            con.Close();
        }
        else
        {
            labelerror.Visible = true;
        }
        Label2.Text = "Password Updated Successfully....";
    }
    protected void textOldpassword_TextChanged(object sender, EventArgs e)
    {
        labelerror.Visible = false;
    }
}
