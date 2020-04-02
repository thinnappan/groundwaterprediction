using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections;
public partial class charts : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    ArrayList soil = new ArrayList();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(connstring);
        soil.Add("Silty");
        soil.Add("Loamy");
        soil.Add("Clay Mixture");
        for (int i = 0; i < 3; i++)
        {
            data();
            query = "select count(soiltype) from datasetdet where soiltype='" + soil[i].ToString() + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                data();
                query = "update soilchart set nodata=" + rd[0] + " where soiltype='" + soil[i].ToString() + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            rd.Close();
            con.Close();
        }
       
        Chart1.DataBind();
    }
    string connstring;
    public void data()
    {
        connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    int count = 0;
    public void disagri()
    {
        data();
        query = "delete from disborechart";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        con = new SqlConnection(connstring);
        con.Open();
        //data();
        query = "select DISTINCT(district) from datasetdet where agri='yes'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            //data();
           // con.Close();
            con = new SqlConnection(connstring);
            con.Open();
            query = "insert into disborechart(type,district)values('Agri','" + rd[0] + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            count = count + 1;
        }
        rd.Close();
        con.Close();

        for (int i = 1; i <= count; i++)
        {
           
            con.Open();
            query = "select SUM(bores) from datasetdet where district='" + i + "' and agri='yes'";
            cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
               
                query = "update disborechart set nobores=" + dr[0] + " where district='" + i + "' and type='Agri'";
                //con.Open();
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                
            }
            dr.Close();
            con.Close();   
        }
       
        
    }

    public void disurban()
    {
        data();
        query = "delete from disborechart";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        con = new SqlConnection(connstring);
        con.Open();
        //data();
        query = "select DISTINCT(district) from datasetdet where urban='yes'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            //data();
            // con.Close();
            con = new SqlConnection(connstring);
            con.Open();
            query = "insert into disborechart(type,district)values('urban','" + rd[0] + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            count = count + 1;
        }
        rd.Close();
        con.Close();

        for (int i = 1; i <= count; i++)
        {

            con.Open();
            query = "select SUM(bores) from datasetdet where district='" + i + "' and urban='yes'";
            cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                query = "update disborechart set nobores=" + dr[0] + " where district='" + i + "' and type='urban'";
                //con.Open();
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

            }
            dr.Close();
            con.Close();
        }


    }
    public void disindustry()
    {
        data();
        query = "delete from disborechart";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        con = new SqlConnection(connstring);
        con.Open();
        //data();
        query = "select DISTINCT(district) from datasetdet where industry='yes'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            //data();
            // con.Close();
            con = new SqlConnection(connstring);
            con.Open();
            query = "insert into disborechart(type,district)values('industry','" + rd[0] + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            count = count + 1;
        }
        rd.Close();
        con.Close();

        for (int i = 1; i <= count; i++)
        {

            con.Open();
            query = "select SUM(bores) from datasetdet where district='" + i + "' and industry='yes'";
            cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                query = "update disborechart set nobores=" + dr[0] + " where district='" + i + "' and type='industry'";
                //con.Open();
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

            }
            dr.Close();
            con.Close();
        }


    }
    public void disresi()
    {
        data();
        query = "delete from disborechart";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        con = new SqlConnection(connstring);
        con.Open();
        //data();
        query = "select DISTINCT(district) from datasetdet where resi='yes'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            //data();
            // con.Close();
            con = new SqlConnection(connstring);
            con.Open();
            query = "insert into disborechart(type,district)values('resi','" + rd[0] + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            count = count + 1;
        }
        rd.Close();
        con.Close();

        for (int i = 1; i <= count; i++)
        {

            con.Open();
            query = "select SUM(bores) from datasetdet where district='" + i + "' and resi='yes'";
            cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                query = "update disborechart set nobores=" + dr[0] + " where district='" + i + "' and type='resi'";
                //con.Open();
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

            }
            dr.Close();
            con.Close();
        }


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Agri")
        {
            disagri();
        }
        else if (DropDownList1.SelectedItem.Text == "Urban")
        {
            disurban();
        }
        else if (DropDownList1.SelectedItem.Text == "Industry")
        {
            disindustry();
        }
        else if (DropDownList1.SelectedItem.Text == "Residential")
        {
            disresi();
        }
        Chart6.DataBind();
    }
}