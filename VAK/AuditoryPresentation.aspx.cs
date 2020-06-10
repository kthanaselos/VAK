using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AuditoryPresentation : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Request.IsAuthenticated)
        {
            presentation.Visible = false;
            AuthenticationError.Visible = true;
        }
        else
        {
            UserPreferences userPreferences = new UserPreferences();
            if (userPreferences.getUsersVakType(User.Identity.Name) == "Visual")  ///check his VAKType
            {
                Response.Redirect("~/VisualPresentation.aspx");
            }
            else if (userPreferences.getUsersVakType(User.Identity.Name) == "Auditory")
            {
                //Response.Redirect("~/AuditoryPresentation.aspx");
                String videocode1 = "<iframe src=\"https://www.youtube.com/embed/3lI3R9_Z1HY\" align =\"left\" width =\"560\" height =\"315\" allowfullscreen=\"\" framerborder=\"0\"></iframe>";
                //String videocode2 = "<div id=\"video\"><video width=\"640\" height = \"480\" controls ><source src=\"~/Videos/SampleVideo.mp4\" type =\"video/mp4\">Your browser does not support the video tag.</video></div>";
                VideoLiteral.Text = videocode1;
                String videocode2 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nFdXIenda98\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>";
                VideoLiteral2.Text = videocode2;
            }
            else if (userPreferences.getUsersVakType(User.Identity.Name) == "Kinesthetic")
            {
                Response.Redirect("~/KinestheticPresentation.aspx");
            }
        }
        
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        //if (DateTime.Compare(DateTime.Now, DateTime.Parse(Session["Timer"].ToString())) < 0)
        //{
        //    Label1.Text = ((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalSeconds).ToString();
        //}

        if (DateTime.Compare(DateTime.Parse(Session["StartTime"].ToString()), DateTime.Now) < 0)
        {
            //<0 means first is earlier than second
            //=0 is same time
            //>0 means first is later than second
            Label1.Text = "Time passed: " + ((Int32)DateTime.Now.Subtract(DateTime.Parse(Session["StartTime"].ToString())).TotalSeconds).ToString() + " seconds";
        }


    }

    public void StartTimerButton(object sender, EventArgs e)
    {
        Timer1.Enabled = true;
        StartTimer.Enabled = false;
        this.theory.Visible = true;
        StopTimer.Enabled = true;
        Session["StartTime"] = DateTime.Now.ToString();
    }

    protected void StopTimerButton(object sender, EventArgs e)
    {
        long elapsedTime = ((Int32)DateTime.Now.Subtract(DateTime.Parse(Session["StartTime"].ToString())).TotalSeconds);
        Timer1.Enabled = false;
        //StartTimer.Enabled = true;
        StopTimer.Enabled = false;
        //register users time in DB
        TimesManager timesManager = new TimesManager();
        timesManager.registerTheoryTime(User.Identity.Name, elapsedTime);
    }
}