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
            if (Request.Cookies["Login"] == null || Request.Cookies["Login"].Value.ToString() != "Student")
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
        StudentClass Stc = new StudentClass();
        int nPand = Stc.NewNotes(txtName.Text, txtEmail.Text, StrFormat.FormatIn(TextBox1.Text));
        if (nPand == 1)
        {
            Response.Write(MessageBox.ShowMessage("留言成功，请等待管理员回复！", "Notes.aspx"));
        }
        else
        {
            Response.Write(MessageBox.ShowMessage("留言失败，请与管理员联系！"));
        }
    }
}
