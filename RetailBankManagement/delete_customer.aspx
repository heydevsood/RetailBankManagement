<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="delete_customer.aspx.cs" Inherits="RetailBankManagement.delete_customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 739px;
        }
        .auto-style24 {
            width: 67px;
        }
        .auto-style25 {
            width: 229px;
        }
        .auto-style26 {
            width: 153px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style18">
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td colspan="7">
                <h1 class="auto-style2">Delete Customer</h1>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">
                <asp:Label ID="Label1" runat="server" Text="SSN NO.:"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number">000000000</asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*SSN is 9 digit" ValidationExpression="[0-9]{9}"></asp:RegularExpressionValidator>
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
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">
                <asp:Label ID="Label2" runat="server" Text="Customer ID:"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Number">000000000</asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Id is 9 digit" ValidationExpression="[0-9]{9}"></asp:RegularExpressionValidator>
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
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style24">
                <asp:Button ID="Button1" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" OnClick="Button1_Click" Text="Find Customer" Width="200px" style="height: 26px" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">
                <asp:Label ID="Label4" runat="server" Text="SSN NO.:"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:Label ID="Label7" runat="server"></asp:Label>
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
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">
                <asp:Label ID="Label5" runat="server" Text="Customer ID:"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:Label ID="Label8" runat="server"></asp:Label>
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
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">
                <asp:Label ID="Label6" runat="server" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:Label ID="Label9" runat="server"></asp:Label>
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
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style24">
                <asp:Button ID="Button2" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" OnClick="Button2_Click" Text="Delete Customer" Width="200px" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
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
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style24">
                <asp:Button ID="Button3" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099"  Text="Back" Width="200px" PostBackUrl="~/executive_home.aspx" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
