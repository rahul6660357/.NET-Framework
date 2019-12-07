using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class SignUpPage : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    //Data Source=localhost;port=3306;Initial Catalog=SampleDB;User Id=root;password=1212 
    //MySqlConnection con = new MySqlConnection(constr);
    MySqlConnection con = new MySqlConnection("Data Source=localhost;port=3306;Initial Catalog=DOTNET;User Id=root;password=1234");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try {
            MySqlCommand cmd = new MySqlCommand("insert into stu_login(email,password,status) values('" + EmailID.Text.Trim() + "','" + TextBox2.Text.Trim() + "','deactive')", con);
            cmd.Connection = con;
            con.Open();
            int k = cmd.ExecuteNonQuery();
            if (k > 0)
            {
                lblMsg.Text = "YES Registered";
            }
            else
            {
                lblMsg.Text = "NO";
            }
            con.Close();
        }
        catch (Exception  ee) {
            lblMsg.Text = "" + ee;
        
        }
       
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        try
        {
            MySqlDataAdapter sda = new MySqlDataAdapter("Select * from stu_login", con);
            sda.Fill(dt);
            dt.AcceptChanges();
            DataView dv = new DataView(dt);

            GridView1.DataSource = dv;
            GridView1.DataBind();
        }
        catch (Exception ee)
        {
            lblMsg.Text = "" + ee;

        }

    }
}