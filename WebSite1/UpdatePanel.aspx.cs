using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class UpdatePanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        string time = DateTime.Now.ToLongTimeString();
        lbl1.Text = "inside the update panel:- "+time;

    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        string time = DateTime.Now.ToLongTimeString();
        lbl2.Text = "outside the update panel:- " + time;
    }

    protected void LnkBtnBooks_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(3000);
        DirectoryInfo dr = new DirectoryInfo(Server.MapPath("~/Books"));
        FileInfo[] ff = dr.GetFiles("*.jpg");
        string[] arpath = new string[ff.Length];
        for(int i=0;i<arpath.Length;i++)
            {
            arpath[i] = "~/Books/" + ff[i].Name;
            
            
            }
        Repeater1.DataSource= arpath;
        Repeater1.DataBind();

    }
}