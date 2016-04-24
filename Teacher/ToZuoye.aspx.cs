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

public partial class Teacher_ToZuoye : System.Web.UI.Page
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
 
    }
    protected void btnUp_Click(object sender, EventArgs e)
    {
        //上传文件代码
        if (txtZuoye.Text == "")
        {
            if (File1.PostedFile.FileName.Length <= 0)
            {
                Response.Write(MessageBox.ShowMessage("请选择要上传的文件！"));
            }
            else
            {
                string fillFileName = this.File1.PostedFile.FileName;
                string fileName = fillFileName.Substring(fillFileName.LastIndexOf("\\") + 1);
                string renName = fillFileName.Substring(fillFileName.LastIndexOf(".") + 1);
                double dx = File1.PostedFile.ContentLength / 1000;
                if (renName == "exe" || renName == "asp" || renName == "asp.net" || renName == "jsp" || renName == "php" || renName == "bat" || renName == "reg")
                {
                    Response.Write(MessageBox.ShowMessage("非法的文件格式！"));
                }
                else
                {
                    if (dx > 1000)
                    {
                        Response.Write(MessageBox.ShowMessage("文件过大！"));
                    }
                    else
                    {
                        File1.PostedFile.SaveAs(Server.MapPath("..\\UpLoad\\" + fileName));
                        txtZuoye.Text = fileName.ToString();
                    }
                }
            }
        }
        else
        {
            Response.Write(MessageBox.ShowMessage("以经上传过文件了！"));
        }
    }
    protected void btnOk_Click1(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (txtZuoye.Text == "")
            {
                Response.Write(MessageBox.ShowMessage("请先上传文件！"));
            }
            else
            {
                if (Convert.ToDouble(txtDafen.Text) > 100)
                {
                    Response.Write(MessageBox.ShowMessage("得分不能大于100分！"));
                }
                else
                {
                    int nID = Convert.ToInt32(Request.QueryString["ID"].ToString());
                    TeacherClass Tcs = new TeacherClass();
                    int nPand = Tcs.UpdateZuoyeMessages(txtDafen.Text, txtZuoye.Text, nID);
                    if (nPand == 1)
                    {
                        Response.Write(MessageBox.ShowMessage("作业批改成功！", "PgZuoye.aspx"));
                    }
                    else
                    {
                        Response.Write(MessageBox.ShowMessage("作业批改失败，请与管理员联系！"));
                    }
                }
            }
        }
    }
}
