<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="create_customer.aspx.cs" Inherits="RetailBankManagement.create_customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 739px;
        }
        .auto-style24 {
            width: 67px;
        }
        .auto-style25 {
            width: 67px;
            height: 23px;
        }
        .auto-style26 {
            width: 228px;
            height: 23px;
        }
        .auto-style27 {
            width: 228px;
        }
        .auto-style28 {
            width: 283px;
            height: 23px;
        }
        .auto-style29 {
            width: 283px;
        }
        .auto-style30 {
            width: 67px;
            height: 26px;
        }
        .auto-style31 {
            width: 283px;
            height: 26px;
        }
        .auto-style32 {
            width: 228px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style18">
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td colspan="7">
                <h1 class="auto-style2">Create Customer</h1>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style28">
                <asp:Label ID="Label1" runat="server" Text="Customer SSN:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td class="auto-style26">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*SSN is 9 digit" ValidationExpression="[0-9]{9}"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style29">
                <asp:Label ID="Label2" runat="server" Text="Customer Name:"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style27">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Required"></asp:RequiredFieldValidator>
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
            <td class="auto-style29">
                <asp:Label ID="Label3" runat="server" Text="Date of Birth:"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True" OnTextChanged="TextBox5_TextChanged" TextMode="Date"></asp:TextBox>
            </td>
            <td class="auto-style27">
                <asp:Label ID="Label8" runat="server"></asp:Label>
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
            <td class="auto-style29">
                <asp:Label ID="Label4" runat="server" Text="Address line 1:"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style27">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Required"></asp:RequiredFieldValidator>
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
            <td class="auto-style29">
                <asp:Label ID="Label5" runat="server" Text="Address line 2:"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style27">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Required"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
            <td class="auto-style31">
                <asp:Label ID="Label6" runat="server" Text="State:"></asp:Label>
            </td>
            <td class="auto-style30">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style32"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style29">
                <asp:Label ID="Label7" runat="server" Text="City:"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style27">&nbsp;</td>
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
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style24">
                <asp:Button ID="Button6" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" OnClick="Button6_Click" Text="Create Customer" Width="200px" />
            </td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
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
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style24">
                <asp:Button ID="Button2" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099"  Text="Back" Width="200px" PostBackUrl="~/executive_home.aspx" />
            </td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
