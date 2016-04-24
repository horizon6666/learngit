<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ToZuoye.aspx.cs" Inherits="Teacher_ToZuoye" %>

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
            class="bk" height="403" width="700">
            <tr>
              <td bgcolor="#cfe3fe" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" height="55" width="696">
                        <tr>
                            <td>
                                <div align="center" class="STYLE1">
                                    批改作业！</div>
                            </td>
                        </tr>
                    </table>
                    <table width="578" height="206" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#0099CC">
                      <tr>
                        <td width="113"><div align="left"><span class="STYLE1">&nbsp;批改人：</span></div></td>
                        <td width="459"><div align="left">
                            &nbsp;<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#FFE0C0"
                                BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtName"
                                Display="Dynamic" ErrorMessage="不能为空！" Font-Size="10pt"></asp:RequiredFieldValidator></div></td>
                      </tr>
                      <tr>
                        <td><div align="left"><span class="STYLE1">&nbsp;打分：</span></div></td>
                        <td><div align="left">
                            &nbsp;<asp:TextBox ID="txtDafen" runat="server"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="#FFE0C0" BorderColor="Red"
                                BorderStyle="Solid" BorderWidth="1px" ControlToValidate="txtDafen" Display="Dynamic"
                                ErrorMessage="输入错误!" Font-Size="10pt" Operator="DataTypeCheck" Type="Double"
                                Width="64px"></asp:CompareValidator></div></td>
                      </tr>
                      <tr>
                        <td><div align="left"><span class="STYLE1">&nbsp;批改后作业：</span></div></td>
                        <td><div align="left">
                            &nbsp;<asp:TextBox ID="txtZuoye" runat="server" Enabled="False"></asp:TextBox>
                            &nbsp; &nbsp;
                            <input id="File1" runat="server" style="width: 144px" type="file" />
                            &nbsp;
                            <asp:Button ID="btnUp" runat="server" CausesValidation="False" Height="21px" OnClick="btnUp_Click"
                                Text="上传" /></div></td>
                      </tr>
                      <tr>
                        <td colspan="2"><div align="center">
                            <asp:Button ID="btnOk" runat="server" OnClick="btnOk_Click1" Text="确认提交" /></div></td>
                      </tr>
                    </table></td>
            </tr>
      </table>
    
    </div>
    </form>
</body>
</html>
