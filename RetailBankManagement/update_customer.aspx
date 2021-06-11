<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="update_customer.aspx.cs" Inherits="RetailBankManagement.update_customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 739px;
        }
        .auto-style25 {
            width: 67px;
        }
        .auto-style26 {
            width: 96px;
        }
        .auto-style27 {
            width: 173px;
        }
        .auto-style28 {
            width: 325px;
        }
        .auto-style29 {
            width: 67px;
            height: 23px;
        }
        .auto-style30 {
            width: 96px;
            height: 23px;
        }
        .auto-style31 {
            width: 173px;
            height: 23px;
        }
        .auto-style32 {
            width: 325px;
            height: 23px;
        }
        .auto-style33 {
            width: 104px;
        }
        .auto-style34 {
            width: 104px;
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
                <h1>Update Customer</h1>
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">
                <asp:Label ID="Label1" runat="server" Text="SSN NO.:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number">000000000</asp:TextBox>
            </td>
            <td class="auto-style28">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*SSN is 9 digit" ValidationExpression="[0-9]{9}"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">
                <asp:Label ID="Label2" runat="server" Text="Customer ID:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Number">000000000</asp:TextBox>
            </td>
            <td class="auto-style28">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Id is 9 digit" ValidationExpression="[0-9]{9}"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Button ID="Button1" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" OnClick="Button1_Click" Text="Edit Details" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style30"></td>
            <td class="auto-style31"></td>
            <td class="auto-style29"></td>
            <td class="auto-style32"></td>
            <td class="auto-style34"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">
                <asp:Label ID="Label4" runat="server" Text="SSN NO.:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:Label ID="Label13" runat="server"></asp:Label>
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
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">
                <asp:Label ID="Label5" runat="server" Text="Customer ID:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:Label ID="Label14" runat="server"></asp:Label>
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
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">
                <asp:Label ID="Label6" runat="server" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
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
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">
                <asp:Label ID="Label7" runat="server" Text="Address 1:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
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
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">
                <asp:Label ID="Label8" runat="server" Text="Address 2:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
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
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">
                <asp:Label ID="Label9" runat="server" Text="State:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
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
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">
                <asp:Label ID="Label10" runat="server" Text="City:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style28">
                <asp:Label ID="Label16" runat="server" Text="Current City ID:"></asp:Label>
            </td>
            <td class="auto-style33">
                <asp:Label ID="Label17" runat="server"></asp:Label>
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">
                <asp:Label ID="Label11" runat="server" Text="DOB:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox6" runat="server" AutoPostBack="True" OnTextChanged="TextBox6_TextChanged" TextMode="Date"></asp:TextBox>
            </td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style33">
                <asp:Label ID="Label12" runat="server"></asp:Label>
            </td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update Customer" Width="203px" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Label ID="Label15" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Button ID="Button3" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" OnClick="Button1_Click" Text="Back" Width="200px" PostBackUrl="~/executive_home.aspx" />
            </td>
        </tr>
    </table>
</asp:Content>
