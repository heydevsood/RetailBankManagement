<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="account_details.aspx.cs" Inherits="RetailBankManagement.account_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 100%;
        }
        .auto-style19 {
            height: 30px;
        }
        .auto-style20 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style18">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2" colspan="7">
                <h1>Account Details</h1>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="CustomerID or SSN:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number">000000000</asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Id &amp; SSN are 9 digit" ValidationExpression="[0-9]{9}" ValidationGroup="1"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="OR"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Reset" Width="200px" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="AccountID:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Number">000000000000</asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Id is 12 digit " ValidationExpression="[0-9]{12}"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Choose Account"></asp:Label>
                :</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="100px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="View Accounts" Width="200px" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Get Details" Width="200px" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" />
            </td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Label ID="Label15" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Customer ID:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Deposit" Width="200px" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Account ID"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Account Type:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label11" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Withdraw" Width="200px" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Balance:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label12" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Status:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label13" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Transfer" Width="200px" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Label ID="Label16" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                <asp:Button ID="Button8" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" OnClick="Button8_Click" Text="Back" Width="200px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
