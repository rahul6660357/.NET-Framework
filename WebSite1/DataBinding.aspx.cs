using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataBinding : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) {
            string[] arIndia = new string[] { "New Delhi", "New Kolkata", "New Pudhuchery", "New Chennai", "New Bangaluru", "New Thiruvananthapuram", "New Kochi", "New Mumbai" };
            Repeater1.DataSource = arIndia;
            Repeater1.DataBind();
            dataList1.DataSource = arIndia;
            dataList1.DataBind();
            gv1.DataSource = arIndia;
            gv1.DataBind();
            Label1.Text = gv1.Rows.Count.ToString();

        }
    }
}