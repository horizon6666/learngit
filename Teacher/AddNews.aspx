<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNews.aspx.cs" Inherits="Teacher_AddNews" validateRequest="false"  %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

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
            class="bk" height="648" width="700">
            <tr>
              <td bgcolor="#cfe3fe" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" height="55" width="696">
                        <tr>
                            <td>
                                <div align="center" class="STYLE1">
                                    添加新公告！</div>
                            </td>
                        </tr>
                    </table>
                    <table width="588" height="417" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#0099CC">
                      <tr>
                        <td width="136"><div align="left" class="STYLE1">标题：</div></td>
                        <td width="446"><div align="left">
                            <asp:TextBox ID="TextBox1" runat="server" Width="337px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#FFE0C0"
                                BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="TextBox1"
                                Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator></div></td>
                      </tr>
                      <tr>
                        <td><div align="left" class="STYLE1">发布人姓名：</div></td>
                        <td><div align="left">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="#FFE0C0"
                                BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="TextBox2"
                                Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator></div></td>
                      </tr>
                      <tr>
                        <td height="268" colspan="2" valign="top">
                            <FTB:FreeTextBox ID="FreeTextBox1" runat="server">
                            </FTB:FreeTextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="#FFE0C0"
                                BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="FreeTextBox1"
                                Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator></td>
                      </tr>
                      <tr>
                        <td colspan="2" align="center">&nbsp;<asp:Button ID="btnOk" runat="server" OnClick="btnOk_Click" Text="发布新闻" /></td>
                      </tr>
                    </table></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
