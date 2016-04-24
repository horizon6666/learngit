<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditPass.aspx.cs" Inherits="Admin_EditPass" %>

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
      <table width="700" height="283" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#CFE3FE" class="bk">
        <tr>
          <td valign="top" bgcolor="#CFE3FE"><table width="696" height="55" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td><div align="center" class="STYLE1">修改密码</div></td>
            </tr>
          </table>
            <table width="342" height="127" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#0099CC">
              <tr>
                <td width="59"><div align="left" class="STYLE2">新密码：</div></td>
                <td width="277"><div align="left">
                    <asp:TextBox ID="txtPass1" runat="server" TextMode="Password" Width="130px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#FFE0C0"
                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtPass1"
                        Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator></div></td>
              </tr>
              <tr>
                <td><div align="left" class="STYLE2">确认：</div></td>
                <td><div align="left">
                    <asp:TextBox ID="txtPass2" runat="server" TextMode="Password" Width="130px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="#FFE0C0"
                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtPass2"
                        Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="#FFE0C0" BorderColor="Red"
                        BorderStyle="Solid" BorderWidth="1px" ControlToCompare="txtPass1" ControlToValidate="txtPass2"
                        Display="Dynamic" ErrorMessage="不一致！" Font-Size="10pt"></asp:CompareValidator></div></td>
              </tr>
              <tr>
                <td colspan="2"><div align="center">
                    <asp:Button ID="btnOk" runat="server" Text="确认修改" OnClick="btnOk_Click1" /></div></td>
              </tr>
            </table></td>
        </tr>
      </table>
    </div>
    </form>
</body>
</html>
