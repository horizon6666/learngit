<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Student_Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
<!--
.STYLE1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
-->
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;
        <table width="606" height="104" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center" valign="top">
                <table align="center" border="0" cellpadding="0" cellspacing="0" width="686">
                    <tr>
                        <td height="54" valign="top">
                            <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" ShowHeader="False"
                                Width="680px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="10pt" Font-Strikeout="False" Font-Underline="False">
                                <Columns>
                                    <asp:HyperLinkColumn DataNavigateUrlField="Ne_ID" DataNavigateUrlFormatString="View.aspx?ID={0}"
                                        DataTextField="Ne_Title" Target="_blank"></asp:HyperLinkColumn>
                                    <asp:BoundColumn DataField="Ne_TeName">
                                        <HeaderStyle Width="60px" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Ne_AddDate">
                                        <HeaderStyle Width="80pt" />
                                    </asp:BoundColumn>
                                </Columns>
                            </asp:DataGrid></td>
                    </tr>
                    <tr>
                        <td style="height: 20px">
                            <div align="right">
                                <asp:Label ID="Label1" runat="server" Font-Size="10pt" Text="Label"></asp:Label>/<asp:Label
                                    ID="Label2" runat="server" Font-Size="10pt" Text="Label"></asp:Label>
                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="10pt" ForeColor="Black"
                                    OnClick="LinkButton1_Click">首页</asp:LinkButton>
                                &nbsp;
                                <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="10pt" ForeColor="Black"
                                    OnClick="LinkButton2_Click">上一页</asp:LinkButton>
                                &nbsp;
                                <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="10pt" ForeColor="Black"
                                    OnClick="LinkButton3_Click">下一页</asp:LinkButton>
                                &nbsp;
                                <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="10pt" ForeColor="Black"
                                    OnClick="LinkButton4_Click">尾页</asp:LinkButton>&nbsp;
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <div align="left">
                                &nbsp;</div>
                        </td>
                    </tr>
                </table>
                &nbsp;</td>
          </tr>
        </table>
    </div>
    </form>
</body>
</html>
