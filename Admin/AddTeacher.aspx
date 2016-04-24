<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddTeacher.aspx.cs" Inherits="Admin_AddTeacher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学生注册</title>
    <style type="text/css">
<!--
.bk {
	border: 1px dashed #006699;
}
.STYLE1 {
	font-size: 14px;
	color: #000000;
	font-weight: bold;
}
.STYLE2 {font-size: 12px}
-->
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <table width="700" height="370" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#CFE3FE" class="bk">
        <tr>
          <td valign="top" bgcolor="#CFE3FE"><table width="696" height="55" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td><div align="center" class="STYLE1">
                  添加教师帐户，详细资料自己完善</div></td>
            </tr>
          </table>
            <table width="502" height="258" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#0099CC">
              <tr>
                <td width="118"><div align="left" class="STYLE2">帐号：</div></td>
                <td width="378"><div align="left">
                    <asp:TextBox ID="txtUid" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#FFE0C0"
                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtUid"
                        Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="10pt">不能为空！</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" BackColor="#FFE0C0" BorderColor="Red"
                        BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtUid" Display="Dynamic"
                        ErrorMessage="帐号已存在！" Font-Size="10pt" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator></div></td>
              </tr>
              <tr>
                <td><div align="left" class="STYLE2">密码：</div></td>
                <td><div align="left">
                    <asp:TextBox ID="txtPass1" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="#FFE0C0"
                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtPass1"
                        Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="10pt">不能为空！</asp:RequiredFieldValidator></div></td>
              </tr>
              <tr>
                <td><div align="left" class="STYLE2">确认：</div></td>
                <td><div align="left">
                    <asp:TextBox ID="txtPass2" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="#FFE0C0"
                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtPass2"
                        Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="10pt">不能为空！</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="#FFE0C0" BorderColor="Red"
                        BorderStyle="Solid" BorderWidth="1px" ControlToCompare="txtPass1" ControlToValidate="txtPass2"
                        Display="Dynamic" ErrorMessage="密码不一致！" Font-Size="10pt"></asp:CompareValidator></div></td>
              </tr>
              <tr>
                <td><div align="left" class="STYLE2">姓名：</div></td>
                <td><div align="left">
                    <asp:TextBox ID="txtName" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BackColor="#FFE0C0"
                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtName"
                        Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="10pt">不能为空！</asp:RequiredFieldValidator></div></td>
              </tr>
              <tr>
                <td colspan="2"><div align="center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认添加" /></div></td>
              </tr>
            </table></td>
        </tr>
      </table>
    </div>
    </form>
</body>
</html>
