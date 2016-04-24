<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PgZuoye.aspx.cs" Inherits="Teacher_PgZuoye" %>

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
            class="bk" height="433" width="800">
            <tr>
              <td bgcolor="#cfe3fe" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" height="55" width="800">
                        <tr>
                          <td><div align="center" class="STYLE1">
                              批改作业，请先下载作业文件进行修改，成功后上传！</div></td>
                        </tr>
                </table>
                    <table width="800" height="36" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="106"><span class="STYLE2">&nbsp;按作业题目显示：</span></td>
                        <td width="589"><div align="left">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                            &nbsp; &nbsp;
                            <asp:Button ID="Button1" runat="server" Text="查询" Width="55px" OnClick="Button1_Click" /></div></td>
                      </tr>
                </table>
                    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td height="54" valign="top" align="center">
                            <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" BackColor="White"
                                BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1"
                                Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="10pt"
                                Font-Strikeout="False" Font-Underline="False" GridLines="None" Width="790px">
                                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                                <Columns>
                                    <asp:BoundColumn DataField="Zm_ID" HeaderText="ID">
                                        <HeaderStyle Width="50px" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Zm_KcTitle" HeaderText="所属课程"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="Zm_Title" HeaderText="作业名称"></asp:BoundColumn>
                                    <asp:HyperLinkColumn DataNavigateUrlField="Zm_File" DataNavigateUrlFormatString="../UpLoad/{0}"
                                        HeaderText="作业" Target="_blank" Text="下载"></asp:HyperLinkColumn>
                                    <asp:BoundColumn DataField="Zm_Pigai" HeaderText="批改">
                                        <HeaderStyle Width="50px" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Zm_Defen" HeaderText="得分">
                                        <HeaderStyle Width="40px" />
                                    </asp:BoundColumn>
                                    <asp:HyperLinkColumn DataNavigateUrlField="Zm_UsUid" DataNavigateUrlFormatString="ShowStudent.aspx?Uid={0}"
                                        DataTextField="Zm_UsName" HeaderText="学生">
                                        <HeaderStyle Width="50px" />
                                    </asp:HyperLinkColumn>
                                    <asp:BoundColumn DataField="Zm_Date" HeaderText="提交日期">
                                        <HeaderStyle Width="70px" />
                                    </asp:BoundColumn>
                                    <asp:HyperLinkColumn DataNavigateUrlField="Zm_ID" DataNavigateUrlFormatString="ToZuoye.aspx?ID={0}"
                                        HeaderText="批改打分" Text="批改">
                                        <HeaderStyle Width="60px" />
                                    </asp:HyperLinkColumn>
                                    <asp:TemplateColumn>
                                        <HeaderTemplate>
                                            <asp:CheckBox ID="cbAll" runat="server" AutoPostBack="True" Font-Size="10pt" OnCheckedChanged="cbAll_CheckedChanged"
                                                Text="全选" />
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="cbSelect" runat="server" Font-Size="10pt" />
                                        </ItemTemplate>
                                        <HeaderStyle Width="50px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                            Font-Underline="False" HorizontalAlign="Center" />
                                    </asp:TemplateColumn>
                                </Columns>
                            </asp:DataGrid></td>
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
                            &nbsp;<asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="删除所选信息" /></div></td>
                      </tr>
                </table></td>
            </tr>
      </table>
    
    </div>
    </form>
</body>
</html>
