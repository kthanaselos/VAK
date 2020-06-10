using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Summary description for Class1
/// </summary>
public class UserPreferences
{
    public UserPreferences() //cosntructor
    {
        
    }

    public String getUsersVakType(String username)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT * FROM AspNetUsers WHERE UserName=@username";
        cmd.Parameters.Add("@username", SqlDbType.NVarChar,256).Value = username;
        cmd.Prepare();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            String VakType = rd[12].ToString();
            rd.Close();
            con.Close();
            return VakType;
        }
        else
        {
            rd.Close();
            con.Close();
            return null;
        }
    }

    public String getUsersPastKnowledge(String username)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT * FROM AspNetUsers WHERE UserName=@username";
        cmd.Parameters.Add("@username", SqlDbType.NVarChar, 256).Value = username;
        cmd.Prepare();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            String VakType = rd[13].ToString();
            rd.Close();
            con.Close();
            return VakType;
        }
        else
        {
            rd.Close();
            con.Close();
            return null;
        }
    }

    /* Non Prepared Statements
    protected String getUsersVakType()
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "SELECT * FROM AspNetUsers WHERE UserName='" + User.Identity.Name + "'";
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            String VakType = rd[12].ToString();
            rd.Close();
            con.Close();
            return VakType;
        }
        else
        {
            rd.Close();
            con.Close();
            return null;
        }
    }

    protected String getUsersPastKnowledge()
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "SELECT * FROM AspNetUsers WHERE UserName='" + User.Identity.Name + "'";
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            String VakType = rd[13].ToString();
            rd.Close();
            con.Close();
            return VakType;
        }
        else
        {
            rd.Close();
            con.Close();
            return null;
        }
    } 
    */
}