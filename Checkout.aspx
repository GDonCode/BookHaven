<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="BookHaven.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Checkout"></asp:Label>
            <div>
                <asp:Label ID="Label2" runat="server" Text="SHIP TO"></asp:Label>

                <asp:Label ID="Label3" runat="server" Text="Label">Full Name</asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                <asp:Label ID="Label4" runat="server" Text="Label">Street Address</asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Street Address"></asp:TextBox>

                <asp:Label ID="Label5" runat="server" Text="Label">Town</asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Town"></asp:TextBox>
                <div>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Westmoreland</asp:ListItem>
                        <asp:ListItem>Hanover</asp:ListItem>
                        <asp:ListItem>St. James</asp:ListItem>
                        <asp:ListItem>Trelawny</asp:ListItem>
                        <asp:ListItem>St. Ann</asp:ListItem>
                        <asp:ListItem>St. Mary</asp:ListItem>
                        <asp:ListItem>Portland</asp:ListItem>
                        <asp:ListItem>St. Thomas</asp:ListItem>
                        <asp:ListItem>St. Andrew</asp:ListItem>
                        <asp:ListItem>Kingston</asp:ListItem>
                        <asp:ListItem>St. Catherine</asp:ListItem>
                        <asp:ListItem>Clarendon</asp:ListItem>
                        <asp:ListItem>Manchester</asp:ListItem>
                        <asp:ListItem>St. Elizabeth</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox4" runat="server" placeholde="Zip Code"></asp:TextBox>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
