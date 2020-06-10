using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Triliza : Page
{
    int score1 = 0;
    int score2 = 0;
    bool player1 = true;
    bool player2 = false;
    Random r = new Random();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void botplay()
    {
        List<Button> buttons = new List<Button>();
        buttons.Add(Button1);
        buttons.Add(Button2);
        buttons.Add(Button3);
        buttons.Add(Button4);
        buttons.Add(Button5);
        buttons.Add(Button6);
        buttons.Add(Button7);
        buttons.Add(Button8);
        buttons.Add(Button9);

        //int countx = 0;
        //int counto = 0;

        //foreach (button btn in buttons)
        //{
        //    if (btn.text == "x")
        //    {
        //        countx++;
        //    }
        //    else if (btn.text == "o")
        //    {
        //        counto++;
        //    }
        //}

        //if (countx != counto)
        //{ // an den einai isa paizei to bot
        //    button rbtn;
        //    do
        //    {
        //        rbtn = buttons[r.next(0, buttons.count)];
        //    } while (rbtn.enabled == false);
        //    rbtn.text = "o";
        //    rbtn.enabled = false;
        //}

        foreach (Button btn in buttons.ToList())
        {
            if (btn.Enabled == false)
            {
                buttons.Remove(btn);
            }
        }

        if (buttons.Count > 1)
        {
            Button rbtn = buttons[r.Next(0, buttons.Count)];
            rbtn.Text = "O";
            rbtn.Enabled = false;
            Check_Win();
        }
    }

    public void button1_Click(object sender, EventArgs e)
    {
        Button1.Text = "X";
        Button1.Enabled = false;
        if (!Check_Win())
        {
            botplay();
        }
    }
    public void button2_Click(object sender, EventArgs e)
    {
        Button2.Text = "X";
        Button2.Enabled = false;
        if (!Check_Win())
        {
            botplay();
        }
    }
    public void button3_Click(object sender, EventArgs e)
    {
        Button3.Text = "X";
        Button3.Enabled = false;
        if (!Check_Win())
        {
            botplay();
        }
    }
    public void button4_Click(object sender, EventArgs e)
    {
        Button4.Text = "X";
        Button4.Enabled = false;
        if (!Check_Win())
        {
            botplay();
        }
    }
    public void button5_Click(object sender, EventArgs e)
    {
        Button5.Text = "X";
        Button5.Enabled = false;
        if (!Check_Win())
        {
            botplay();
        }
    }
    public void button6_Click(object sender, EventArgs e)
    {
        Button6.Text = "X";
        Button6.Enabled = false;
        if (!Check_Win())
        {
            botplay();
        }
    }
    public void button7_Click(object sender, EventArgs e)
    {
        Button7.Text = "X";
        Button7.Enabled = false;
        if (!Check_Win())
        {
            botplay();
        }
    }
    public void button8_Click(object sender, EventArgs e)
    {
        Button8.Text = "X";
        Button8.Enabled = false;
        if (!Check_Win())
        {
            botplay();
        }
    }
    public void button9_Click(object sender, EventArgs e)
    {
        Button9.Text = "X";
        Button9.Enabled = false;
        if (!Check_Win())
        {
            botplay();
        }
    }
    public void Reset_Click(object sender,EventArgs e)
    {
        List<Button> buttons = new List<Button>();
        buttons.Add(Button1);
        buttons.Add(Button2);
        buttons.Add(Button3);
        buttons.Add(Button4);
        buttons.Add(Button5);
        buttons.Add(Button6);
        buttons.Add(Button7);
        buttons.Add(Button8);
        buttons.Add(Button9);
        foreach (Button btn in buttons)
        {
            btn.Enabled = true;
            btn.Text = "--";
        }
    }
    public bool Check_Win()
    {
        if ((Button1.Text=="X" && Button2.Text=="X" && Button3.Text=="X") || (Button4.Text == "X" && Button5.Text == "X" && Button6.Text=="X") || (Button7.Text == "X" && Button8.Text=="X" && Button9.Text == "X") || (Button1.Text == "X" && Button5.Text == "X" && Button9.Text == "X") || (Button3.Text == "X" && Button5.Text == "X" && Button7.Text== "X") || (Button1.Text == "X" && Button4.Text == "X" && Button7.Text == "X") || (Button2.Text == "X" && Button5.Text == "X" && Button8.Text == "X") || (Button3.Text == "X" && Button6.Text == "X" && Button9.Text == "X"))
        {
            //Response.Write(@"<script language='javascript'>alert('You won!')</script>");
            string message = "You have won! Now it might be a good time to get back to studying.";
            string script = "window.onload = function(){ alert('" + message + "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "WinnerMessage", script, true);
            return true;
        }
        else if ((Button1.Text == "O" && Button2.Text == "O" && Button3.Text == "O") || (Button4.Text == "O" && Button5.Text == "O" && Button6.Text == "O") || (Button7.Text == "O" && Button8.Text == "O" && Button9.Text == "O") || (Button1.Text == "O" && Button5.Text == "O" && Button9.Text == "O") || (Button3.Text == "O" && Button5.Text == "O" && Button7.Text == "O") || (Button1.Text == "O" && Button4.Text == "O" && Button7.Text == "O") || (Button2.Text == "O" && Button5.Text == "O" && Button8.Text == "O") || (Button3.Text == "O" && Button6.Text == "O" && Button9.Text == "O"))
        {
            string message = "You have lost! Reset and try again.";
            string script = "window.onload = function(){ alert('" + message + "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "WinnerMessage", script, true);
            //Response.Write(@"<script language='javascript'>alert('Winner is bot')</script>");
            return true;
        }
        else
        {
            return false;
        }
    }
}
