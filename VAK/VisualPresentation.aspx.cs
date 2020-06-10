using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VisualPresentation : Page
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
                //Response.Redirect("~/VisualPresentation.aspx");
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
        StopTimer.Enabled = true;
        this.theory.Visible = true;
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
        timesManager.registerTheoryTime(User.Identity.Name,elapsedTime);
    }

    protected void ShowPresent(object sender, EventArgs e)
    {
        PresentTenses.Visible = true;
        PastTenses.Visible = false;
        FutureTenses.Visible = false;
        PresentTensesButton.Enabled = false;
        PastTensesButton.Enabled = true;
        FutureTensesButton.Enabled = true;
    }

    protected void ShowPast(object sender, EventArgs e)
    {
        PresentTenses.Visible = false;
        PastTenses.Visible = true;
        FutureTenses.Visible = false;
        PresentTensesButton.Enabled = true;
        PastTensesButton.Enabled = false;
        FutureTensesButton.Enabled = true;
    }

    protected void ShowFuture(object sender, EventArgs e)
    {
        PresentTenses.Visible = false;
        PastTenses.Visible = false;
        FutureTenses.Visible = true;
        PresentTensesButton.Enabled = true;
        PastTensesButton.Enabled = true;
        FutureTensesButton.Enabled = false;
    }
}