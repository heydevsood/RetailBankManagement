<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="executive_home.aspx.cs" Inherits="RetailBankManagement.executive_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 739px;
        }
        .auto-style25 {
            width: 67px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style18">
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style2" colspan="7">
                <h1>Customer Executive Portal</h1>
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">
                <asp:Button ID="Button1" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" OnClick="Button1_Click" Text="Create Customer" Width="200px" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">
                <asp:Button ID="Button2" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" OnClick="Button2_Click" Text="Update Customer" Width="200px" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">
                <asp:Button ID="Button3" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" Text="Delete Customer" Width="200px" OnClick="Button3_Click" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">
                <asp:Button ID="Button7" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" OnClick="Button7_Click" Text="Create Account" Width="200px" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">
                <asp:Button ID="Button6" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" Text="Delete Account" Width="200px" OnClick="Button6_Click" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">
                <asp:Button ID="Button4" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" Text="View Customer Status" Width="200px" OnClick="Button4_Click" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">
                <asp:Button ID="Button5" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" Text="View Account Status" Width="200px" OnClick="Button5_Click" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">
                <asp:Button ID="Button8" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" Text="Logout" Width="200px" OnClick="Button8_Click" />
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
