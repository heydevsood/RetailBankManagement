<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="view_customer.aspx.cs" Inherits="RetailBankManagement.view_customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 739px;
        }
        .auto-style28 {
            width: 67px;
        }
        .auto-style29 {
            height: 23px;
            width: 67px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style18">
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td colspan="7">
                <h1 class="auto-style2">View Customer Status</h1>
            </td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">
                <asp:Label ID="Label1" runat="server" Text="Select Status:"></asp:Label>
            </td>
            <td class="auto-style28">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="1">Active</asp:ListItem>
                    <asp:ListItem Value="0">Inactive</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">
                <asp:Button ID="Button1" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099" OnClick="Button1_Click" Text="Reset" Width="200px" />
            </td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td colspan="7" rowspan="5">
                <asp:GridView ID="GridView1" runat="server" Width="699px" AutoGenerateColumns ="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <Columns>
                        <asp:BoundField HeaderText="Sr no." DataField="Sr. no"/>
                        <asp:BoundField HeaderText="CustomerID" DataField="CustomerID" />
                        <asp:BoundField HeaderText="SSN" DataField="SSN"/>
                        <asp:BoundField HeaderText="Name" DataField="Name" />
                        <asp:BoundField DataFormatString="{0:d}" HeaderText="DOB" DataField="DOB" />
                        <asp:BoundField HeaderText="Address" DataField="Address" />
                         <asp:BoundField HeaderText="Status" DataField="Status" />
                    </Columns>
                    
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                    
                </asp:GridView>
            </td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
            <td class="auto-style29"></td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">
                <asp:Button ID="Button2" runat="server" BorderColor="#000099" BorderStyle="Outset" ForeColor="#000099"  Text="Back" Width="200px" PostBackUrl="~/executive_home.aspx" />
            </td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
