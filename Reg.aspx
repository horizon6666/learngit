<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" %>

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
	color: #003399;
	font-weight: bold;
}
.STYLE2 {font-size: 12px}
-->
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <table width="700" height="648" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#CFE3FE" class="bk">
        <tr>
          <td valign="top" bgcolor="#CFE3FE"><table width="696" height="55" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td><div align="center" class="STYLE1">学生信息注册，注册成功后需要管理员审核才能登录！</div></td>
            </tr>
          </table>
            <table width="624" height="511" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#0066CC">
              <tr>
                <td width="155"><div align="left"><span class="STYLE2">帐号：</span></div></td>
                <td width="469"><div align="left">
                    <asp:TextBox ID="txtUid" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#FFE0C0"
                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtUid"
                        Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" BackColor="#FFE0C0" BorderColor="Red"
                        BorderStyle="Solid" BorderWidth="1px" Display="Dynamic" ErrorMessage="帐号以存在！"
                        Font-Size="10pt" ControlToValidate="txtUid" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator></div></td>
              </tr>
              <tr>
                <td><div align="left"><span class="STYLE2">密码：</span></div></td>
                <td><div align="left">
                    <asp:TextBox ID="txtPwd1" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="#FFE0C0"
                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtPwd1"
                        Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator></div></td>
              </tr>
              <tr>
                <td><div align="left"><span class="STYLE2">确认：</span></div></td>
                <td><div align="left">
                    <asp:TextBox ID="txtPwd2" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="#FFE0C0"
                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtPwd2"
                        Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="#FFE0C0" BorderColor="Red"
                        BorderStyle="Solid" BorderWidth="1px" ControlToCompare="txtPwd1" ControlToValidate="txtPwd2"
                        ErrorMessage="两次密码不一致！" Font-Size="10pt"></asp:CompareValidator></div></td>
              </tr>
              <tr>
                <td><div align="left"><span class="STYLE2">姓名：</span></div></td>
                <td><div align="left">
                    <asp:TextBox ID="txtName" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BackColor="#FFE0C0"
                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtName"
                        Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator></div></td>
              </tr>
              <tr>
                <td><div align="left"><span class="STYLE2">性别：</span></div></td>
                <td><div align="left">
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" Font-Size="10pt"
                        GroupName="1" Text="男" />
                    &nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="10pt" GroupName="1"
                        Text="女" /></div></td>
              </tr>
              <tr>
                <td><div align="left"><span class="STYLE2">年级：</span></div></td>
                <td><div align="left">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                    </asp:DropDownList>&nbsp;</div></td>
              </tr>
              <tr>
                <td><div align="left"><span class="STYLE2">班级：</span></div></td>
                <td><div align="left">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                    </asp:DropDownList></div></td>
              </tr>
              <tr>
                <td><div align="left"><span class="STYLE2">电话：</span></div></td>
                <td><div align="left">
                    <asp:TextBox ID="txtHone" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BackColor="#FFE0C0"
                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtHone"
                        Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator>
                </div></td>
              </tr>
              <tr>
                <td><div align="left"><span class="STYLE2">电邮：</span></div></td>
                <td><div align="left">
                    <asp:TextBox ID="txtEmail" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" BackColor="#FFE0C0"
                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtEmail"
                        Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BackColor="#FFE0C0"
                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtEmail"
                        Display="Dynamic" ErrorMessage="错误的Email格式！" Font-Size="10pt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></div></td>
              </tr>
              <tr>
                <td colspan="2"><div align="center">
                    <asp:Button ID="btnOk" runat="server" Text="确认注册" OnClick="btnOk_Click" />
                    &nbsp; &nbsp;
                    <asp:Button ID="btnGet" runat="server" CausesValidation="False" OnClick="btnGet_Click"
                        Text="取消返回" /></div></td>
              </tr>
            </table></td>
        </tr>
      </table>
    </div>
    </form>
</body>
</html>
