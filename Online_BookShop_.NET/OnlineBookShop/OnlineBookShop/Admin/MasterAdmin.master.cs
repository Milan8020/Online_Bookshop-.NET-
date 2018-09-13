using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterAdmin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e) 
    {
        try
        {
            if (Session["Username"] != null)
            {
                Label1.Text = Session["Username"].ToString();
               // Response.Redirect("~\\Admin\\Home.aspx");
            }
            else
            {
                Response.Redirect("~\\User\\Login.aspx");
            }
        }
      finally
        {
            //Response.Redirect("~\\Admin\\Home.aspx");
        }
        
    }
    
    protected void linkArtPho_Click(object sender, EventArgs e)
    {
        Session["Category"] = ((LinkButton)sender).Text;
        Response.Redirect("~\\User\\Books.aspx");
    }
    protected void linkChangepassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("~\\Admin\\EditAccount.aspx");
    }

    protected void linkModufyUsers_Click(object sender, EventArgs e)
    {
        Response.Redirect("~\\Admin\\MyProfile.aspx");
    }
    protected void linkAddNewBooks_Click(object sender, EventArgs e)
    {
        Response.Redirect("~\\Admin\\AddBook.aspx");
    }

    protected void linkLogout_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        //Session["Username"] = null;
        Response.Redirect("~\\User\\Login.aspx");
    }
    protected void linkModifyBooks_Click(object sender, EventArgs e)
    {
        Response.Redirect("~\\Admin\\Modify.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~\\Admin\\ViewBook.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~\\Admin\\SoldBook.aspx");
    }
    protected void linkHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~\\Admin\\Home.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~\\Admin\\DeleteBooks.aspx");
    }
}
