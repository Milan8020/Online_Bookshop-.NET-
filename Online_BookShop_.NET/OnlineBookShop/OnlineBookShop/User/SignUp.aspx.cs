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

public partial class Visitor_signup : System.Web.UI.Page
{
    static string s = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    SqlConnection con = new SqlConnection(s);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        SqlCommand checkUsername = new SqlCommand("select count(*) from login where username='"+textUsername.Text+"'",con);
        int n = Convert.ToInt32(checkUsername.ExecuteScalar());
        if (n == 0)
        {
            SqlCommand checkEmail = new SqlCommand("select count(*) from registration where email='"+textEmail.Text+"'",con);
            int n1 = Convert.ToInt32(checkEmail.ExecuteScalar());
            if (n1 == 0)
            {
                SqlCommand comregister = new SqlCommand("insertuser", con);
                comregister.CommandType = CommandType.StoredProcedure;
                comregister.Parameters.AddWithValue("@username", textUsername.Text);
                comregister.Parameters.AddWithValue("@password", textPassword.Text);
                comregister.Parameters.AddWithValue("@email", textEmail.Text);
                comregister.Parameters.AddWithValue("@firstname", textFirstname.Text);
                comregister.Parameters.AddWithValue("@lastname", textLastname.Text);
                comregister.Parameters.AddWithValue("@gender", dropGender.SelectedItem.Text);
                comregister.Parameters.AddWithValue("@address", textAddress.Text);
                comregister.Parameters.AddWithValue("@city", textCity.Text);
                comregister.Parameters.AddWithValue("@state", textState.Text);
                comregister.Parameters.AddWithValue("@pincode", textPincode.Text);
                comregister.Parameters.AddWithValue("@mobile", textMobile.Text);

                SqlCommand comlogin = new SqlCommand("insertlogin", con);
                comlogin.CommandType = CommandType.StoredProcedure;
                comlogin.Parameters.AddWithValue("@username", textUsername.Text);
                comlogin.Parameters.AddWithValue("@password", textPassword.Text);
                comlogin.Parameters.AddWithValue("@userstatus", "User");
                comlogin.ExecuteNonQuery();
                comregister.ExecuteNonQuery();
                Session["Username"] = textUsername.Text;
                Response.Redirect("~//User//Home.aspx");
            }
            else
            {
                textEmail.Text = "";
                textUsername.Text = "";
                //labelEmailError.Visible = true;
                //labelUsernameError.Visible = false;
            }
        }
        else
        {
            textUsername.Text = "";
            //labelUsernameError.Visible = true;
            //labelEmailError.Visible = false;
        }
        con.Close();
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~//User//Home.aspx");
    }
}
