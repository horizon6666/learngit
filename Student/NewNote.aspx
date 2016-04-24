<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewNote.aspx.cs" Inherits="Student_MyFile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
<!--
.STYLE1 {font-size: 12px}
-->
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" border="1" bordercolor="#cfe3fe" cellpadding="0" cellspacing="0"
            class="bk" height="431" width="700">
            <tr>
              <td bgcolor="#cfe3fe" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" height="55" width="696">
                        <tr>
                            <td>
                                <div align="center" class="STYLE1">
                                    添加新留言！</div>
                            </td>
                        </tr>
                    </table>
                    <table width="502" height="334" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="58"><div align="left" class="STYLE1">姓名：</div></td>
                        <td width="444"><div align="left">
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#FFE0C0"
                                BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtName"
                                Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator></div></td>
                      </tr>
                      <tr>
                        <td><div align="left" class="STYLE1">Email：</div></td>
                        <td><div align="left">
                            <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="#FFE0C0"
                                BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtEmail"
                                Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BackColor="#FFE0C0"
                                BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtEmail"
                                Display="Dynamic" ErrorMessage="错误的Email格式！" Font-Size="10pt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></div></td>
                      </tr>
                      <tr>
                        <td height="205" valign="top"><div align="left" class="STYLE1">留言：</div></td>
                        <td valign="top"><div align="left">
                            <asp:TextBox ID="TextBox1" runat="server" Height="244px" TextMode="MultiLine" Width="361px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="#FFE0C0"
                                BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="TextBox1"
                                Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator></div></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><div align="left">
                            <asp:Button ID="btnOk" runat="server" OnClick="btnOk_Click" Text="确认留言" /></div></td>
                      </tr>
                    </table></td>
            </tr>
      </table>
    
    </div>
    </form>
</body>
</html>
