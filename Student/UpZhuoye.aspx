<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpZhuoye.aspx.cs" Inherits="Student_UpZhuoye" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
<!--
.STYLE1 {font-size: 16px}
.STYLE2 {font-size: 12px}
-->
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" border="1" bordercolor="#cfe3fe" cellpadding="0" cellspacing="0"
            class="bk" height="433" width="700">
            <tr>
              <td bgcolor="#cfe3fe" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" height="55" width="696">
                        <tr>
                          <td><div align="center" class="STYLE1">上传作业</div></td>
                        </tr>
                    </table>
                    <table width="639" height="327" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#006699">
                      <tr>
                        <td width="101"><div align="left" class="STYLE2">
                            &nbsp;课程：</div></td>
                        <td width="532"><div align="left">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList></div></td>
                      </tr>
                      <tr>
                        <td><div align="left" class="STYLE2">
                            &nbsp;作业题目：</div></td>
                        <td><div align="left">
                            <asp:DropDownList ID="DropDownList2" runat="server">
                            </asp:DropDownList></div></td>
                      </tr>
                      <tr>
                        <td><div align="left" class="STYLE2">
                            &nbsp;姓名：</div></td>
                        <td><div align="left">
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#FFE0C0"
                                BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtName"
                                Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator></div></td>
                      </tr>
                      <tr>
                        <td><div align="left" class="STYLE2">
                            &nbsp;学号：</div></td>
                        <td><div align="left">
                            <asp:TextBox ID="txtXuehao" runat="server"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator
                                ID="RequiredFieldValidator2" runat="server" BackColor="#FFE0C0" BorderColor="Red"
                                BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtXuehao" Display="Dynamic"
                                ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator></div></td>
                      </tr>
                      <tr>
                        <td><div align="left" class="STYLE2">
                            &nbsp;作业：</div></td>
                        <td><div align="left">
                            <asp:TextBox ID="txtZhuoye" runat="server" Enabled="False"></asp:TextBox>
                            &nbsp; &nbsp;
                            <input id="File1" runat="server" type="file" />
                            &nbsp;
                            <asp:Button ID="btnUp" runat="server" CausesValidation="False" Height="23px" OnClick="btnUp_Click"
                                Text="上传" Width="52px" /></div></td>
                      </tr>
                      <tr>
                        <td colspan="2"><div align="center">
                            <asp:Button ID="btnSub" runat="server" OnClick="btnSub_Click" Text="提交作业" /></div></td>
                      </tr>
                    </table></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
