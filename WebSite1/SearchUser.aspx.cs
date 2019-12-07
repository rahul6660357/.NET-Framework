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

public partial class SearchUser : System.Web.UI.Page
{
    MySqlCommand cmd = null;
    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    MySqlConnection con = new MySqlConnection("Data Source=localhost;port=3306;Initial Catalog=DOTNET;User Id=root;password=1234");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            gvbind();
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        cmd = new MySqlCommand();

        cmd.Parameters.Add("@email", MySqlDbType.VarChar).Value = txtb1.Text.Trim();

        cmd.Connection = con;
        cmd.CommandText = "select * from stu_login where email =  '"+txtb1.Text+"' ";
        con.Open();
        MySqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            label.Text = "Details of Users with First Name - " + txtb1.Text;

            //   DataList1.DataSource = reader;
            //  DataList1.DataBind();
            gv2.DataSource = reader;
            gv2.DataBind();
            txtbox1.Text = reader["email"].ToString();
            txtbox2.Text = reader["password"].ToString();
            TextBox1.Text = reader["st_id"].ToString();
            
        }
        else
        {
            label.Text = "User with First Name - " + txtb1.Text + " not found!";
                    }

        con.Close();
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        cmd = new MySqlCommand();
        
        cmd.Connection = con;
        try
        {
            cmd.CommandText = "update stu_login set email= @email, password= @password where st_id = '" + TextBox1.Text + "'";


            cmd.Parameters.Add("@email", MySqlDbType.VarChar).Value = txtbox1.Text.Trim();
            cmd.Parameters.Add("@password", MySqlDbType.VarChar).Value = txtbox2.Text.Trim();
            con.Open();
            int k = cmd.ExecuteNonQuery();
            if (k > 0)
            {
                Lblmsg.Text = "YES Registered";
            }
            else
            {
                Lblmsg.Text = "NO";
            }
            con.Close();
        }
        catch(Exception ee)
        {
            Lblmsg.Text ="Error:-"+  ee.Message;
        }
    }

    public void gvbind()
    {
        con.Open();
        MySqlCommand cmdd = new MySqlCommand("select * from stu_login ", con);
        MySqlDataAdapter da = new MySqlDataAdapter(cmdd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gv2.DataSource = ds;
        gv2.DataBind();
        ViewState["Email"] = ds;
        ViewState["sortdr"] = "Asc";
        con.Close();
       
    }



    protected void editgv(object sender, GridViewEditEventArgs e)
    {
        gv2.EditIndex = e.NewEditIndex;
        gvbind();
    }
    protected void rowupdate(object sender, GridViewUpdateEventArgs e)
    {
        int userid = Convert.ToInt32(gv2.DataKeys[e.RowIndex].Value.ToString());
        GridViewRow row = gv2.Rows[e.RowIndex];
        string name = (row.Cells[0].Controls[0] as TextBox).Text;
        TextBox email = (TextBox)row.Cells[1].Controls[0];
         TextBox password = (TextBox)row.Cells[2].Controls[0];
          gv2.EditIndex = -1;
        cmd = new MySqlCommand();
        cmd.Connection = con;
          Lblmsg.Text = email.Text + password.Text+""+userid;
         cmd.CommandText= "update stu_login set email= @email, password= @password where st_id = '" + userid + "'";

        cmd.Parameters.Add("@email", MySqlDbType.VarChar).Value = email.Text;
        cmd.Parameters.Add("@password", MySqlDbType.VarChar).Value = password.Text;

        //SqlCommand cmd = new SqlCommand("SELECT * FROM detail", conn);  
         con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        gvbind();
    }



    protected void Onrowdelete(object sender, GridViewDeleteEventArgs e)
    {
        int userid = Convert.ToInt32(gv2.DataKeys[e.RowIndex].Value.ToString());
        GridViewRow row = (GridViewRow)gv2.Rows[e.RowIndex];
        con.Open();
        MySqlCommand cmd = new MySqlCommand("delete from stu_login where st_id = '"+ userid + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        gvbind();
    }

    protected void Onrowcanceling(object sender, GridViewCancelEditEventArgs e)
    {
        gv2.EditIndex = -1;
        gvbind();
    }
}