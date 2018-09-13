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

public partial class User_Books : System.Web.UI.Page
{
    static string s = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    SqlConnection con = new SqlConnection(s);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label1.Text = Session["Category"].ToString() + ":";
            if (Session["Category"] == "Best Seller")
            {
                DataSet isbn = new DataSet();
                DataSet ds = new DataSet();
                SqlDataAdapter getisbn = new SqlDataAdapter("select isbnno,count(isbnno) from orders group by isbnno order by count(isbnno) desc;", con);
                getisbn.Fill(isbn);
                int n = isbn.Tables[0].Rows.Count;
                for (int i = 0; i < n; i++)
                {
                    SqlDataAdapter da = new SqlDataAdapter("select title,author,publisher,price,t_image from books where isbnno='" + Convert.ToInt32(isbn.Tables[0].Rows[i][0]) + "'", con);
                    da.Fill(ds);
                }
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }
            else if (Session["Category"] == "Recently Sold")
            {
                DataSet isbn1 = new DataSet();
                DataSet ds1 = new DataSet();
                SqlDataAdapter getisbn1 = new SqlDataAdapter("select isbnno from orders order by orderno desc;", con);
                getisbn1.Fill(isbn1);
                int n1 = isbn1.Tables[0].Rows.Count;
                for (int i = 0; i < n1; i++)
                {
                    SqlDataAdapter da1 = new SqlDataAdapter("select title,author,publisher,price,t_image from books where isbnno='" + Convert.ToInt32(isbn1.Tables[0].Rows[i][0]) + "'", con);
                    da1.Fill(ds1);
                }
                GridView1.DataSource = ds1.Tables[0];
                GridView1.DataBind();
            }
            else if (Session["Category"] == "New Release")
            {
                DataSet ds4 = new DataSet();
                SqlDataAdapter da4 = new SqlDataAdapter("select title,author,publisher,price,t_image from books order by isbnno desc", con);
                da4.Fill(ds4);
                GridView1.DataSource = ds4.Tables[0];
                GridView1.DataBind();
            }
            else
            {
                DataSet ds2 = new DataSet();
                SqlDataAdapter da2 = new SqlDataAdapter("select title,author,publisher,price,t_image from books where category='" + Session["Category"].ToString() + "'", con);
                da2.Fill(ds2);
                GridView1.DataSource = ds2.Tables[0];
                GridView1.DataBind();
            }
        }
        catch (Exception be)
        {
            Label1.Text = "***";
        }
    }
    protected void Row_Click(object sender, EventArgs e)
    {
        Session["BookName"] = ((LinkButton)sender).Text;
        Response.Redirect("~//User//BookDetails.aspx");
    }
}
