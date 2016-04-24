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

public partial class Admin_EditPass : System.Web.UI.Page
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
    protected void btnGet_Click(object sender, EventArgs e)
    {
      
    }
    protected void btnOk_Click(object sender, EventArgs e)
    {
       
    }
    protected void btnOk_Click1(object sender, EventArgs e)
    {
        string sUid = Request.Cookies["Uid"].Value.ToString();
        string sPass = txtPass2.Text;
        AdminClass Acs = new AdminClass();
        int nPand = Acs.EditPass(sUid, sPass);
        if (nPand == 1)
        {
            Response.Write(MessageBox.ShowMessage("密码更改成功！", "EditPass.aspx"));
        }
        else
        {
            Response.Write(MessageBox.ShowMessage("密码更改失败,请与管理员联系！"));
        }
    }
}
