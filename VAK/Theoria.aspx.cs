using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Theoria : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UserPreferences userPreferences = new UserPreferences(); //a class that can ask for VAKType and PastKnowledge by Username

        if (Request.IsAuthenticated)    ///if he is user
        {
            if (userPreferences.getUsersVakType(User.Identity.Name) == "Visual")  ///check his VAKType
            {
                Response.Redirect("~/VisualPresentation.aspx");
            }
            else if (userPreferences.getUsersVakType(User.Identity.Name) == "Auditory")
            {
                Response.Redirect("~/AuditoryPresentation.aspx");
            }
            else if (userPreferences.getUsersVakType(User.Identity.Name) == "Kinesthetic")
            {
                Response.Redirect("~/KinestheticPresentation.aspx");
            }
        }
        else                            /// an den einai melos(dhladh einai visitor) -> diw3e ton
        {
            PresentationMenu.Visible = false;
            AuthenticationError.Visible = true;
        }
    }

    
}