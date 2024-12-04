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
        html, body {
            padding: 0; 
            margin: 0; 
            width: 100%;
            height: 100%;
            font-family: "Open Sans", sans-serif;
            background-color: #f2f2f2;
            display: flex;
            flex-direction: column;
        }
        .section {
            background-color: white;
            padding: 35px;
            border-radius: 5px;
            display: flex;
            flex-direction: column;
            gap: 15px;
            margin-top: 20px;
            width: 95%;
            border: 2px solid #f5e04d;
        }

        .shipping-input_container{
            display: flex;
            flex-direction: column;
            gap: 10px;
            position: relative;
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
            width: 31%;
            position: fixed;
            top: 198px;
            right: 90px;
            margin-bottom: 60px;
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

        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 80px;
            left: 0px;
            background-color: #4DF5E0;
            display: flex;
            justify-content: space-around;
            padding: 10px;
        }
        .footer-heading {
            font-size: 1.25rem;
            font-weight: 500;
        }
        }
        .nav-link a {
             text-decoration: none;
             position: relative;
             display: inline-block;
        }
        .nav-link {
             padding-bottom: 2px;
             border-bottom: 2px transparent;
             font-size: 1.25rem;
             transition: font-size 0.3s ease;
             text-decoration: none;
             position: relative;
             display: inline-block;
             color: black;
        }
        .nav-link:hover {
            border-bottom: 2px solid #f5e04d;
            font-size: 1.5rem;
        }
        .nav-link_container {
            display: flex;
            gap: 50px;
        }
        .main  {
            padding: 20px 0;
            flex-grow: 1;
            margin-bottom: 150px;
        }
        .continueBtn {
            cursor: pointer;
            background-color: #f5e04d;
            border: 2px solid black;
            font-size: 1.5rem;
            transition: font-size 0.3s ease, width 0.3s ease;
            margin: 0 auto;
            padding: 5px 0;
            width: 200px;
        }
        .continueBtn:hover {
            font-size: 1.75rem;
            width: 220px;
        }
        .validation {
            display: flex;
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="position: relative;">
                                   
                                    <%--  NAV--%>
<div style="background-color: #4DF5E0; display: flex;align-items: center;justify-content: center;padding: 10px 0;">
                                 <%--  NAV LINKS --%>
    <div class="nav-link_container">
        <a href="Browse.aspx" class="nav-link">
            <asp:Image ID="Image8" runat="server" Height="20px" Width="20px" ImageUrl="~/Content/images/books.png"/>
            <asp:Label ID="Label19" runat="server" Text="Browse Books"></asp:Label>
        </a>
        <a href="User.aspx" class="nav-link">
            <asp:Image ID="Image9" runat="server" Height="20px" Width="20px" ImageUrl="~/Content/images/user.png" />
            <asp:Label ID="Label20" runat="server" Text="User Account" ></asp:Label>
        </a>
    </div>
    <a href="Home.aspx" style="text-decoration: none;color: black;"><asp:Image ID="Image1" runat="server" Height="120px" ImageUrl="~/Content/images/logo1.png" Width="120px" style="margin: 0 20px;"/></a>
    <div class="nav-link_container">
        <a href="Contact.aspx" class="nav-link">
            <asp:Image ID="Image10" runat="server" Height="20px" Width="20px" ImageUrl="~/Content/images/contact-us.png" />
            <asp:Label ID="Label21" runat="server" Text="Contact Us"></asp:Label>
        </a>
        <a href="Cart.aspx" class="nav-link">
            <asp:Image ID="Image11" runat="server" Height="20px" Width="20px" ImageUrl="~/Content/images/shopping-cart.png" />
            <asp:Label ID="Label22" runat="server" Text="Shopping Cart"></asp:Label>
        </a>
    </div>
</div>
                                          
<div class="main">
        <div style="display: flex;justify-content: left;">
            <div style="display: flex;flex-direction: column;gap: 30px;justify-content: center;text-align: left;padding-left: 90px;width: 45%;">
                <asp:Label ID="Label1" runat="server" Text="CHECKOUT" style="font-size: 1.75rem;letter-spacing: 1.5px;margin: 0 auto;"></asp:Label>
                
                                                                     <%-- ITEMS--%>
                <div class="section" style="margin-top: -15px;">
                    <asp:Label ID="Label30" runat="server" Text="ITEMS" style="font-weight: 700;"></asp:Label>
                </div>

                                                        <%--SHIP TO SECTION--%>
                <div class="section">
                    <asp:Label ID="Label2" runat="server" Text="SHIP TO" style="font-weight: 700;"></asp:Label>

                    <div class="shipping-input_container">
                        <asp:Label ID="Label3" runat="server" Text="Label" class="shipping-input_label" style="margin-top: 20px;">FULL NAME</asp:Label>
                        <div style="display: flex;flex-direction: column;">
                            <asp:TextBox ID="FullName_textbox" runat="server" class="shipping-input_textbox"></asp:TextBox>
                            <div class="validation">
                                <asp:RegularExpressionValidator ID="FullNameValidator1" runat="server" ErrorMessage="Invalid name entered." ControlToValidate="FullName_textbox" ValidationExpression="^[a-zA-Z-]{2,}\s+[a-zA-Z-]{2,}$" class="shipping-input_label"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="FullNameValidator2" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="FullName_textbox" class="shipping-input_label"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <div class="shipping-input_container">
                        <asp:Label ID="Label4" runat="server" Text="Label" class="shipping-input_label">STREET ADDRESS</asp:Label>
                        <div style="display: flex;flex-direction: column;">
                            <asp:TextBox ID="StreetAddress_textbox" runat="server" class="shipping-input_textbox"></asp:TextBox>
                             <div class="validation">
                                <asp:RegularExpressionValidator ID="StreetAddressValidator2" runat="server" ErrorMessage="Invalid street address entered." ControlToValidate="StreetAddress_textbox" ValidationExpression="^\d+\s+[a-zA-Z0-9\s,.-]+(\s*(Apt|Suite|Unit)?\s*\d+)?$" class="shipping-input_label"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="StreetAddressValidator1" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="StreetAddress_textbox" class="shipping-input_label"></asp:RequiredFieldValidator>
                             </div>
                        </div>
                    </div>

                    <div class="shipping-input_container">
                        <asp:Label ID="Label5" runat="server" Text="Label" class="shipping-input_label">TOWN/CITY</asp:Label>
                        <div style="display: flex;flex-direction: column;">
                            <asp:TextBox ID="Town_textbox" runat="server" class="shipping-input_textbox"></asp:TextBox>
                            <div class="validation">
                                <asp:RegularExpressionValidator ID="TownValidator2" runat="server" ErrorMessage="Invalid Town/City entered." ControlToValidate="Town_textbox" ValidationExpression="^[a-zA-Z\s.-]+$" class="shipping-input_label"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="TownValidator1" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="Town_textbox" class="shipping-input_label"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                   </div>

                    <div style="display: flex;justify-content: space-around;">
                         <asp:DropDownList ID="Parish_dropdown" runat="server" style="width: 250px;height: 3rem;" class="shipping-input_label">
                             <asp:ListItem Value="">PARISH</asp:ListItem>
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
                        <asp:RequiredFieldValidator ID="ParishValidator1" runat="server" ErrorMessage="Choose a Parish." ControlToValidate="Parish_dropdown" class="shipping-input_label"></asp:RequiredFieldValidator>

                         <div class="shipping-input_container">
                             <asp:Label ID="Label6" runat="server" Text="ZIP CODE" class="shipping-input_label"></asp:Label>
                             <div style="display: flex;flex-direction: column;">
                                <asp:TextBox ID="ZipCode_textbox" runat="server" class="shipping-input_textbox"></asp:TextBox>
                                <div class="validation">
                                     <asp:RegularExpressionValidator ID="ZipCodeValidator2" runat="server" ErrorMessage="Invalid Zip Code entered." ControlToValidate="ZipCode_textbox" ValidationExpression="^\d{5}(-\d{4})?$" class="shipping-input_label"></asp:RegularExpressionValidator>
                                     <asp:RequiredFieldValidator ID="ZipCodeValidator1" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="ZipCode_textbox" class="shipping-input_label"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="shipping-input_container">
                        <asp:Label ID="Label7" runat="server" Text="PHONE NUMBER" class="shipping-input_label"></asp:Label>
                        <div style="display: flex;flex-direction: column;">
                            <asp:TextBox ID="PhoneNumber_textbox" runat="server" class="shipping-input_textbox"></asp:TextBox>
                            <div class="validation">
                                <asp:RegularExpressionValidator ID="PhoneNumberValidator2" runat="server" ErrorMessage="Invalid phone number entered." ControlToValidate="PhoneNumber_textbox" ValidationExpression="^(\+1\s?)?(\(\d{3}\)|\d{3})[\s\-]?\d{3}[\s\-]?\d{4}$" class="shipping-input_label"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="PhoneNumberValidator1" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="PhoneNumber_textbox" class="shipping-input_label"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>
                                                         <%-- PAYMENT SECTION--%>
               <div class="section" style="margin-bottom: 20px;padding-bottom: 20px;">
                   <asp:Label ID="Label31" runat="server" Text="PAYMENT" style="font-weight: 700;"></asp:Label>
                   
                   <div class="shipping-input_container">
                       <asp:Label ID="Label23" runat="server" Text="CREDIT CARD NUMBER" class="shipping-input_label"></asp:Label>
                       <div style="display: flex;flex-direction: column;">
                            <asp:TextBox ID="CreditCardNumber_textbox" runat="server" class="shipping-input_textbox"></asp:TextBox>
                            <div class="validation">
                               <asp:RegularExpressionValidator ID="CreditCardNumberValidator2" runat="server" ErrorMessage="Invalid Credit Card number entered." ControlToValidate="CreditCardNumber_textbox" ValidationExpression="^(\d{4}[\s\-]?){3}\d{4}$" class="shipping-input_label"></asp:RegularExpressionValidator>
                               <asp:RequiredFieldValidator ID="CreditCardNumberValidator1" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="CreditCardNumber_textbox" class="shipping-input_label"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                   </div>
                
                                                       
                   <div style="display: flex;gap: 10px;">     
                           <div class="shipping-input_container">
                               <asp:Label ID="monthlabel" runat="server" Text="EXP. MONTH" class="shipping-input_label"></asp:Label>
                               <div style="display: flex;flex-direction: column;">
                                    <asp:TextBox ID="ExpMonth_textbox" runat="server" class="shipping-input_textbox"></asp:TextBox>
                                    <div class="validation">
                                       <asp:RegularExpressionValidator ID="ExpMonthValidator2" runat="server" ErrorMessage="Invalid Expiry Month entered." ControlToValidate="ExpMonth_textbox" ValidationExpression="^(0[1-9]|1[0-2])$" class="shipping-input_label"></asp:RegularExpressionValidator>
                                       <asp:RequiredFieldValidator ID="ExpMonthValidator1" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="ExpMonth_textbox" class="shipping-input_label"></asp:RequiredFieldValidator>
                                    </div>
                               </div>
                           </div>
                           <div class="shipping-input_container">
                               <asp:Label ID="yearlabel" runat="server" Text="EXP. YEAR" class="shipping-input_label"></asp:Label>
                               <div style="display: flex;flex-direction: column;">
                                    <asp:TextBox ID="ExpYear_textbox" runat="server" class="shipping-input_textbox"></asp:TextBox>
                                    <div class="validation">
                                       <asp:RegularExpressionValidator ID="ExpYearValidator1" runat="server" ErrorMessage="Invalid Expiry Year entered." ControlToValidate="ExpYear_textbox"  ValidationExpression="^(20[2-9][5-9]|2[1-9]\d{2})$" class="shipping-input_label"></asp:RegularExpressionValidator>
                                       <asp:RequiredFieldValidator ID="ExpYearValidator2" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="ExpYear_textbox" class="shipping-input_label"></asp:RequiredFieldValidator>
                                    </div>
                               </div>
                          </div>
                    
                           <div class="shipping-input_container">
                               <asp:Label ID="Label32" runat="server" Text="CVV" class="shipping-input_label"></asp:Label>
                               <div style="display: flex;flex-direction: column;">
                                    <asp:TextBox ID="CVV_textbox" runat="server" class="shipping-input_label"></asp:TextBox>
                                    <div class="validation">
                                       <asp:RegularExpressionValidator ID="CVValidator2" runat="server" ErrorMessage="Invalid CVV entered." ControlToValidate="CVV_textbox" ValidationExpression="^\d{3,4}$" class="shipping-input_label"></asp:RegularExpressionValidator>
                                       <asp:RequiredFieldValidator ID="CVValidator1" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="CVV_textbox" class="shipping-input_label"></asp:RequiredFieldValidator>
                                    </div>
                               </div>
                          </div>
                    </div>


                                                              <%--  BILLING SECTION START--%>
             


                    <div style="display:flex;gap:10px;">
                        <asp:CheckBox ID="billing_checkbox" runat="server" OnCheckedChanged="BillingToggle" AutoPostBack="true"/>
                        <asp:Label ID="billing_checkbox_label" runat="server" Text="Use shipping address for billing address"></asp:Label>
                    </div>
            <div id="billing_section" runat="server">
                   <div class="shipping-input_container">
                        <asp:Label ID="billing_FullName" runat="server" Text="FULL NAME" class="shipping-input_label" style="margin-top: 20px;"></asp:Label>
                        <div style="display: flex;flex-direction: column;">
                            <asp:TextBox ID="billing_FullName_textbox" runat="server" class="shipping-input_textbox"></asp:TextBox>
                            <div class="validation">
                                <asp:RegularExpressionValidator ID="FullNameValidator3" runat="server" ErrorMessage="Invalid name entered." ControlToValidate="billing_FullName_textbox" ValidationExpression="^[a-zA-Z-]{2,}\s+[a-zA-Z-]{2,}$" class="shipping-input_label"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="FullNameValidator4" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="billing_FullName_textbox" class="shipping-input_label"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                   <div class="shipping-input_container">
                        <asp:Label ID="billing_StreetAddress" runat="server" Text="STREET ADDRESS" class="shipping-input_label" style="margin-top: 20px;"></asp:Label>
                        <div style="display: flex;flex-direction: column;">
                            <asp:TextBox ID="billing_StreetAddress_textbox" runat="server" class="shipping-input_textbox"></asp:TextBox>
                            <div class="validation">
                                 <asp:RegularExpressionValidator ID="StreetAddressValidator3" runat="server" ErrorMessage="Invalid street address entered." ControlToValidate="billing_StreetAddress_textbox" ValidationExpression="^\d+\s+[a-zA-Z0-9\s,.-]+(\s*(Apt|Suite|Unit)?\s*\d+)?$" class="shipping-input_label"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator ID="StreetAddressValidator4" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="billing_StreetAddress_textbox" class="shipping-input_label"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                   </div>

                    <div class="shipping-input_container">
                        <asp:Label ID="billing_Town" runat="server" Text="TOWN/CITY" class="shipping-input_label"></asp:Label>
                        <div style="display: flex;flex-direction: column;">
                            <asp:TextBox ID="billing_Town_textbox" runat="server" class="shipping-input_textbox"></asp:TextBox>
                            <div class="validation">
                                 <asp:RegularExpressionValidator ID="TownValidator3" runat="server" ErrorMessage="Invalid Town/City entered." ControlToValidate="billing_Town_textbox" ValidationExpression="^[a-zA-Z\s.-]+$" class="shipping-input_label"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator ID="TownValidator4" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="billing_Town_textbox" class="shipping-input_label"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <div style="display: flex;justify-content: space-around;">
                          <asp:DropDownList ID="billing_Parish_dropdown" runat="server" style="width: 250px;height: 3rem;" class="shipping-input_label">
                              <asp:ListItem Value="">PARISH</asp:ListItem>
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
                         <asp:RequiredFieldValidator ID="ParishValidator2" runat="server" ErrorMessage="Choose a Parish." ControlToValidate="billing_Parish_dropdown" class="shipping-input_label"></asp:RequiredFieldValidator>

                         <div class="shipping-input_container">
                            <asp:Label ID="billing_ZipCode" runat="server" Text="ZIP CODE" class="shipping-input_label"></asp:Label>
                            <div style="display: flex;flex-direction: column;">
                                <asp:TextBox ID="billing_ZipCode_textbox" runat="server" class="shipping-input_textbox"></asp:TextBox>
                                <div class="validation">
                                     <asp:RegularExpressionValidator ID="ZipCodeValidator3" runat="server" ErrorMessage="Invalid Zip Code entered." ControlToValidate="billing_ZipCode_textbox" ValidationExpression="^\d{5}(-\d{4})?$" class="shipping-input_label"></asp:RegularExpressionValidator>
                                     <asp:RequiredFieldValidator ID="ZipCodeValidator4" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="billing_ZipCode_textbox" class="shipping-input_label"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>

                   <div class="shipping-input_container">
                        <asp:Label ID="billing_PhoneNumber" runat="server" Text="PHONE NUMBER" class="shipping-input_label"></asp:Label>
                        <div style="display: flex;flex-direction: column;">
                            <asp:TextBox ID="billing_PhoneNumber_textbox" runat="server" class="shipping-input_textbox"></asp:TextBox>
                            <div class="validation">
                                <asp:RegularExpressionValidator ID="PhoneNumberValidator3" runat="server" ErrorMessage="Invalid phone number entered." ControlToValidate="billing_PhoneNumber_textbox" ValidationExpression="^(\+1\s?)?(\(\d{3}\)|\d{3})[\s\-]?\d{3}[\s\-]?\d{4}$" class="shipping-input_label"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="PhoneNumberValidator4" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="billing_PhoneNumber_textbox" class="shipping-input_label"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                  </div>

        </div>
                                                                    <%--BILLING SECTION END--%>

            </div>                               
                                            <div style="display: flex;flex-direction: column;gap: 20px;">
                                                <asp:Button ID="continueBtn" runat="server" Text="Continue" class="continueBtn"/>
                                                <asp:Button ID="keep_shoppingBtn" runat="server" Text="Keep Shopping" class="continueBtn"/>
                                            </div>
        </div>
</div>


                

           

                                                            <%--ORDER SUMMARY--%>
                <div class="section order-summary_section">
                    <asp:Label ID="Label8" runat="server" Text="ORDER SUMMARY" style="font-weight: 700;margin: 0 auto;margin-bottom: 10px;"></asp:Label>
                    <div style="display: flex;flex-direction: column;gap: 5px;">
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
  </div>
                                                                  
                                                                <%--FOOTER--%>
        <div class="footer">
            <div style="display: flex;flex-direction: column;gap: 10px;">
                <asp:Label ID="follow" runat="server" Text="Follow our Social Media:" class="footer-heading"></asp:Label>
                <div style="display: flex;gap: 10px;">
                    <a href="https://www.instagram.com/" style="text-decoration: none;color: black;display: flex;gap: 5px;"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/Content/images/instagram.png" Width="30px" /><asp:Label ID="Label24" runat="server" Text="Instagram" style="margin-right: 10px;"></asp:Label></a>
                    <a href="https://www.x.com/" style="text-decoration: none;color: black;display: flex;gap: 5px;"><asp:Image ID="Image6" runat="server" Height="30px" ImageUrl="~/Content/images/x.png" Width="30px" /><asp:Label ID="Label25" runat="server" Text="X (Twitter)" style="margin-right: 10px;"></asp:Label></a>
                    <a href="https://www.tiktok.com/" style="text-decoration: none;color: black;display: flex;gap: 5px;"><asp:Image ID="Image7" runat="server" Height="30px" ImageUrl="~/Content/images/tiktok.png" Width="30px" /><asp:Label ID="Label26" runat="server" Text="TikTok" style="margin-right: 10px;"></asp:Label></a>
                </div>
            </div>
            <div style="display: flex;flex-direction: column;">
                <asp:Label ID="Label27" runat="server" Text="Contact Information" class="footer-heading"></asp:Label>
                <asp:Label ID="Label28" runat="server" Text="EMAIL: support@bookhaven.com"></asp:Label>
                <asp:Label ID="Label29" runat="server" Text="TEL: 123-456-789"></asp:Label>
            </div>
        </div>                
                                                                           
    </form>
</body>
</html>
