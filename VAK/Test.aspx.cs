using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test : Page
{
    Random r = new Random();
    int correctAnswers;
    List<int> UsedQuestionList;

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    Session["Timer"] = DateTime.Now.AddMinutes(2).ToString();
        //    Session["StartTime"] = DateTime.Now.ToString();
        //}

        if (ViewState["UsedQuestionList"] != null)
        {
            UsedQuestionList = (List<int>)ViewState["UsedQuestionList"];
        }
        else
        {
            // List isn't in view state, so it must be created and populated.
            UsedQuestionList = new List<int>();
        }

        if (ViewState["correctAnswers"] != null)
        {
            correctAnswers = (int)ViewState["correctAnswers"];
        }
        else
        {
            // List isn't in view state, so it must be created and populated.
            correctAnswers = 0;
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        //if (DateTime.Compare(DateTime.Now, DateTime.Parse(Session["Timer"].ToString())) < 0)
        //{
        //    Label1.Text = ((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalSeconds).ToString();
        //}

        if (DateTime.Compare(DateTime.Parse(Session["StartTime"].ToString()),DateTime.Now) < 0){
            //<0 means first is earlier than second
            //=0 is same time
            //>0 means first is later than second
            Label1.Text = "Time passed: "+((Int32)DateTime.Now.Subtract(DateTime.Parse(Session["StartTime"].ToString())).TotalSeconds).ToString() + " seconds";
        }
        
        
    }

    public void StartTimerButton(object sender, EventArgs e)
    {
        Timer1.Enabled = true;
        StartTimer.Enabled = false;
        this.questions.Visible = true;
        Session["StartTime"] = DateTime.Now.ToString();
        UsedQuestionList.Clear();
        setNextQuestion();
    }

    public void SubmitAnswer(object sender, EventArgs e)
    {
        //check answer
        if (((AnswerA.Checked == true) && PossibleAnswer1.Text == getCorrectAnswerById(Int32.Parse(QuestionID.Text))) ||
                ((AnswerB.Checked == true) && PossibleAnswer2.Text == getCorrectAnswerById(Int32.Parse(QuestionID.Text))) ||
                ((AnswerC.Checked == true) && PossibleAnswer3.Text == getCorrectAnswerById(Int32.Parse(QuestionID.Text))) ||
                ((AnswerD.Checked == true) && PossibleAnswer4.Text == getCorrectAnswerById(Int32.Parse(QuestionID.Text)))) //check for correct answer
        {
            correctAnswers++;
            ViewState.Add("correctAnswers", correctAnswers);
            string message = "Correct Answer";
            string script = "window.onload = function(){ alert('" + message + "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "Correct", script, true);

        }
        else
        {
            string message = "Wrong Answer";
            string script = "window.onload = function(){ alert('" + message + "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "Wrong", script, true);
        }

        if (UsedQuestionList.Count == 10) // Question limit for end of test
        {
            int testElapsedTime = ((Int32)DateTime.Now.Subtract(DateTime.Parse(Session["StartTime"].ToString())).TotalSeconds); //test time
            Timer1.Enabled = false;
            
            //start of evaluation
            //get pastknowledge
            UserPreferences userPreferences = new UserPreferences();
            string pastKnowledge = userPreferences.getUsersPastKnowledge(User.Identity.Name);
            //get VAK type
            string usersVakType = userPreferences.getUsersVakType(User.Identity.Name);
            //get theory time
            TimesManager timesManager = new TimesManager();
            Int64 theoryTime = timesManager.getTheoryTime(User.Identity.Name); //mporei na epistrepsei arnhtikh timh
            timesManager.registerTestTime(User.Identity.Name,(Int64) testElapsedTime); //also record the test time

            registerScore(User.Identity.Name, correctAnswers); // katagrafh swstwn apanthsewn sth bash





            int boredomPoints = 0;

            boredomPoints = boredomPoints + correctAnswers; //Each correct answer contributes 1 point

            if (pastKnowledge == "Low") // Low=3 , Medium=2 , High=1
            {
                boredomPoints = boredomPoints + 3;
            }
            else if (pastKnowledge == "Medium")
            {
                boredomPoints = boredomPoints + 2;
            }
            else if (pastKnowledge == "High")
            {
                boredomPoints = boredomPoints + 1;
            }

            if (testElapsedTime < 120) // Low=3 , Medium=2 , High=1    Time is in seconds
            {
                boredomPoints = boredomPoints + 3;
            }
            else if (testElapsedTime < 180)
            {
                boredomPoints = boredomPoints + 2;
            }
            else if (testElapsedTime >= 180)
            {
                boredomPoints = boredomPoints + 1;
            }

            //Check theory time. Theory time evaluation is not the same for each category
            if (usersVakType == "Visual")
            {
                if (theoryTime < 2400) // Low=3 , Medium=2 , High=1    Time is in seconds
                {
                    boredomPoints = boredomPoints + 3;
                }
                else if (theoryTime < 4000)
                {
                    boredomPoints = boredomPoints + 2;
                }
                else if (theoryTime >= 4000)
                {
                    boredomPoints = boredomPoints + 1;
                }
            }
            else if (usersVakType == "Auditory")
            {
                if (theoryTime < 2000) // Low=3 , Medium=2 , High=1    Time is in seconds
                {
                    boredomPoints = boredomPoints + 3;
                }
                else if (theoryTime < 3600)
                {
                    boredomPoints = boredomPoints + 2;
                }
                else if (theoryTime >= 3600)
                {
                    boredomPoints = boredomPoints + 1;
                }
            }
            else if (usersVakType == "Kinesthetic")
            {
                if (theoryTime < 1200) // Low=3 , Medium=2 , High=1    Time is in seconds
                {
                    boredomPoints = boredomPoints + 3;
                }
                else if (theoryTime < 2000)
                {
                    boredomPoints = boredomPoints + 2;
                }
                else if (theoryTime >= 2000)
                {
                    boredomPoints = boredomPoints + 1;
                }
            }

            Boolean boredom;
            if (boredomPoints <=10) // Less than 10 points means user could be bored.
            {
                boredom = true;
            }
            else
            {
                boredom = false;
            }
            
            if (boredom==true) //elegxos gia boredom 
            {
                string message = "END of test. It took you " + testElapsedTime.ToString() + " seconds. But it looks like you might be bored! Play this Tic-Tac-Toe game for a bit and then come back.";
                string script = "window.onload = function(){ alert('" + message + "');location.href='Triliza.aspx'};";
                ClientScript.RegisterStartupScript(this.GetType(), "End of Test", script, true);
                //Response.Redirect("~/Triliza.aspx");
            }
            else
            {
                string message = "END of test. It took you " + testElapsedTime.ToString() + " seconds";
                string script = "window.onload = function(){ alert('" + message + "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "End of Test", script, true);
            }
        }
        else
        {
            setNextQuestion();
        }

    }

    public String[] getNextQuestion() //Returns a question from the database in a string array
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT * FROM Questions2 ORDER BY NEWID()"; //fetches all the questions in random order
        SqlDataReader rd = cmd.ExecuteReader();

        String[] nextQuestion = new string[6];
        if (rd.HasRows)
        {
            do
            {
                rd.Read();
            } while (UsedQuestionList.Contains(Int32.Parse(rd[0].ToString()))); // to find a not used question
            nextQuestion[0] = rd[0].ToString(); //id
            nextQuestion[1] = rd[1].ToString(); //question
            nextQuestion[2] = rd[2].ToString(); //correct answer
            nextQuestion[3] = rd[3].ToString();
            nextQuestion[4] = rd[4].ToString();
            nextQuestion[5] = rd[5].ToString();
        }
        rd.Close();
        con.Close();
        return nextQuestion;
    }

    public void setNextQuestion()
    {
        String[] nextQuestion = new string[6];
        nextQuestion = getNextQuestion(); //get the next question from DB
        QuestionID.Text = nextQuestion[0]; //set the secret label to the question's ID
        Question.Text = nextQuestion[1]; //set the question 


        List<Label> possibleLabels = new List<Label>();
        possibleLabels.Add(PossibleAnswer1);
        possibleLabels.Add(PossibleAnswer2);
        possibleLabels.Add(PossibleAnswer3);
        possibleLabels.Add(PossibleAnswer4);

        //put the correct answer in a random spot
        Label correctAnswerLabel = possibleLabels[r.Next(0, possibleLabels.Count)]; 
        correctAnswerLabel.Text = nextQuestion[2];
        possibleLabels.Remove(correctAnswerLabel);
        //put the wrong answers in other random spots
        for (int i=3; i<=5; i++){
            Label wrongAnswerLabel = possibleLabels[r.Next(0, possibleLabels.Count)];
            wrongAnswerLabel.Text = nextQuestion[i];
            possibleLabels.Remove(wrongAnswerLabel);
        }


        UsedQuestionList.Add(Int32.Parse(nextQuestion[0]));
        ViewState.Add("UsedQuestionList", UsedQuestionList);
    }

    public String getCorrectAnswerById(int id)
    {
        //SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        //con.Open();
        //SqlCommand cmd = con.CreateCommand();
        //cmd.CommandType = CommandType.Text;
        //cmd.CommandText = "SELECT * FROM Questions WHERE id=" + id;
        //SqlDataReader rd = cmd.ExecuteReader();
        //rd.Read();
        //String correctAnswer = rd[2].ToString();
        //return correctAnswer;

        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT * FROM Questions2 WHERE id=@id";
        //cmd.Prepare();
        //cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.Add("id", SqlDbType.Int).Value = id;
        cmd.Prepare();
        SqlDataReader rd = cmd.ExecuteReader();
        rd.Read();
        String correctAnswer = rd[2].ToString();
        rd.Close();
        con.Close();
        return correctAnswer;
    }

    public void registerScore(string username,int score)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        Int64 previousScore = checkForPreviousTestScore(username);
        if (previousScore < 0) //negative value suggest there was no previous time record on the DB, so we insert a new record
        {
            cmd.CommandText = "INSERT INTO UserScores(UserName,TestScore) VALUES (@username,@testscore);";
            cmd.Parameters.Add("@username", SqlDbType.NVarChar, 256).Value = username;
            cmd.Parameters.Add("@testscore", SqlDbType.BigInt).Value = score;
        }
        else
        {
            //if there was a previous record,we replace it with the new one no matter if it its faster/slower than old one
            cmd.CommandText = "UPDATE UserScores SET TestScore=@testscore WHERE UserName=@username;";
            cmd.Parameters.Add("@username", SqlDbType.NVarChar, 256).Value = username;
            cmd.Parameters.Add("@testscore", SqlDbType.BigInt).Value = score; //
        }
        cmd.Prepare();
        cmd.ExecuteNonQuery();
    }

    private int checkForPreviousTestScore(String username)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT * FROM UserScores WHERE UserName=@username";
        cmd.Parameters.Add("@username", SqlDbType.NVarChar, 256).Value = username;
        cmd.Prepare();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            if (rd[2] != DBNull.Value)
            {
                int testscore = (int)rd[2]; //2=score
                rd.Close();
                con.Close();
                return testscore;
            }
            else
            {
                return 0; // 0 suggesting the value was null 
            }
        }
        else
        {

            rd.Close();
            con.Close();
            return -1; // a negative number suggesting there was no previous record
        }
    }
}