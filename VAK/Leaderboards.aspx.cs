using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Leaderboards : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        StringBuilder table = new StringBuilder();
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT * FROM UserScores ORDER BY Testscore DESC";
        SqlDataReader rd = cmd.ExecuteReader();
        //TO DO add styles to css instead of inline
        table.Append("<table style='border: 1px solid black; border-collapse: collapse; width: 50 %;'>");
        table.Append("<tr style='background-color: #f2f2f2;'><th style='border: 1px solid #808080; padding: 8px; padding-top: 12px; padding-bottom: 12px; text-align: left; background-color: #0080ff; color: white;'>ID</th><th style='border: 1px solid #808080; padding: 8px; padding-top: 12px; padding-bottom: 12px; text-align: left; background-color: #0080ff; color: white;'>Όνομα</th><th style='border: 1px solid #808080; padding: 8px; padding-top: 12px; padding-bottom: 12px; text-align: left; background-color: #0080ff; color: white;'>Βαθμολογία</th></tr>");

        if (rd.HasRows)
        {
            while (rd.Read())
            {
                table.Append("<tr style='background-color: #f2f2f2;'> ");
                table.Append("<td style='border: 1px solid #808080; padding: 8px;'>" + rd[0] + "</td>");
                table.Append("<td style='border: 1px solid #808080; padding: 8px;'>" + rd[1] + "</td>");
                table.Append("<td style='border: 1px solid #808080; padding: 8px; text-align: right;'>" + rd[2] + "</td>");
            }
        }
        table.Append("</table>");
        LeaderboardsTable.Controls.Add(new Literal { Text = table.ToString() });
        rd.Close();
    }
}