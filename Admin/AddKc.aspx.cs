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

public partial class Admin_AddKc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.IsPostBack)
        {
            if (Request.Cookies["Login"] == null || Request.Cookies["Login"].Value.ToString() != "Admin")
            {
                Response.Write(MessageBox.ShowMessage("请选登录！", "../Login.aspx"));
            }
            this.DataBindDro();
        }
    }

    private void DataBindDro()
    {
        //绑定课程信息下拉列表
        AdminClass Acs = new AdminClass();
        DataSet ds = Acs.GetTeacherMessage();
        DropDownList1.DataSource = ds.Tables["mytb"].DefaultView;
        DropDownList1.DataTextField = "Te_Name";
        DropDownList1.DataValueField = "Te_Uid";
        DropDownList1.DataBind();
    }
    protected void btnOk_Click(object sender, EventArgs e)
    {
        string TeName = DropDownList1.SelectedItem.Text;
        string TeUid = DropDownList1.SelectedItem.Value.ToString();
        string sTitle = txtTitle.Text;
        AdminClass Acs = new AdminClass();
        int nPand = Acs.AddKeCheng(sTitle, TeName, TeUid);
        if (nPand == 1)
        {
            Response.Write(MessageBox.ShowMessage("课程信息添加成功！", "AddKc.aspx"));
        }
        else
        {
            Response.Write(MessageBox.ShowMessage("课程信息添加失败！"));
        }
    }
}
