<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>作业批改系统_登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #FFFFFF;
}
.STYLE2 {font-size: 12px}
-->
</style>
<script language="javascript">
   
   function check()
   {
       var vUid=document.getElementById("txtUid").value;
       var vPwd=document.getElementById("txtPwd").value;
       if(vUid=="")
       {
           alert("帐号不能为空！");
           document.getElementById("txtUid").focus();
           return false;
       }
       if(vPwd=="")
       {
           alert("密码不能为空！");
           document.getElementById("txtPwd").focus();
           return false;                  
       }
   }

</script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <table width="422" height="306" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td valign="top" background="image/vip_login.jpg"><table width="381" height="76" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td>&nbsp;</td>
            </tr>
          </table>
            <table width="377" height="138" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="143" height="31">&nbsp;</td>
                <td width="54"><div align="center" class="STYLE2">帐号：</div></td>
                <td width="180"><div align="left">
                    <asp:TextBox ID="txtUid" runat="server" Width="130px"></asp:TextBox></div></td>
              </tr>
              <tr>
                <td height="32">&nbsp;</td>
                <td><div align="center" class="STYLE2">密码：</div></td>
                <td><div align="left">
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="130px"></asp:TextBox></div></td>
              </tr>
              <tr>
                <td height="30">&nbsp;</td>
                <td><div align="center" class="STYLE2">身份：</div></td>
                <td><div align="left">
                    <asp:DropDownList ID="droSf" runat="server" Width="130px">
                        <asp:ListItem>学生</asp:ListItem>
                        <asp:ListItem>教师</asp:ListItem>
                        <asp:ListItem>管理员</asp:ListItem>
                    </asp:DropDownList></div></td>
              </tr>
              <tr>
                <td height="45">&nbsp;</td>
                <td colspan="2">&nbsp;
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="登录" />
                    &nbsp; &nbsp;
                    <asp:Button ID="btnReg" runat="server" CausesValidation="False" Text="注册" OnClick="btnReg_Click" /></td>
              </tr>
            </table>
            <table width="379" height="37" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
      </table>
    </div>
    </form>
</body>
</html>
