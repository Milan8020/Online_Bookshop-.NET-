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

public partial class _Default : System.Web.UI.Page
{
    static string s = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    SqlConnection con = new SqlConnection(s);
    protected void Page_Load(object sender, EventArgs e)
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
        GridView2.DataSource = ds.Tables[0];
        GridView2.DataBind();

        DataSet isbn1 = new DataSet();
        DataSet ds1 = new DataSet();
        SqlDataAdapter getisbn1 = new SqlDataAdapter("select isbnno from orders order by orderno desc;", con);
        getisbn.Fill(isbn1);
        int n1 = isbn1.Tables[0].Rows.Count;
        for (int i = 0; i < n1; i++)
        {
            SqlDataAdapter da1 = new SqlDataAdapter("select title,author,publisher,price,t_image from books where isbnno='" + Convert.ToInt32(isbn1.Tables[0].Rows[i][0]) + "'", con);
            da1.Fill(ds1);
        }
        GridView3.DataSource = ds1.Tables[0];
        GridView3.DataBind();
    }
    protected void Row_Click(object sender, EventArgs e)
    {
         Session["BookName"]=((LinkButton)sender).Text;
         Response.Redirect("~//User//BookDetails.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
