﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Teacher_PgZuoye: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnDelete.Attributes.Add("onclick", "return confirm('确认删除所选信息吗?');");
        if (!this.Page.IsPostBack)
        {
            if (Request.Cookies["Login"] == null || Request.Cookies["Login"].Value.ToString() != "Teacher")
            {
                Response.Write(MessageBox.ShowMessage("请选登录！", "../Login.aspx"));
            }
            Label1.Text = "1";
            this.DataBindDro();
            this.DataBindDataGrid();
        }
    }

    private void DataBindDro()
    {
        //绑定作业下拉例表框
        string sUid = Request.Cookies["Uid"].Value.ToString();
        TeacherClass Tcs = new TeacherClass();
        DataSet ds = Tcs.GetZuoyeMess(sUid);
        DropDownList1.DataSource = ds.Tables["mytb"].DefaultView;
        DropDownList1.DataTextField = "Zy_Title";
        DropDownList1.DataValueField = "Zy_ID";
        DropDownList1.DataBind();
    }
    private void DataBindDataGrid()
    {
        //绑定作业信息表
        int nID = 0;
        if (DropDownList1.Items.Count<=0)
        {
            nID = 0;
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            LinkButton4.Visible = false;
        }
        else
        {
            nID = Convert.ToInt32(DropDownList1.SelectedItem.Value.ToString());
            string sUid = Request.Cookies["Uid"].Value.ToString();
            int cutPage = Convert.ToInt32(this.Label1.Text);
            TeacherClass Tcs = new TeacherClass();
            DataSet ds = Tcs.GetZuoyeMessage(nID);
            System.Web.UI.WebControls.PagedDataSource ps = new PagedDataSource();
            ps.AllowPaging = true;
            ps.PageSize = 20;
            ps.CurrentPageIndex = cutPage - 1;
            ps.DataSource = ds.Tables["mytb"].DefaultView;
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            LinkButton3.Visible = true;
            LinkButton4.Visible = true;
            if (ps.IsFirstPage)
            {
                LinkButton1.Visible = false;
                LinkButton2.Visible = false;
            }
            if (ps.IsLastPage)
            {
                LinkButton3.Visible = false;
                LinkButton4.Visible = false;
            }
            DataGrid1.DataSource = ps;
            DataGrid1.DataBind();
            Label2.Text = Convert.ToString(ps.PageCount);
        }
    }
    //.....................................................//

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        int nPand = 0;
        foreach (DataGridItem dgi in DataGrid1.Items)
        {
            CheckBox cb = (CheckBox)dgi.FindControl("cbSelect");
            if (cb.Checked)
            {
                int nID = Convert.ToInt32(dgi.Cells[0].Text);
                TeacherClass Tcs = new TeacherClass();
                nPand = Tcs.DeleteZyMess(nID);
            }
        }
        DataBindDataGrid();
        DataGrid1.CurrentPageIndex = 0;
        if (nPand == 1)
        {
            Response.Write(MessageBox.ShowMessage("信息删除成功！", "PgZuoye.aspx"));
        }
        else
        {
            Response.Write(MessageBox.ShowMessage("信息删除失败！"));
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Label1.Text = "1";
        DataBindDataGrid();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Convert.ToInt32(Label1.Text)-1);
        DataBindDataGrid();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Convert.ToInt32(Label1.Text) + 1);
        DataBindDataGrid();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Label1.Text = Label2.Text;
        DataBindDataGrid();
    }
    protected void cbAll_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox cbAll = (CheckBox)sender;
        if (cbAll.Text == "全选")
        {
            foreach (DataGridItem dgi in DataGrid1.Items)
            {
                CheckBox cb = (CheckBox)dgi.FindControl("cbSelect");
                cb.Checked = cbAll.Checked;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.DataBindDataGrid();
    }
}
