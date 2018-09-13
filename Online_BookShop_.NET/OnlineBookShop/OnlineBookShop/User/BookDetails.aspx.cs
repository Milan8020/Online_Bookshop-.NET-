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
public partial class User_BookDetails : System.Web.UI.Page
{
    static string s = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    SqlConnection con = new SqlConnection(s);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("Select title,author,publisher,price,year,fulldetails,authordetails,f_image from books where title='" + Session["BookName"].ToString() + "'", con);
            da.Fill(ds);
            Label8.Text = ds.Tables[0].Rows[0][0].ToString();
            Label9.Text = ds.Tables[0].Rows[0][1].ToString();
            Label10.Text = ds.Tables[0].Rows[0][2].ToString();
            Label11.Text = ds.Tables[0].Rows[0][3].ToString();
            Label12.Text = ds.Tables[0].Rows[0][4].ToString();
            Label13.Text = ds.Tables[0].Rows[0][5].ToString();
            Label14.Text = ds.Tables[0].Rows[0][6].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0][7].ToString();
        }
        catch (Exception bn)
        {
           
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int quantity=0;
        try
        {
           Label l= Master.FindControl("Label9") as Label;
           l.Text = Label8.Text;
           Label l1 = Master.FindControl("Label4") as Label;
           l1.Text = Label11.Text;
           int isbnno=0, price=0, year=0;
           string title=null, author=null, publisher=null;
           con.Open();
           string str2 = "select * from books where title='"+Label8.Text+"'";
           SqlCommand command = new SqlCommand(str2,con);
           SqlDataReader reader = command.ExecuteReader();

           if (reader.Read())
           {
              
                   isbnno = Convert.ToInt32(reader.GetValue(0));
                   price = Convert.ToInt32(reader.GetValue(4));
                   year = Convert.ToInt32(reader.GetValue(5));
                   title = Convert.ToString(reader.GetValue(1));
                   author = Convert.ToString(reader.GetValue(2));
                   publisher = Convert.ToString(reader.GetValue(3));
               
           }
           else
           {
               Console.WriteLine("No rows found.");
           }
           reader.Close();
          quantity = Convert.ToInt32(TextBox1.Text);
           int price1 = (quantity*price);
           string str1 = "insert into MyCart1 values ('" + Session["Username"] + "','" + isbnno + "','" + title + "','" + author + "','" + publisher + "','" + price1 + "','" + year + "'," + quantity + ")";
           SqlCommand cmd = new SqlCommand(str1, con);
           int c = cmd.ExecuteNonQuery();
          
           con.Close();
        //  Response.Redirect("~\\User\\Home.aspx");
        }
       
        catch (Exception bn)
        {
            Response.Write(bn.ToString());
        }
       
    }

}

