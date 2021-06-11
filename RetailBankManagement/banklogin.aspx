<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="banklogin.aspx.cs" Inherits="RetailBankManagement.banklogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style18 {
        width: 739px;
    }
    .auto-style24 {
        width: 81px;
    }
    .auto-style25 {
        width: 82px;
    }
    .auto-style26 {
            width: 303px;
        }
    .auto-style27 {
        height: 23px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style18">
    <tr>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style2" colspan="5">
            <h2>Employee Login</h2>
        </td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">
            <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
        </td>
        <td class="auto-style25">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style26">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Username"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">
            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
        </td>
        <td class="auto-style25">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style26">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style27" colspan="9">
            <asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="Login" Width="126px" BorderStyle="Outset" BorderColor="#000099" ForeColor="#000099" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="9">
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style26">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style26">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style26">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style26">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
    </tr>
</table>
</asp:Content>
