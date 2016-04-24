<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Notes.aspx.cs" Inherits="Student_EditZy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
<!--
.STYLE2 {
	font-size: 12px;
	color: #FF0000;
}
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
                    <table width="686" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td height="54" valign="top">
                            <asp:DataList ID="DataList1" runat="server">
                                <ItemTemplate>
                    <table width="683" height="162" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#0099CC">
                      <tr>
                        <td height="20" colspan="2" bgcolor="#0099CC">&nbsp;</td>
                      </tr>
                      <tr>
                        <td width="135" height="142"><table width="127" height="88" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td><div align="center">
                                <asp:Label ID="lblName" runat="server" Font-Size="10pt" Text="" Width="108px"><%#DataBinder.Eval(Container.DataItem,"No_Name") %></asp:Label></div></td>
                          </tr>
                          <tr>
                            <td><div align="center">
                                <asp:Label ID="lblEmail" runat="server" Font-Size="10pt" Text="" Width="108px"><%#DataBinder.Eval(Container.DataItem,"No_Email") %></asp:Label></div></td>
                          </tr>
                        </table></td>
                        <td width="548"><table width="518" height="134" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                            <td height="77" valign="top">&nbsp;<asp:Label ID="lblMessage" runat="server" Font-Size="10pt" Text="" Width="511px"><%#DataBinder.Eval(Container.DataItem,"No_Message") %></asp:Label></td>
                          </tr>
                          <tr>
                            <td valign="top"><span class="STYLE2">回复：<%#DataBinder.Eval(Container.DataItem,"No_ToMessage") %></span></td>
                          </tr>
                        </table></td>
                      </tr>
                </table>
                                </ItemTemplate>
                            </asp:DataList></td>
                      </tr>
                      <tr>
                        <td style="height: 20px"><div align="right">
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
                        </div></td>
                      </tr>
                      <tr>
                        <td height="30"><div align="left">
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="10pt" NavigateUrl="~/Student/NewNote.aspx" Target="mainFrame">我要留言</asp:HyperLink>&nbsp;</div></td>
                      </tr>
                    </table>
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
