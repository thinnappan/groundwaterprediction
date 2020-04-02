using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class preprocessing : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
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
        MessageBox.Show("preproccess done");
        data();
        query = "delete from datasetdet where (district IS NULL) or (area IS NULL) or (soiltype IS NULL) or (agri IS NULL) or (urban IS NULL) or (industry IS NULL) or (resi IS NULL) or (avgrain_cm IS NULL) or (humi_per IS NULL) or (temp_c IS NULL) or (windflow_kmph IS NULL)";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        data();
        query = "delete from datasetdet where (bores IS NULL) or (availfeet IS NULL) or (avgtree IS NULL) or (river IS NULL) or (pond IS NULL) or (lake IS NULL) or (Approve IS NULL) or (Month IS NULL) or (Survey_id IS NULL)";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        GridView1.DataBind();
    }
}