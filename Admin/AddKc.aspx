<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddKc.aspx.cs" Inherits="Admin_AddKc" %>

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
              <td><div align="center" class="STYLE1">
                  添加课程信息</div></td>
            </tr>
          </table>
            <table width="424" height="122" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#0099CC">
              <tr>
                <td width="110"><div align="left"><span class="STYLE2">课程名称：</span></div></td>
                <td width="308"><div align="left">
                    <asp:TextBox ID="txtTitle" runat="server" Width="197px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#FFE0C0"
                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtTitle"
                        Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator></div></td>
              </tr>
              <tr>
                <td><div align="left"><span class="STYLE2">任课教师：</span></div></td>
                <td><div align="left">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="118px">
                    </asp:DropDownList></div></td>
              </tr>
              <tr>
                <td colspan="2"><div align="center">
                    <asp:Button ID="btnOk" runat="server" OnClick="btnOk_Click" Text="确认添加" /></div></td>
              </tr>
            </table></td>
        </tr>
      </table>
    </div>
    </form>
</body>
</html>
