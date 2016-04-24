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

public partial class Reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGet_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void btnOk_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
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
            string NowDates = DateTime.Now.Year.ToString() + "/" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString();
            //注册

            StudentClass Stc=new StudentClass();
            int nPand = Stc.UserReg(this.txtUid.Text, this.txtPwd2.Text, txtName.Text, Sexs, DropDownList1.SelectedItem.Text, DropDownList2.SelectedItem.Text, txtHone.Text, txtEmail.Text, NowDates);
            if (nPand == 1)
            {
                Response.Write(MessageBox.ShowMessage("注册成功，请等待管理员认证！", "Login.aspx"));
            }
            else
            {
                Response.Write(MessageBox.ShowMessage("注册失败，请与管理员联系！"));
            }
        }
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string sUid = args.Value.ToString();
        StudentClass Stc = new StudentClass();
        string Strs = Stc.StudentReg(sUid);
        if (Strs == "")
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
}
