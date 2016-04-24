<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LeftMenu.aspx.cs" Inherits="Admin_LeftMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #CBDAEF;
}
.bk {
	border: 1px solid #0099CC;
}
-->
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <table width="180" height="600" border="0" align="center" cellpadding="0" cellspacing="0" class="bk">
        <tr>
          <td valign="top" align="left">&nbsp;<br />
              <asp:TreeView ID="TreeView1" runat="server" Height="81px" ImageSet="XPFileExplorer"
                  NodeIndent="15" Width="173px">
                  <ParentNodeStyle Font-Bold="False" />
                  <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
                  <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px"
                      VerticalPadding="0px" />
                  <Nodes>
                      <asp:TreeNode Text="首   页" Value="首   页" NavigateUrl="~/Admin/Index.aspx" Target="mainFrame"></asp:TreeNode>
                      <asp:TreeNode Text="资料管理" Value="我的资料">
                          <asp:TreeNode NavigateUrl="~/Admin/EditPass.aspx" Target="mainFrame" Text="修改密码"
                              Value="我的资料"></asp:TreeNode>
                      </asp:TreeNode>
                      <asp:TreeNode Text="课程管理" Value="提交作业">
                          <asp:TreeNode NavigateUrl="~/Admin/AddKc.aspx" Target="mainFrame" Text="添加课程" Value="添加课程">
                          </asp:TreeNode>
                          <asp:TreeNode NavigateUrl="~/Admin/EditKc.aspx" Target="mainFrame" Text="管理课程" Value="管理课程">
                          </asp:TreeNode>
                      </asp:TreeNode>
                      <asp:TreeNode Text="角色管理" Value="角色管理">
                          <asp:TreeNode NavigateUrl="~/Admin/AddTeacher.aspx" Target="mainFrame" Text="添加教师"
                              Value="添加教师"></asp:TreeNode>
                          <asp:TreeNode NavigateUrl="~/Admin/EditTeacher.aspx" Target="mainFrame" Text="管理教师"
                              Value="管理教师"></asp:TreeNode>
                          <asp:TreeNode NavigateUrl="~/Admin/EditStudent.aspx" Target="mainFrame" Text="认证管理学生"
                              Value="认证管理学生"></asp:TreeNode>
                      </asp:TreeNode>
                      <asp:TreeNode Text="退出系统" Value="退出系统" NavigateUrl="~/LoginOut.aspx" Target="_parent"></asp:TreeNode>
                  </Nodes>
                  <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="2px"
                      NodeSpacing="0px" VerticalPadding="2px" />
              </asp:TreeView>
          </td>
        </tr>
      </table>
    </div>
    </form>
</body>
</html>
