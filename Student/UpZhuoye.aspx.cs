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

public partial class Student_UpZhuoye : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.IsPostBack)
        {
            //判断是否登录
            if (Request.Cookies["Login"] == null || Request.Cookies["Login"].Value.ToString() != "Student")
            {
                Response.Write(MessageBox.ShowMessage("请选登录！", "../Login.aspx"));
            }
            DataBindDro();
        }
    }

    //.....................................................//

    private void DataBindDro()
    {
        //绑定课程信息
        StudentClass Stc = new StudentClass();
        DataSet ds = Stc.GetKecheng();
        DropDownList1.DataSource = ds.Tables["mytb"].DefaultView;
        DropDownList1.DataTextField = "Kc_Title";
        DropDownList1.DataValueField = "Kc_ID";
        DropDownList1.DataBind();

        //.............................................................//

        //绑定相应课程的作业

        int nID = Convert.ToInt32(DropDownList1.SelectedItem.Value.ToString());
        DataSet ds2 = Stc.GetZuoyeID(nID);
        DropDownList2.DataSource = ds2.Tables["mytb"].DefaultView;
        DropDownList2.DataTextField = "Zy_Title";
        DropDownList2.DataValueField = "Zy_ID";
        DropDownList2.DataBind();
    }

    protected void btnOk_Click(object sender, EventArgs e)
    {

    }
    protected void btnGet_Click(object sender, EventArgs e)
    {

    }
    protected void btnSub_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //添加作业信息到数据库
            if (txtZhuoye.Text == "")
            {
                Response.Write(MessageBox.ShowMessage("请先上传作业文件！"));
            }
            else
            {
                string Dates = DateTime.Now.Year.ToString() + "年" + DateTime.Now.Month.ToString() + "月" + DateTime.Now.Day.ToString() + "日";
                string sUid = Request.Cookies["Uid"].Value.ToString();
                int ZyId = Convert.ToInt32(DropDownList2.SelectedItem.Value.ToString());
                StudentClass Stc = new StudentClass();
                int nPand = Stc.AddZuoye(DropDownList1.SelectedItem.Text,DropDownList2.SelectedItem.Text, ZyId, txtZhuoye.Text, sUid, txtName.Text, Dates);
                if (nPand == 1)
                {
                    Response.Write(MessageBox.ShowMessage("作业提交成功！", "UpZhuoye.aspx"));
                }
                else
                {
                    Response.Write(MessageBox.ShowMessage("作业提交失败！"));
                }
            }
        }
    }
    protected void btnUp_Click(object sender, EventArgs e)
    {
        //上传文件代码
        if (txtZhuoye.Text == "")
        {
            if (File1.PostedFile.FileName.Length<=0)
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
                        txtZhuoye.Text = fileName.ToString();
                    }
                }
            }
        }
        else
        {
            Response.Write(MessageBox.ShowMessage("以经上传过文件了！"));
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //绑定相对课程的作业

        int nID = Convert.ToInt32(DropDownList1.SelectedItem.Value.ToString());
        StudentClass Stc = new StudentClass();
        DataSet ds = Stc.GetZuoyeID(nID);
        DropDownList2.DataSource = ds.Tables["mytb"].DefaultView;
        DropDownList2.DataTextField = "Zy_Title";
        DropDownList2.DataValueField = "Zy_ID";
        DropDownList2.DataBind();
    }
}
