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

public partial class Admin_addbook : System.Web.UI.Page
{
    static string connectionstring = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    SqlConnection con = new SqlConnection(connectionstring);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand checkbook = new SqlCommand("select count(*) from books where isbnno='" + textIsbn.Text + "'", con);
            int n = Convert.ToInt32(checkbook.ExecuteScalar());
            if (n > 0)
            {
                labelBookError.Visible = true;
            }

            string path = "";
            if (t_imageUpload.HasFile)
            {
                path = string.Concat("~/Images/", t_imageUpload.FileName);
                t_imageUpload.SaveAs(Server.MapPath("~/Images/") + t_imageUpload.FileName);
            }
            string path1 = "";
            if (f_imageUpload.HasFile)
            {
                path1 = string.Concat("~/Images/", f_imageUpload.FileName);
                f_imageUpload.SaveAs(Server.MapPath("~/Images/") + f_imageUpload.FileName);
            }
            String str = "insert into books values (" + textIsbn .Text + ",'" + textTitle.Text + "','" + textAuthor.Text + "','" + textPublisher.Text + "'," + textPrice.Text + "," + textYear.Text + ",'" + dropCategory.SelectedItem.Text + "','" + textShortdetail.Text + "','" + textDetail.Text + "','" + textAuthordetail.Text + "','" +  path + "','" +  path1 + "')";
            //Response.Write(str);
            checkbook = new SqlCommand(str, con);
            //insertbook.CommandType = CommandType.StoredProcedure;
            //insertbook.Parameters.AddWithValue("@isbnno", textIsbn.Text);
            //insertbook.Parameters.AddWithValue("@title", textTitle.Text);
            //insertbook.Parameters.AddWithValue("@author", textAuthor.Text);
            //insertbook.Parameters.AddWithValue("@publisher", textPublisher.Text);
            //insertbook.Parameters.AddWithValue("@price", textPrice.Text);
            //insertbook.Parameters.AddWithValue("@year", textYear.Text);
            //insertbook.Parameters.AddWithValue("@Category", dropCategory.SelectedItem.Text);
            //insertbook.Parameters.AddWithValue("@shortdetails", textShortdetail.Text);
            //insertbook.Parameters.AddWithValue("@fulldetails", textDetail.Text);
            //insertbook.Parameters.AddWithValue("@authordetails", textAuthordetail.Text);
            
            //insertbook.Parameters.AddWithValue("@t_image", path);
            //insertbook.Parameters.AddWithValue("@f_image", path1);
            int count = checkbook.ExecuteNonQuery();
            con.Close();
            //Response.Redirect("~//Admin//AddBook.aspx");
        }
        catch(Exception en)
        {
            Response.Write(en.ToString());
        }
    }
    protected void textIsbn_TextChanged(object sender, EventArgs e)
    {
        labelBookError.Visible = false;
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~//Admin//Home.aspx");
    }
}
