<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpZuoye.aspx.cs" Inherits="Teacher_UpZuoye" %>

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
            class="bk" height="481" width="700">
            <tr>
              <td bgcolor="#cfe3fe" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" height="55" width="696">
                        <tr>
                            <td>
                                <div align="center" class="STYLE1">
                                    发布新作业！</div>
                            </td>
                        </tr>
                    </table>
                    <table width="662" height="296" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#0099CC">
                      <tr>
                        <td width="139"><div align="left" class="STYLE1">
                            &nbsp;所属课程：</div></td>
                        <td width="523"><div align="left">
                            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList></div></td>
                      </tr>
                      <tr>
                        <td><div align="left" class="STYLE1">
                            &nbsp;作业题目：</div></td>
                        <td><div align="left">
                            &nbsp;<asp:TextBox ID="txtTitle" runat="server" Width="350px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#FFE0C0"
                                BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtTitle"
                                Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator></div></td>
                      </tr>
                      <tr>
                        <td><div align="left" class="STYLE1">
                            &nbsp;发布人：</div></td>
                        <td><div align="left">
                            &nbsp;<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="#FFE0C0"
                                BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtName"
                                Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator></div></td>
                      </tr>
                      <tr>
                        <td><div align="left" class="STYLE1">
                            &nbsp;作业提交最晚日期：</div></td>
                        <td><div align="left" style="font-size: 10pt">
                            &nbsp;<asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="#FFE0C0"
                                BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtDate"
                                Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="#FFE0C0" BorderColor="Red"
                                BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtDate" Display="Dynamic"
                                ErrorMessage="错误的日期格式！" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>(2005/01/01)</div></td>
                      </tr>
                      <tr>
                        <td colspan="2"><div align="center">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认添加作业" /></div></td>
                      </tr>
                    </table></td>
            </tr>
      </table>
    
    </div>
    </form>
</body>
</html>
