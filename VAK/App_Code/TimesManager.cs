using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Summary description for TimesManager
/// </summary>
public class TimesManager
{
    public TimesManager()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void registerTheoryTime(String username,Int64 time_in_seconds)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        Int64 previousTime = checkForPreviousTheoryRecord(username);
        if (previousTime < 0) //negative value suggest there was no previous time record on the DB, so we insert a new record
        {
            cmd.CommandText = "INSERT INTO UserTimes(UserName,TheoryTime) VALUES (@username,@theorytime);";
            cmd.Parameters.Add("@username", SqlDbType.NVarChar, 256).Value = username;
            cmd.Parameters.Add("@theorytime", SqlDbType.BigInt).Value = time_in_seconds;
        }
        else
        {
            cmd.CommandText = "UPDATE UserTimes SET TheoryTime=@theorytime WHERE UserName=@username;";
            cmd.Parameters.Add("@username", SqlDbType.NVarChar, 256).Value = username;
            cmd.Parameters.Add("@theorytime", SqlDbType.BigInt).Value = time_in_seconds + previousTime; //adding new time on top of previous time
        }
        cmd.Prepare();
        cmd.ExecuteNonQuery();
    }

    private Int64 checkForPreviousTheoryRecord(String username)
    {
        //SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        //con.Open();
        //SqlCommand cmd = con.CreateCommand();
        //cmd.CommandType = CommandType.Text;
        //cmd.CommandText = "SELECT * FROM UserTimes WHERE UserName=@username";
        //cmd.Parameters.Add("@username", SqlDbType.NVarChar, 256).Value = username;
        //cmd.Prepare();
        //SqlDataReader rd = cmd.ExecuteReader();
        //if (rd.HasRows)
        //{
        //    rd.Read();
        //    Int64 theorytime = (Int64) rd[2]; //2=Theorytime
        //    rd.Close();
        //    con.Close();
        //    return theorytime;
        //}
        //else
        //{
        //    rd.Close();
        //    con.Close();
        //    return -1 ; // a negative number suggesting there was no previous record
        //}

        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT * FROM UserTimes WHERE UserName=@username";
        cmd.Parameters.Add("@username", SqlDbType.NVarChar, 256).Value = username;
        cmd.Prepare();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            if (rd[2] != DBNull.Value)
            {
                Int64 theorytime = (Int64)rd[2]; //2=Theorytime
                rd.Close();
                con.Close();
                return theorytime;
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

    public void registerTestTime(String username, Int64 time_in_seconds)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        Int64 previousTime = checkForPreviousTestRecord(username);
        if (previousTime < 0) //negative value suggest there was no previous time record on the DB, so we insert a new record
        {
            cmd.CommandText = "INSERT INTO UserTimes(UserName,TestTime) VALUES (@username,@testtime);";
            cmd.Parameters.Add("@username", SqlDbType.NVarChar, 256).Value = username;
            cmd.Parameters.Add("@testtime", SqlDbType.BigInt).Value = time_in_seconds;
        }
        else
        {
            //if there was a previous record,we replace it with the new one no matter if it its faster/slower than old one
            cmd.CommandText = "UPDATE UserTimes SET TestTime=@testtime WHERE UserName=@username;";
            cmd.Parameters.Add("@username", SqlDbType.NVarChar, 256).Value = username;
            cmd.Parameters.Add("@testtime", SqlDbType.BigInt).Value = time_in_seconds; //
        }
        cmd.Prepare();
        cmd.ExecuteNonQuery();
    }

    private Int64 checkForPreviousTestRecord(String username)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT * FROM UserTimes WHERE UserName=@username";
        cmd.Parameters.Add("@username", SqlDbType.NVarChar, 256).Value = username;
        cmd.Prepare();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            if (rd[3] != DBNull.Value)
            {
                Int64 testtime = (Int64)rd[3]; //2=Theorytime
                rd.Close();
                con.Close();
                return testtime;
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

    public Int64 getTheoryTime(String username)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT * FROM UserTimes WHERE UserName=@username";
        cmd.Parameters.Add("@username", SqlDbType.NVarChar, 256).Value = username;
        cmd.Prepare();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            if (rd[2] != DBNull.Value)
            {
                Int64 theorytime = (Int64)rd[2]; //2=Theorytime
                rd.Close();
                con.Close();
                return theorytime;
            }
            else
            {
                return -2; // a negative number suggesting the value was null 
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