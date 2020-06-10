using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KinestheticPresentation : Page
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
                Response.Redirect("~/AuditoryPresentation.aspx");
            }
            else if (userPreferences.getUsersVakType(User.Identity.Name) == "Kinesthetic")
            {
                //Response.Redirect("~/KinestheticPresentation.aspx");
                //String videocode1 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TnH6Ust1zuI?autoplay=1\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>";

                //Live youtube video! If it doesn't work, live link might have changed.
                String videocode1 = "<iframe width=\"400\" height=\"100\" src=\"https://www.youtube.com/embed/hHW1oY26kxQ?autoplay=1\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>";
                VideoLiteral.Text = videocode1;

                if (!Page.IsPostBack)
                {
                    //populate notes
                    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT * FROM KinestheticNotes WHERE UserName=@username";
                    cmd.Parameters.Add("@username", SqlDbType.NVarChar, 256).Value = User.Identity.Name;
                    cmd.Prepare();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.HasRows)
                    {
                        rd.Read();
                        Notes.Text = rd[2].ToString();
                        rd.Close();
                        con.Close();
                    }
                }
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
        timesManager.registerTheoryTime(User.Identity.Name, elapsedTime);
    }

    public void SaveNotesButton(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        
        if (!checkForPreviousRecord(User.Identity.Name))  //there is no previous record
        {
            cmd.CommandText = "INSERT INTO KinestheticNotes(UserName,Notes) VALUES (@username,@notes);";
            cmd.Parameters.Add("@username", SqlDbType.NVarChar, 256).Value = User.Identity.Name;
            cmd.Parameters.Add("@notes", SqlDbType.NVarChar,-1).Value = Notes.Text;
        }
        else
        {
            cmd.CommandText = "UPDATE KinestheticNotes SET Notes=@notes WHERE UserName=@username;";
            cmd.Parameters.Add("@username", SqlDbType.NVarChar, 256).Value = User.Identity.Name;
            cmd.Parameters.Add("@notes", SqlDbType.NVarChar,-1).Value = Notes.Text; 
        }
        cmd.Prepare();
        cmd.ExecuteNonQuery();
    }

    private Boolean checkForPreviousRecord(string username)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT * FROM KinestheticNotes WHERE UserName=@username";
        cmd.Parameters.Add("@username", SqlDbType.NVarChar, 256).Value = username;
        cmd.Prepare();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Close();
            con.Close();
            return true;
        }
        else
        {
            rd.Close();
            con.Close();
            return false; 
        }
    }
}