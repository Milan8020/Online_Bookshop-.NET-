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
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "";
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        //try
        //{
            //string username;
            //con.Open();
            //SqlCommand getusr = new SqlCommand("select username from login where username='" + Session["Username"].ToString() + "'", con);
            //username = Convert.ToString(getusr.ExecuteScalar());
            //if (username == textOldusername.Text)
            //{
            //    string str = "update registration set [password] = " + textNewpassword.Text;
            //    SqlCommand changepassword = new SqlCommand(str, con);
            //    changepassword.Connection = con;
            //    changepassword.CommandType = CommandType.Text;
            //    changepassword.CommandText = str;
            //    int count = changepassword.ExecuteNonQuery();
            //    if (count == 0)
            //    {
            //        Label2.Text = "Password Chnaged Successfully....";
            //    }
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\DELL\Desktop\OnlineShop\OnlineShop\App_Data\books.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            SqlCommand checkUsername = new SqlCommand("select count(*) from registration where username='"+textOldusername.Text+"'",con);
            int n = Convert.ToInt32(checkUsername.ExecuteScalar());
            if (textOldusername.Text!="")
            {
                SqlCommand check = new SqlCommand("select count(*) from registration where mobile='" + txtphone.Text + "'", con);
                int n1 = Convert.ToInt32(check.ExecuteScalar());
                if (n1!= 0)
                {
                    String s, uname = "";
                    uname = textOldusername.Text;
                    String num = txtphone.Text;
                    s = "select * from registration where username='" + uname + "' and mobile='" + num + "'";
                    SqlCommand cmd = new SqlCommand();
                    
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = s;
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        Label2.Text = sdr["password"].ToString();
                    }


                    textOldusername.Text = "";
                    labelerror.Visible = false;
                    Label11.Visible = false;
                    txtphone.Text = "";

                    con.Close();
                }
                
            }
            else
            {
                labelerror.Visible = true;
                Label11.Visible = true;
            }
            
        //}
        //catch(Exception en)
        //{
        //}
    }
    protected void textOldpassword_TextChanged(object sender, EventArgs e)
    {
        //labelerror.Visible = true;
    }
}
