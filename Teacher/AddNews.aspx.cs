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

public partial class Teacher_AddNews : System.Web.UI.Page
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
    protected void btnOk_Click(object sender, EventArgs e)
    {
        string sUid=Request.Cookies["Uid"].Value.ToString();
        string sDate=DateTime.Now.Year.ToString()+"-"+DateTime.Now.Month.ToString()+"-"+DateTime.Now.Day.ToString();
        TeacherClass Tcs = new TeacherClass();
        int nPand = Tcs.AddNews(TextBox1.Text, TextBox2.Text, sUid, FreeTextBox1.Text, sDate);
        if (nPand == 1)
        {
            Response.Write(MessageBox.ShowMessage("公告发布成功！", "AddNews.aspx"));
        }
        else
        {
            Response.Write(MessageBox.ShowMessage("公告发布失败！"));
        }
    }
}
