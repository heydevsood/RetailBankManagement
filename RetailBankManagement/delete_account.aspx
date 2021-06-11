<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="delete_account.aspx.cs" Inherits="RetailBankManagement.delete_account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 753px;
        }
        .auto-style20 {
            text-align: center;
            height: 42px;
        }
        .auto-style26 {
            height: 42px;
            width: 68px;
        }
        .auto-style27 {
            height: 42px;
            width: 69px;
        }
        .auto-style28 {
            width: 68px;
        }
        .auto-style29 {
            width: 69px;
        }
        .auto-style30 {
            height: 42px;
            width: 52px;
        }
        .auto-style31 {
            width: 52px;
        }
        .auto-style32 {
            width: 210px;
        }
        .auto-style33 {
            width: 184px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style18">
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
            <td class="auto-style20" colspan="7">
                <h1>Delete Account</h1>
            </td>
            <td class="auto-style27"></td>
            <td class="auto-style30"></td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style33">
                <asp:Label ID="Label1" runat="server" Text="Customer ID:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number">000000000</asp:TextBox>
            </td>
            <td colspan="5">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Id is 9 digit" ValidationExpression="[0-9]{9}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style33">
                <asp:Label ID="Label2" runat="server" Text="Account ID:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Number">000000000000</asp:TextBox>
            </td>
            <td colspan="5">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Acc id is 12 digit" ValidationExpression="[0-9]{12}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Button ID="Button1" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" OnClick="Button1_Click" Text="Find Account" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">*Select the account from table</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td colspan="2" rowspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="646px">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style33">Selected Account ID:</td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Button ID="Button2" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" OnClick="Button2_Click" Text="Delete Account" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Button ID="Button3" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099"  Text="Back" Width="200px" PostBackUrl="~/executive_home.aspx" />
            </td>
        </tr>
    </table>
</asp:Content>
