<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDataEntry.aspx.cs" Inherits="WebApplication2.EmployeeDataEntry" %>

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
            font-size: large;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 29px;
        }
        .auto-style5 {
            height: 26px;
            width: 426px;
        }
        .auto-style6 {
            width: 426px;
        }
        .auto-style7 {
            height: 29px;
            width: 426px;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            height: 26px;
            width: 435px;
        }
        .auto-style10 {
            width: 435px;
        }
        .auto-style11 {
            height: 29px;
            width: 435px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="4"><strong>Personel Veri Giriş Formu</strong></td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Adı:<br />
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" Width="221px"></asp:TextBox>
            </td>
            <td class="auto-style9">Soyadı:<asp:TextBox ID="TextBox1" runat="server" Width="195px"></asp:TextBox>
                <br />
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>Cinsiyet:</td>
            <td class="auto-style6">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">Erkek</asp:ListItem>
                    <asp:ListItem Value="2">Kadın</asp:ListItem>
                    <asp:ListItem Selected="True" Value="3">Belirtmek İstemiyorum</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style10">Aktif mi ?<asp:CheckBox ID="CheckBox1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Doğ. Tarihi</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server" Width="221px" TextMode="Date"></asp:TextBox>
            </td>
            <td class="auto-style10">İşe Giriş Tarihi<asp:TextBox ID="TextBox4" runat="server" Width="221px" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Unvanı:</td>
            <td class="auto-style7">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="LK_Id">
                </asp:DropDownList>
            </td>
            <td class="auto-style11">Bölümü:<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Dept_Name" DataValueField="Dept_ID">
                </asp:DropDownList>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Cep Tel:</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox5" runat="server" Width="221px"></asp:TextBox>
            </td>
            <td class="auto-style11">İş Tel:
                <asp:TextBox ID="TextBox8" runat="server" Width="221px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox6" runat="server" Width="221px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Adres:</td>
            <td colspan="3">
                <asp:TextBox ID="TextBox7" runat="server" Width="995px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>İlcesi:</td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Province" DataValueField="Province">
                </asp:DropDownList>
            </td>
            <td class="auto-style10">İli:</td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="City" DataValueField="City">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" Text="Verileri Kaydet" OnClick="Button1_Click" />
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [LK_Id], [Title] FROM [tbl_Lookups]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
            </td>
            <td class="auto-style10">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Province] FROM [tbl_Lookups]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [City] FROM [tbl_Lookups]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_FName], [Empl_LName], [Gender_ID], [Is_Empl_Active], [Empl_BDate], [Empl_Start_Date], [Title_ID], [Dept_ID], [Empl_Cell], [Empl_Phone], [Empl_Email], [Empl_Adress], [Empl_Province], [Empl_City] FROM [tbl.Employeees]" InsertCommand="INSERT INTO [tbl.Employeees] (Empl_FName, Empl_LName, Gender_ID, Is_Empl_Active, Empl_BDate, Empl_Start_Date, Title_ID, Dept_ID, Empl_Cell, Empl_Phone, Empl_Email, Empl_Adress, Empl_Province, Empl_City) VALUES (@Empl_FName, @Empl_LName, @Gender_ID, @Is_Empl_Active, @Empl_BDate, @Empl_Start_Date, @Title_ID, @Dept_ID, @Empl_Cell, @Empl_Phone, @Empl_Email, @Empl_Adress, @Empl_Province, @Empl_City)">
                    <InsertParameters>
                        <asp:Parameter Name="Empl_FName" />
                        <asp:Parameter Name="Empl_LName" />
                        <asp:Parameter Name="Gender_ID" />
                        <asp:Parameter Name="Is_Empl_Active" />
                        <asp:Parameter Name="Empl_BDate" />
                        <asp:Parameter Name="Empl_Start_Date" />
                        <asp:Parameter Name="Title_ID" />
                        <asp:Parameter Name="Dept_ID" />
                        <asp:Parameter Name="Empl_Cell" />
                        <asp:Parameter Name="Empl_Phone" />
                        <asp:Parameter Name="Empl_Email" />
                        <asp:Parameter Name="Empl_Adress" />
                        <asp:Parameter Name="Empl_Province" />
                        <asp:Parameter Name="Empl_City" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
        <div class="auto-style8">
            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Mesaj Kutusu" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>

