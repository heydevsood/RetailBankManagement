<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="create_account.aspx.cs" Inherits="RetailBankManagement.create_account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 739px;
        }
        .auto-style24 {
            width: 67px;
        }
        .auto-style25 {
            width: 308px;
        }
        .auto-style26 {
            width: 77px;
        }
        .auto-style27 {
            width: 372px;
        }
        .auto-style32 {
            height: 23px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style18">
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td colspan="7">
                <h1 class="auto-style2">Create Account</h1>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">
                <asp:Label ID="Label1" runat="server" Text="Customer ID:"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*ID is 9 digit" ValidationExpression="[0-9]{9}"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">
                <asp:Label ID="Label2" runat="server" Text="Account Type:"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="S">SAVING</asp:ListItem>
                    <asp:ListItem Value="C">CURRENT</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">
                <asp:Label ID="Label3" runat="server" Text="Deposite Amount:"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Enter Amount"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style24">
                <asp:Button ID="Button7" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" OnClick="Button7_Click" Text="Create Account" Width="200px" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32" colspan="11">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style24">
                <asp:Button ID="Button2" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099"  Text="Back" Width="200px" PostBackUrl="~/executive_home.aspx" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
