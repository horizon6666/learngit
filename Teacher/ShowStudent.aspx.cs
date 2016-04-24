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

public partial class Teacher_ShowStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.IsPostBack)
        {
            if (Request.Cookies["Login"] == null || Request.Cookies["Login"].Value.ToString() != "Teacher")
            {
                Response.Write(MessageBox.ShowMessage("请选登录！", "../Login.aspx"));
            }
            string sUid = Request.QueryString["Uid"].ToString();
            StudentMessage Sme = new StudentMessage();
            StudentClass Stc = new StudentClass();
            Sme = Stc.GetUserMessage(sUid);
            this.txtUid.Text = Sme.sUid.ToString();
            this.txtName.Text = Sme.sName.ToString();
            string Sexs = Sme.sSex.ToString();
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
            this.DropDownList1.Text = Sme.sNianji.ToString();
            this.DropDownList2.Text = Sme.sBanji.ToString();
            this.txtHone.Text = Sme.sHone.ToString();
            this.txtEmail.Text = Sme.sEmail.ToString();
        }
    }
    protected void btnGet_Click(object sender, EventArgs e)
    {

    }
}
