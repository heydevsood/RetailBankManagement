<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="withdraw.aspx.cs" Inherits="RetailBankManagement.withdraw" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 739px;
        }
        .auto-style25 {
            width: 67px;
        }
        .auto-style26 {
            width: 433px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style18">
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style2" colspan="7">
                <h1>Withdraw Portal</h1>
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">
                <asp:Label ID="Label1" runat="server" Text="Customer ID:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:Label ID="Label6" runat="server"></asp:Label>
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
            <td class="auto-style26">
                <asp:Label ID="Label2" runat="server" Text="Account ID:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:Label ID="Label7" runat="server"></asp:Label>
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
            <td class="auto-style26">
                <asp:Label ID="Label3" runat="server" Text="Account Type:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:Label ID="Label8" runat="server"></asp:Label>
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
            <td class="auto-style26">
                <asp:Label ID="Label4" runat="server" Text="Balance:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:Label ID="Label9" runat="server"></asp:Label>
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
            <td class="auto-style26">
                <asp:Label ID="Label5" runat="server" Text="Withdraw Amount:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
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
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style25">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Withdraw" Width="200px" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" />
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
            <td class="auto-style26">&nbsp;</td>
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
            <td class="auto-style26">
                <asp:Label ID="Label10" runat="server" Text="Customer ID:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:Label ID="Label14" runat="server"></asp:Label>
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
            <td class="auto-style26">
                <asp:Label ID="Label11" runat="server" Text="Account ID:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:Label ID="Label15" runat="server"></asp:Label>
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
            <td class="auto-style26">
                <asp:Label ID="Label12" runat="server" Text="Balance Before Withdraw:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:Label ID="Label16" runat="server"></asp:Label>
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
            <td class="auto-style26">
                <asp:Label ID="Label13" runat="server" Text="Lastest Balance:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:Label ID="Label17" runat="server"></asp:Label>
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
            <td class="auto-style26">&nbsp;</td>
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
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style25">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" Width="200px" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" />
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
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Label ID="Label18" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
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
            <td class="auto-style26">&nbsp;</td>
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
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
