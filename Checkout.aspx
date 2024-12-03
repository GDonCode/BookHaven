<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="BookHaven.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
                                                              <%--OPEN SANS FONT--%>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&family=Lora:ital,wght@0,400..700;1,400..700&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Parkinsans:wght@300..800&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet"/>
    
    
    <style>
        body {
            font-family: "Open Sans", sans-serif;
            background-color: #f2f2f2;
        }
        .section {
            background-color: white;
            padding: 35px;
            border-radius: 5px;
            display: flex;
            flex-direction: column;
            gap: 20px;
            width: 40%;
            margin-top: 20px;
        }

        .shipping-input_container{
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        .shipping-input_label {
            font-size: 0.75rem;
        }
        .shipping-input_textbox {
            border-top: none;
            border-right: none;
            border-bottom: 1.5px solid #666666;
            border-left: none;
        }
        .order-summary_section {
            height: min-content;
        }
        .order-summary_item {
            display: flex;
            justify-content: space-between;
        }
        .total-container {
            padding: 10px 0;
            font-weight: 600;
            font-size: 1.25rem;
            margin-top: 20px;
            border-top: 1.5px solid #666666;
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="text-align: center;">
        <asp:Label ID="Label1" runat="server" Text="CHECKOUT" style="font-size: 1.75rem;letter-spacing: 3px;margin: 0 auto;font-weight: 500;"></asp:Label>
        <div style="display: flex;gap: 30px;justify-content: center;text-align: left;">

            <div class="section">
                    <asp:Label ID="Label2" runat="server" Text="SHIP TO" style="font-weight: 500;"></asp:Label>

                    <div class="shipping-input_container">
                        <asp:Label ID="Label3" runat="server" Text="Label" class="shipping-input_label" style="margin-top: 20px;">FULL NAME</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" class="shipping-input_textbox"></asp:TextBox>
                    </div>

                    <div class="shipping-input_container">
                        <asp:Label ID="Label4" runat="server" Text="Label" class="shipping-input_label">STREET ADDRESS</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" class="shipping-input_textbox"></asp:TextBox>
                    </div>

                    <div class="shipping-input_container">
                        <asp:Label ID="Label5" runat="server" Text="Label" class="shipping-input_label">TOWN/CITY</asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" class="shipping-input_textbox"></asp:TextBox>
                    </div>

                    <div style="display: flex;gap: 40px;">
                         <asp:DropDownList ID="DropDownList1" runat="server" style="width: 250px;">
                             <asp:ListItem Value="">Parish</asp:ListItem>
                             <asp:ListItem Value="Westmoreland">Westmoreland</asp:ListItem>
                             <asp:ListItem Value="Hanover">Hanover</asp:ListItem>
                             <asp:ListItem Value="St. James">St. James</asp:ListItem>
                             <asp:ListItem Value="Trelawny">Trelawny</asp:ListItem>
                             <asp:ListItem Value="St. Ann">St. Ann</asp:ListItem>
                             <asp:ListItem Value="St. Mary">St. Mary</asp:ListItem>
                             <asp:ListItem Value="Portland">Portland</asp:ListItem>
                             <asp:ListItem Value="St. Thomas">St. Thomas</asp:ListItem>
                             <asp:ListItem Value="St. Andrew">St. Andrew</asp:ListItem>
                             <asp:ListItem Value="Kingston">Kingston</asp:ListItem>
                             <asp:ListItem Value="St. Catherine">St. Catherine</asp:ListItem>
                             <asp:ListItem Value="Clarendon">Clarendon</asp:ListItem>
                             <asp:ListItem Value="Manchester">Manchester</asp:ListItem>
                             <asp:ListItem Value="St. Elizabeth">St. Elizabeth</asp:ListItem>
                         </asp:DropDownList>

                         <div class="shipping-input_container">
                             <asp:Label ID="Label6" runat="server" Text="ZIP CODE" class="shipping-input_label"></asp:Label>
                             <asp:TextBox ID="TextBox4" runat="server" class="shipping-input_textbox"></asp:TextBox>
                         </div>
                    </div>

                    <div class="shipping-input_container">
                        <asp:Label ID="Label7" runat="server" Text="PHONE NUMBER" class="shipping-input_label"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" class="shipping-input_textbox"></asp:TextBox>
                    </div>
               </div>


            <div class="section order-summary_section">
                <asp:Label ID="Label8" runat="server" Text="ORDER SUMMARY" style="font-weight: 500;"></asp:Label>
                
                <div style="display: flex;flex-direction: column;">
                    <div class="order-summary_item">
                        <asp:Label ID="Label9" runat="server" Text="Subtotal"></asp:Label>
                        <asp:Label ID="Label10" runat="server" Text="$0.00"></asp:Label>
                    </div>

                    <div class="order-summary_item">
                        <asp:Label ID="Label11" runat="server" Text="Savings"></asp:Label>
                        <asp:Label ID="Label12" runat="server" Text="$0.00"></asp:Label>
                    </div>

                    <div class="order-summary_item">
                        <asp:Label ID="Label13" runat="server" Text="Shipping"></asp:Label>
                        <asp:Label ID="Label14" runat="server" Text="$0.00"></asp:Label>
                    </div>

                    <div class="order-summary_item">
                        <asp:Label ID="Label15" runat="server" Text="Est. Tax"></asp:Label>
                        <asp:Label ID="Label16" runat="server" Text="$0.00"></asp:Label>
                    </div>

                    <div class="total-container">
                        <asp:Label ID="Label17" runat="server" Text="TOTAL"></asp:Label>
                        <asp:Label ID="Label18" runat="server" Text="$0.00"></asp:Label>
                    </div>
                </div>
             </div>

         </div>
    </form>
</body>
</html>
