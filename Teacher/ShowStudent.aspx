<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowStudent.aspx.cs" Inherits="Teacher_ShowStudent" %>

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
                                    更新资料！</div>
                            </td>
                        </tr>
                    </table>
                    <table align="center" border="1" bordercolor="#0066cc" cellpadding="0" cellspacing="0"
                        height="511" width="624">
                        <tr>
                            <td width="155">
                                <div align="left">
                                    <span class="STYLE2" style="font-size: 9pt">&nbsp;帐号：</span></div>                            </td>
                            <td style="font-size: 9pt" width="469">
                                <div align="left">
                                    &nbsp;<asp:TextBox ID="txtUid" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#FFE0C0"
                                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtUid"
                                        Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator>
                                    <asp:CustomValidator ID="CustomValidator1" runat="server" BackColor="#FFE0C0" BorderColor="Red"
                                        BorderStyle="Solid" BorderWidth="1px" Display="Dynamic" ErrorMessage="帐号以存在！"
                                        Font-Size="10pt"></asp:CustomValidator></div>                            </td>
                        </tr>
                        <tr style="font-size: 9pt">
                            <td>
                                <div align="left">
                                    <span class="STYLE2">&nbsp;密码：(不修改不填)</span></div>                            </td>
                            <td>
                                <div align="left">
                                    &nbsp;<asp:TextBox ID="txtPwd1" runat="server" TextMode="Password" Width="150px" Enabled="False"></asp:TextBox>
                                    </div>                            </td>
                        </tr>
                        <tr style="font-size: 9pt">
                            <td>
                                <div align="left">
                                    <span class="STYLE2">&nbsp;确认：(不修改不填)</span></div>                            </td>
                            <td>
                                <div align="left">
                                    &nbsp;<asp:TextBox ID="txtPwd2" runat="server" TextMode="Password" Width="150px" Enabled="False"></asp:TextBox>&nbsp;
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="#FFE0C0" BorderColor="Red"
                                        BorderStyle="Solid" BorderWidth="1px" ControlToCompare="txtPwd1" ControlToValidate="txtPwd2"
                                        ErrorMessage="两次密码不一致！" Font-Size="10pt"></asp:CompareValidator></div>                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="left" class="STYLE1">
                                    <span class="STYLE2">&nbsp;姓名：</span></div>                          </td>
                            <td>
                                <div align="left">
                                    &nbsp;<asp:TextBox ID="txtName" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BackColor="#FFE0C0"
                                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtName"
                                        Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator></div>                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="left" class="STYLE1">
                                    <span class="STYLE2">&nbsp;性别：</span></div>                          </td>
                            <td>
                                <div align="left">
                                    &nbsp;<asp:RadioButton ID="RadioButton1" runat="server" Checked="True" Font-Size="10pt"
                                        GroupName="1" Text="男" Enabled="False" />
                                    &nbsp;
                                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="10pt" GroupName="1"
                                        Text="女" Enabled="False" /></div>                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="left" class="STYLE1">
                                    <span class="STYLE2">&nbsp;年级：</span></div>                          </td>
                            <td>
                                <div align="left">
                                    &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Enabled="False">
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                    </asp:DropDownList>&nbsp;</div>                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="left" class="STYLE1">
                                    <span class="STYLE2">&nbsp;班级：</span></div>                          </td>
                            <td>
                                <div align="left">
                                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Enabled="False">
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
                                    </asp:DropDownList></div>                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="left" class="STYLE1">
                                    <span class="STYLE2">&nbsp;电话：</span></div>                          </td>
                            <td>
                                <div align="left">
                                    &nbsp;<asp:TextBox ID="txtHone" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BackColor="#FFE0C0"
                                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtHone"
                                        Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator>
                                </div>                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="left" class="STYLE1">
                                    <span class="STYLE2">&nbsp;电邮：</span></div>                          </td>
                            <td>
                                <div align="left">
                                    &nbsp;<asp:TextBox ID="txtEmail" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" BackColor="#FFE0C0"
                                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtEmail"
                                        Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BackColor="#FFE0C0"
                                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtEmail"
                                        Display="Dynamic" ErrorMessage="错误的Email格式！" Font-Size="10pt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></div>                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <div align="center">
                                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="12pt" ForeColor="Black"
                                        NavigateUrl="javascript:history.back();">[返回]</asp:HyperLink>&nbsp;</div>                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
