using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class FileUploading : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Click(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();
        if(fileupload.HasFile)
        {
            try
            {
                sb.AppendFormat("uploading file: {0}", fileupload.FileName);
                fileupload.SaveAs(@"C:\\Users\\Rahul\\Desktop\\WebSites\\WebSite1\\image\\"+ fileupload.FileName);
            }
            catch(Exception ee)
            {
                sb.Append("error");
                sb.Append("cannot upload file" + ee.Message);
            }
        }
    }
}