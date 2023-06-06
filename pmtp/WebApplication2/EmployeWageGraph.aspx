<%@ Page Language="C#" AutoEventWireup="true" Codefile="EmployeWageGraph.aspx.cs" Inherits="WebApplication2.EmployeWageGraph" %>

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
            width: 756px;
        }
        .auto-style3 {
            text-align: center;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Personel Maaşları Grafik Raporu</strong></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="202px" Width="352px">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="Personel" YValueMembers="Toplam">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
                <td>
                    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1" Height="202px" Width="352px">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="Yil" YValueMembers="Toplam">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Formu Kapat" OnClientClick="window.close()" />
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [tbl.Employeees].Empl_FName AS Personel, EmployeeWages.Wage_Year AS Yil, SUM(EmployeeWages.Wage_Total) AS Toplam FROM EmployeeWages INNER JOIN [tbl.Employeees] ON EmployeeWages.Empl_ID = [tbl.Employeees].Empl_ID GROUP BY EmployeeWages.Wage_Year, [tbl.Employeees].Empl_FName"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
