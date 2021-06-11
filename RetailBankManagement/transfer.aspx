<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="transfer.aspx.cs" Inherits="RetailBankManagement.transfer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 739px;
        }
        .auto-style25 {
            width: 67px;
        }
        .auto-style26 {
            width: 527px;
        }
        .auto-style27 {
            width: 287px;
        }
        .auto-style28 {
            width: 481px;
        }
        .auto-style29 {
            width: 67px;
            height: 23px;
        }
        .auto-style30 {
            width: 527px;
            height: 23px;
        }
        .auto-style31 {
            width: 287px;
            height: 23px;
        }
        .auto-style32 {
            width: 481px;
            height: 23px;
        }
        .auto-style33 {
            width: 191px;
        }
        .auto-style34 {
            width: 191px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style18">
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style2" colspan="7">
                <h1>Transfer Portal</h1>
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
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
                <asp:Label ID="Label1" runat="server" Text="Transfer Amount:"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
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
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
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
                <asp:Label ID="Label2" runat="server" Text="Customer ID:"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
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
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
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
                <asp:Label ID="Label3" runat="server" Text="Source Account:"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style28">
                <asp:Label ID="Label7" runat="server" Text="Source Balance:"></asp:Label>
            </td>
            <td class="auto-style33">
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style30">
                <asp:Label ID="Label4" runat="server" Text="Target Account:"></asp:Label>
            </td>
            <td class="auto-style31">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td class="auto-style32">
                <asp:Label ID="Label8" runat="server" Text="Target Balance:"></asp:Label>
            </td>
            <td class="auto-style34">
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Transfer" Width="200px" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" />
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">
                <asp:Label ID="Label11" runat="server" Text="Source Account ID:"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:Label ID="Label18" runat="server"></asp:Label>
            </td>
            <td class="auto-style28">
                <asp:Label ID="Label12" runat="server" Text="Target Account ID:"></asp:Label>
            </td>
            <td class="auto-style33">
                <asp:Label ID="Label21" runat="server"></asp:Label>
            </td>
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
                <asp:Label ID="Label13" runat="server" Text="Source Account Balance Before Transfer:"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:Label ID="Label19" runat="server"></asp:Label>
            </td>
            <td class="auto-style28">
                <asp:Label ID="Label14" runat="server" Text="Target Account Balance Before Transfer:"></asp:Label>
            </td>
            <td class="auto-style33">
                <asp:Label ID="Label22" runat="server"></asp:Label>
            </td>
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
                <asp:Label ID="Label15" runat="server" Text="Source Account Lastest Balance:"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:Label ID="Label20" runat="server"></asp:Label>
            </td>
            <td class="auto-style28">
                <asp:Label ID="Label16" runat="server" Text="Target Account Latest Balance:"></asp:Label>
            </td>
            <td class="auto-style33">
                <asp:Label ID="Label23" runat="server"></asp:Label>
            </td>
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
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
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
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
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
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" Width="200px" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Label ID="Label17" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
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
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
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
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
