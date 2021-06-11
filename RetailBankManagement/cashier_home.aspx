<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="cashier_home.aspx.cs" Inherits="RetailBankManagement.cashier_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 739px;
        }
        .auto-style32 {
            width: 67px;
        }
        .auto-style33 {
            height: 23px;
            width: 67px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style18">
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style2" colspan="7">
                <h1>Cashier/Teller Portal</h1>
            </td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style33"></td>
            <td class="auto-style33"></td>
            <td class="auto-style33"></td>
            <td class="auto-style33"></td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style33"></td>
            <td class="auto-style33"></td>
            <td class="auto-style33"></td>
            <td class="auto-style33"></td>
            <td class="auto-style33"></td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">
                <asp:Button ID="Button1" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" Height="50px" OnClick="Button1_Click" Text="Get Account Details" Width="200px" />
            </td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">
                <asp:Button ID="Button3" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" Height="50px" OnClick="Button3_Click" Text="Get Account Statement" Width="200px" />
            </td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">
                <asp:Button ID="Button2" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" Text="Logout" Width="200px" OnClick="Button2_Click" />
            </td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
