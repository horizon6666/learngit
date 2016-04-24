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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnLogin.Attributes.Add("onclick", "return check();");

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string sPand = droSf.SelectedItem.Value.ToString();

        switch (sPand)
        {
            case "学生":
                StudentLogin();
                break;
            case "教师":
                TeacherLogin();
                break;
            default:
                AdminLogin();
                break;
        }
    }

    //......................................................//

    private void StudentLogin()
    {
        //学生登录验证
        string sUid = txtUid.Text;
        string sPwd = txtPwd.Text;
        StudentClass Stc = new StudentClass();
        string Strs = Stc.LoginPd(sUid, sPwd);
        if (Strs == "")
        {
            Response.Write(MessageBox.ShowMessage("用户密码错误或是未经过管理员认证,登录失败！"));
        }
        else
        {
            Response.Cookies["Login"].Value = "Student";
            Response.Cookies["Uid"].Value = sUid.ToString();
            Response.Redirect("Student/Mains.aspx");
        }
    }
    //........................//
    private void TeacherLogin()
    {
        //教师登录验证
        string sUid = txtUid.Text;
        string sPwd = txtPwd.Text;
        TeacherClass Tcs = new TeacherClass();
        string Strs = Tcs.TeacherLogin(sUid, sPwd);
        if (Strs == "")
        {
            Response.Write(MessageBox.ShowMessage("用户密码错误,登录失败！"));
        }
        else
        {
            Response.Cookies["Login"].Value = "Teacher";
            Response.Cookies["Uid"].Value = sUid.ToString();
            Response.Redirect("Teacher/Mains.aspx");
        }
    }
    //........................//
    private void AdminLogin()
    {
        //管理员登录验证
        string sUid = txtUid.Text;
        string sPwd = txtPwd.Text;
        AdminClass Acs = new AdminClass();
        string Strs = Acs.AdminLogin(sUid, sPwd);
        if (Strs == "")
        {
            Response.Write(MessageBox.ShowMessage("用户密码错误,登录失败！"));
        }
        else
        {
            Response.Cookies["Login"].Value = "Admin";
            Response.Cookies["Uid"].Value = sUid.ToString();
            Response.Redirect("Admin/Mains.aspx");
        }
    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reg.aspx");
    }
}
