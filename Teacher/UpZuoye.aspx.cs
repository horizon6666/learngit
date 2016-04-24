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

public partial class Teacher_UpZuoye : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.IsPostBack)
        {
            if (Request.Cookies["Login"] == null || Request.Cookies["Login"].Value.ToString() != "Teacher")
            {
                Response.Write(MessageBox.ShowMessage("请选登录！", "../Login.aspx"));
            }
            //绑定课程信息下拉列表
            StudentClass Stc = new StudentClass();
            DataSet ds = Stc.GetKecheng();
            DropDownList1.DataSource = ds.Tables["mytb"].DefaultView;
            DropDownList1.DataTextField = "Kc_Title";
            DropDownList1.DataValueField = "Kc_ID";
            DropDownList1.DataBind();
        }
    }
    protected void btnOk_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //添加新作业方法
            int nID=Convert.ToInt32(DropDownList1.SelectedItem.Value.ToString());
            string sUid = Request.Cookies["Uid"].Value.ToString();
            string NowDate = DateTime.Now.Year.ToString() + "/" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString();
            DateTime ToDate = Convert.ToDateTime(txtDate.Text);
            DateTime NowDates=DateTime.Now;
            if (ToDate<NowDates)
            {
                Response.Write(MessageBox.ShowMessage("作业提交日期不得小于作业发布日期！"));
            }
            else
            {
                TeacherClass Tcs = new TeacherClass();
                int nPand = Tcs.AddZuoye(nID,DropDownList1.SelectedItem.Text, txtTitle.Text, sUid, txtName.Text, NowDate, ToDate);
                if (nPand == 1)
                {
                    Response.Write(MessageBox.ShowMessage("作业发布成功！", "UpZuoye.aspx"));
                }
                else
                {
                    Response.Write(MessageBox.ShowMessage("作业发布失败，请与管理员联系！"));
                }
            }
        }
    }
}
