using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Student_MyFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.IsPostBack)
        {
            if (Request.Cookies["Login"] == null || Request.Cookies["Login"].Value.ToString() != "Teacher")
            {
                Response.Write(MessageBox.ShowMessage("请选登录！", "../Login.aspx"));
            }
          
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnOk_Click(object sender, EventArgs e)
    {
        int nID=Convert.ToInt32(Request.QueryString["ID"].ToString());
        AdminClass Acs = new AdminClass();
        int nPand = Acs.ToNotes(TextBox1.Text, nID);
        if (nPand == 1)
        {
            Response.Write(MessageBox.ShowMessage("留言回复成功！", "EditNotes.aspx"));
        }
        else
        {
            Response.Write(MessageBox.ShowMessage("留言回复失败！"));
        }
    }
}
