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
public partial class groundwaterpredic : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    double rainfall, tree;
    double bore, well;
    double dbrainfall, dbtree, dbbore, dbwell;
    string agri, urban, undustry, residential, a_type;
    ArrayList predic_feet = new ArrayList();
    int idd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Timer1.Enabled = true;
        imgBanner.Visible = true;
        data();
        query = "delete from predic";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        if (droptype.SelectedItem.Text == "Agri")
        {
            a_type = "agri";

        }
        else if (droptype.SelectedItem.Text == "Urban")
        {
            a_type = "urban";

        }
        else if (droptype.SelectedItem.Text == "Industry")
        {
            a_type = "industry";
        }
        else if (droptype.SelectedItem.Text == "Residential")
        {
            a_type = "resi";
        }
        rainfall = ((Convert.ToDouble(txtrainfallfrom.Text)) + (Convert.ToDouble(txtrainfallto.Text))) / 2;
        tree = ((Convert.ToDouble(txtreefrom.Text)) + (Convert.ToDouble(txttreeto.Text))) / 2;
        bore = ((Convert.ToDouble(txtborefrom.Text)) + (Convert.ToDouble(txtboreto.Text))) / 2;
        //  well = ((Convert.ToDouble(txtwellfrom.Text)) + (Convert.ToDouble(txtwellto.Text))) / 2;
        data();
        query = "select * from datasetdet where river=" + txtnoriver.Text + " and pond=" + txtnopond.Text + " and lake=" + txtnolake.Text + " and soiltype='" + dropsand.SelectedItem.Text + "' and " + a_type + "='yes' and (avgrain_cm >= '" + txtrainfallfrom.Text + "' and avgrain_cm <= '" + txtrainfallto.Text + "') and (avgtree >= '" + txtreefrom.Text + "' and avgtree <= '" + txttreeto.Text + "') and (bores >= '" + txtborefrom.Text + "' and bores <= '" + txtboreto.Text + "')";
        //query = "select * from datasetdet where soiltype='" + dropsand.SelectedItem.Text + "' and " + a_type + "='yes' and (avgrain_cm >= '" + txtrainfallfrom.Text + "' and avgrain_cm <= '" + txtrainfallto.Text + "') and (avgtree >= '" + txtreefrom.Text + "' and avgtree <= '" + txttreeto.Text + "') and (bores >= '" + txtborefrom.Text + "' and bores <= '" + txtboreto.Text + "') and (wells >= '" + txtwellfrom.Text + "' and wells <= '" + txtwellto.Text + "')";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            idd = Convert.ToInt32(rd[17]);
            dbrainfall = Convert.ToDouble(rd[7]);
            dbtree = Convert.ToDouble(rd[13]);
            dbbore = Convert.ToDouble(rd[11]);
            //  dbwell = Convert.ToDouble(rd[12]);

            //double final = Math.Abs(Euclidean(dbrainfall, dbtree, dbbore, dbwell, rainfall, tree, bore, well));
            double final = Math.Abs(Euclidean(dbrainfall, dbtree, dbbore, rainfall, tree, bore));
            data();
            query = "insert into predic(district,area,soiltype,agri,urban,industry,resi,avgrain_cm,humi_per,temp_c,windflow_kmph,bores,availfeet,avgtree,river,pond,lake,Id,eudist)values(" + rd[0] + ",'" + rd[1].ToString() + "','" + rd[2].ToString() + "','" + rd[3].ToString() + "','" + rd[4].ToString() + "','" + rd[5].ToString() + "','" + rd[6].ToString() + "','" + rd[7].ToString() + "'," + rd[8] + "," + rd[9] + "," + rd[10] + "," + rd[11] + "," + rd[12] + "," + rd[13] + "," + rd[14] + "," + rd[15] + "," + rd[16] + "," + rd[20] + "," + final + ")";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        rd.Close();
        con.Close();

        data();
        query = "select TOP(3) availfeet from predic order by eudist";
        cmd = new SqlCommand(query, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            predic_feet.Add(dr[0]);
        }
        dr.Close();
        con.Close();
        Panel1.Visible = true;
        if (predic_feet.Count == 3)
        {
            lblfeet1.Text = predic_feet[0].ToString();
            lblfeet2.Text = predic_feet[1].ToString();
            lblfeet3.Text = predic_feet[2].ToString();
            lblavgpredictedfeet.Text = (((Convert.ToInt32(lblfeet1.Text)) + (Convert.ToInt32(lblfeet2.Text)) + (Convert.ToInt32(lblfeet3.Text))) / 3).ToString();
        }
        else if (predic_feet.Count == 2)
        {
            lblfeet1.Text = predic_feet[0].ToString();
            lblfeet2.Text = predic_feet[1].ToString();
            lblavgpredictedfeet.Text = (((Convert.ToInt32(lblfeet1.Text)) + (Convert.ToInt32(lblfeet2.Text))) / 2).ToString();

        }
        else if (predic_feet.Count == 1)
        {
            lblfeet1.Text = predic_feet[0].ToString();
            lblavgpredictedfeet.Text = lblfeet1.Text;
        }
        Chart1.Visible = true;

    }
    //public static double Euclidean(double r1, double t1, double b1, double w1, double r2, double t2, double b2, double w2)
    //{
    //    return Math.Sqrt(((r1 - r2) * (r1 - r2)) + ((t1 - t2) * (t1 - t2)) + ((b1 - b2) * (b1 - b2)));
    //}

    public static double Euclidean(double r1, double t1, double b1, double r2, double t2, double b2)
    {
        return Math.Sqrt(((r1 - r2) * (r1 - r2)) + ((t1 - t2) * (t1 - t2)) + ((b1 - b2) * (b1 - b2)));
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Response.Write("<script>alert('Data inserted successfully')</script>");
        // Response.Write("<script>alert(<img src='url('Images/giphy.gif')'/>)</script>");
    }
    protected void gettickvalue(object sender, EventArgs e)
    {
        imgBanner.Visible = false;
        pup.Dispose();

        lblregain.Visible = true;
        lblprocess.Visible = false;
        Timer1.Dispose();
    }
    protected void MycloseWindow(object sender, EventArgs e)
    {
        Panel1.Visible = true;

    }
}
