<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeComList.aspx.cs" Inherits="WebApplication2.EmployeComList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Personel İletişim Raporu</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                            	<tr style ="background-color:lavender;">
	                                <td>ID</td>
	                                <td>Isim</td>
	                                <td>Tel</td>
	                                <td>Cep</td>
	                                <td>Email</td>
                                    <td>Bölüm</td>
                                    <td>Unvan</td>
	                            </tr>
                            <tr></tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                         <tr style ="background-color: aqua;">
                                    <td><%# Eval("Empl_ID") %></td>
                                    <td><%# Eval("Empl_Name") %></td>
                                    <td><%# Eval("Empl_Phone") %></td>
                                    <td><%# Eval("Empl_Cell") %></td>
                                    <td><%# Eval("Empl_Email") %></td>
                                    <td><%# Eval("Dept_Name") %></td>
                                    <td><%# Eval("Title") %></td>
                                </tr>                         
                          </ItemTemplate>
                        <AlternatingItemTemplate>
                             <tr style ="background-color: burlywood;">
                                    <td><%# Eval("Empl_ID") %></td>
                                    <td><%# Eval("Empl_Name") %></td>
                                    <td><%# Eval("Empl_Phone") %></td>
                                    <td><%# Eval("Empl_Cell") %></td>
                                    <td><%# Eval("Empl_Email") %></td>
                                    <td><%# Eval("Dept_Name") %></td>
                                    <td><%# Eval("Title") %></td>
                                </tr>   
                        </AlternatingItemTemplate>
                    </asp:Repeater>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Sayfayı Kapat" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [tbl.Employeees] .Empl_ID, [tbl.Employeees].Empl_Name, [tbl.Employeees].Empl_Phone, [tbl.Employeees].Empl_Cell, [tbl.Employeees].Empl_Email, tbl_Departments.Dept_Name, tbl_Lookups.Title FROM [tbl.Employeees] INNER JOIN tbl_Departments ON [tbl.Employeees].Dept_ID = tbl_Departments.Dept_ID INNER JOIN tbl_Lookups ON [tbl.Employeees].Title_ID = tbl_Lookups.LK_ID"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
