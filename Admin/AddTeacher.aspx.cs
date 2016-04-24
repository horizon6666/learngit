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

public partial class Admin_AddTeacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.IsPostBack)
        {
            if (Request.Cookies["Login"] == null || Request.Cookies["Login"].Value.ToString() != "Admin")
            {
                Response.Write(MessageBox.ShowMessage("请选登录！", "../Login.aspx"));
            }
        }
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string sUid = args.Value.ToString();
        AdminClass Acs = new AdminClass();
        string Strs = Acs.TeacherUidPd(sUid);
        if (Strs == "")
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            AdminClass Acs = new AdminClass();
            int nPand = Acs.AddTeacher(txtUid.Text, txtPass2.Text, txtName.Text);
            if (nPand == 1)
            {
                Response.Write(MessageBox.ShowMessage("教师添加成功！", "AddTeacher.aspx"));
            }
            else
            {
                Response.Write(MessageBox.ShowMessage("教师添加失败，请与管理员联系！"));
            }
        }
    }
}
