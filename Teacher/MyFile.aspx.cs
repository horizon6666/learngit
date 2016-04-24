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

public partial class Teacher_MyFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.IsPostBack)
        {
            if (Request.Cookies["Login"] == null || Request.Cookies["Login"].Value.ToString() != "Teacher")
            {
                Response.Write(MessageBox.ShowMessage("请选登录！", "../Login.aspx"));
            }
            string sUid = Request.Cookies["Uid"].Value.ToString();
            TeacherClass Tcs = new TeacherClass();
            TeacherMessage Tcm = new TeacherMessage();
            Tcm = Tcs.GetTeacherMessage(sUid);
            this.txtUid.Text = Tcm.sUid.ToString();
            txtName.Text = Tcm.sName.ToString();
            string Sexs = Tcm.sSex.ToString();
            if (Sexs == "男")
            {
                RadioButton1.Checked = true;
                RadioButton2.Checked = false;
            }
            else
            {
                RadioButton1.Checked = false;
                RadioButton2.Checked = true;
            }
            DropDownList2.Text = Tcm.sZhicheng.ToString();
            txtHone.Text = Tcm.sHone.ToString();
            txtEmail.Text = Tcm.sEmail.ToString();
        }
    }
    protected void btnOk_Click(object sender, EventArgs e)
    {
        if (this.Page.IsValid)
        {
            string Sexs = "";
            if (RadioButton1.Checked)
            {
                Sexs = "男";
            }
            else
            {
                Sexs = "女";
            }
            TeacherClass Tcs = new TeacherClass();
            int nPand = Tcs.UpdateTeacherMessage(txtUid.Text, txtPwd2.Text, txtName.Text, Sexs, DropDownList2.SelectedItem.Text, txtHone.Text, txtEmail.Text);
            if (nPand == 1)
            {
                Response.Write(MessageBox.ShowMessage("资料更新成功！", "MyFile.aspx"));
            }
            else
            {
                Response.Write(MessageBox.ShowMessage("资料更新失败，请与管理员联系！"));
            }
        }
    }
}
