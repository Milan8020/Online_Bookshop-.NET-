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

public partial class Admin_addadvertisement : System.Web.UI.Page
{
    static string connectionstring = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    SqlConnection con = new SqlConnection(connectionstring);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string path = "";
        if(AdImageUpload.HasFile)
        {
            path=string.Concat("~/Images/",AdImageUpload.FileName);
            AdImageUpload.SaveAs(Server.MapPath("~/Images/")+AdImageUpload.FileName);
        }
        SqlCommand insertAd = new SqlCommand("insertAd",con);
        insertAd.CommandType = CommandType.StoredProcedure;
        insertAd.Parameters.AddWithValue("@AlternateText",textAlternate.Text);
        insertAd.Parameters.AddWithValue("@ImageUrl",path); 
        insertAd.Parameters.AddWithValue("@NevigateUrl", textNevigate.Text);
        con.Open();
        insertAd.ExecuteNonQuery();
        con.Close();
        textAlternate.Text = "";
        textNevigate.Text = "";
    }
}
