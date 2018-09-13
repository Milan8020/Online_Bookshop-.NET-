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

public partial class Modify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        //string s = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\DELL\Desktop\OnlineShop\OnlineShop\App_Data\books.mdf;Integrated Security=True;User Instance=True";
        con.Open();
        String str, isbnno = "";
        isbnno = textIsbn.Text;
        
        str = "select * from books where isbnno= " + isbnno ;
        SqlCommand cmd = new SqlCommand();
        SqlDataReader reader;
        cmd.Connection = con;
        
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = str;
        reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            textTitle.Text = Convert.ToString(reader.GetValue(1));
            textAuthor.Text = Convert.ToString(reader.GetValue(2));
            textPublisher.Text = Convert.ToString(reader.GetValue(3));
            textPrice.Text = Convert.ToString(reader.GetValue(4));
            textYear.Text = Convert.ToString(reader.GetValue(5));
            dropCategory.SelectedValue = Convert.ToString(reader.GetValue(6));
            textShortdetail.Text = Convert.ToString(reader.GetValue(7));
            textDetail.Text = Convert.ToString(reader.GetValue(8));
            textAuthordetail.Text = Convert.ToString(reader.GetValue(9));
            //t_imageUpload = (reader.GetValue(10));
            //f_imageUpload = (reader.GetValue(11));
            reader.Close();
        }
        else
        {
            Console.WriteLine("No rows found.");
        }
        reader.Close();
        con.Close();
    }

    private SqlDataReader ExecuteReader()
    {
        throw new NotImplementedException();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
         SqlConnection con = new SqlConnection();
        con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\DELL\Desktop\OnlineShop\OnlineShop\App_Data\books.mdf;Integrated Security=True;User Instance=True";
        con.Open();
        String isbnno = textIsbn.Text;
        SqlCommand cmd = new SqlCommand();
       // SqlDataReader reader;
        cmd.Connection = con;
           cmd.CommandText = "update books set title='" + textTitle.Text + "' , author='" + textAuthor.Text 
               + "', publisher = '" + textPublisher.Text + "' , price = " + textPrice.Text + ", year = " 
               + textYear.Text + " , category = '" + dropCategory.SelectedValue + "',shortdetails = '" 
               + textShortdetail.Text + "',fulldetails = '" + textDetail.Text + "',authordetails = '" 
               + textAuthordetail.Text + "' where isbnno = "+ isbnno;
        
            cmd.CommandType = CommandType.Text;
            int count = cmd.ExecuteNonQuery();
            if (count > 0)
            {
                 
                Label1.Text="Recored Updated Successfully";
                Label1.Visible = true;
                textTitle.Text = "";
                textAuthor.Text = "";
                textPublisher.Text = "";
                textPrice.Text = "";
                textYear.Text = "";
                dropCategory.SelectedValue = "";
                textShortdetail.Text = "";
                textDetail.Text = "";
                textAuthordetail.Text = "";
            }
            else
            {
                Label1.Text = "Recored Not Updated";
                Label1.Visible = true;
            }
     
            con.Close();
    }
}