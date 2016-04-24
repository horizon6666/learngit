<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditKc.aspx.cs" Inherits="Admin_EditKc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学生注册</title>
    <style type="text/css">
<!--
.bk {
	border: 1px dashed #006699;
}
.STYLE1 {
	font-size: 14px;
	color: #000000;
	font-weight: bold;
}
.STYLE2 {font-size: 12px}
-->
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <table width="700" height="467" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#CFE3FE" class="bk">
        <tr>
          <td height="465" valign="top" bgcolor="#CFE3FE"><table width="696" height="55" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td><div align="center" class="STYLE1">
                  管理课程信息</div></td>
            </tr>
          </table>
              <table align="center" border="0" cellpadding="0" cellspacing="0" width="686">
                  <tr>
                      <td height="54" valign="top">
                          <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" BackColor="White"
                              BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1"
                              Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="10pt"
                              Font-Strikeout="False" Font-Underline="False" GridLines="None" Width="686px">
                              <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                              <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                              <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                              <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                              <Columns>
                                  <asp:BoundColumn DataField="Kc_ID" HeaderText="ID">
                                      <HeaderStyle Width="50px" />
                                  </asp:BoundColumn>
                                  <asp:BoundColumn DataField="Kc_Title" HeaderText="课程名称"></asp:BoundColumn>
                                  <asp:BoundColumn DataField="Kc_TeName" HeaderText="教师">
                                      <HeaderStyle Width="100px" />
                                  </asp:BoundColumn>
                                  <asp:TemplateColumn>
                                      <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                          Font-Underline="False" HorizontalAlign="Center" />
                                      <HeaderTemplate>
                                          <asp:CheckBox ID="cbAll" runat="server" AutoPostBack="True" Font-Size="10pt" OnCheckedChanged="cbAll_CheckedChanged"
                                              Text="全选" />
                                      </HeaderTemplate>
                                      <ItemTemplate>
                                          <asp:CheckBox ID="cbSelect" runat="server" Font-Size="10pt" />
                                      </ItemTemplate>
                                      <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                          Font-Underline="False" HorizontalAlign="Center" Width="50px" />
                                  </asp:TemplateColumn>
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
                              <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="删除所选信息" /></div>
                      </td>
                  </tr>
              </table>
          </td>
        </tr>
      </table>
    </div>
    </form>
</body>
</html>
