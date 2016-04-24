<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="Student_View" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ShowNews</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <br />
      <table width="648" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="163" valign="top">
              <asp:Label ID="Label1" runat="server" Text="Label" Width="643px"></asp:Label></td>
        </tr>
        <tr>
          <td height="25"><div align="center">
              <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="10pt" ForeColor="Black"
                  NavigateUrl="javascript:window.close();">[关闭本页]</asp:HyperLink></div></td>
        </tr>
      </table>
    </div>
    </form>
</body>
</html>
