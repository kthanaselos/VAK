using Microsoft.AspNet.Identity;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Configuration;
using System.Web.UI;
using VAK;

public partial class Account_Register : Page
{
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        var manager = new UserManager();
        var user = new ApplicationUser() { UserName = UserName.Text };
        IdentityResult result = manager.Create(user, Password.Text);
        if (result.Succeeded)
        {
            //Insertion of VAKType and PastKnowledge
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE AspNetUsers set VAKType='" + VAKRadioButtonList.SelectedValue + "',PastKnowledge='" + PastKnowledgeLevel.SelectedValue + "' WHERE UserName='" + UserName.Text +"'";
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            //End of VAKType and PastKnowledge insertion
            
            IdentityHelper.SignIn(manager, user, isPersistent: false);
            IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        }
        else
        {
            ErrorMessage.Text = result.Errors.FirstOrDefault();
        }
    }
}