<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="BookHaven.Contact" %>

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
            padding: 0;
            padding-bottom: 100px;
            margin: 0;
            background-color: #f2f2f2;
            font-family: "Open Sans", sans-serif;
            position: relative;
        }
        .footer {
            position: absolute;
            bottom: 0;
            min-width: 100%;
            max-width: 100%;
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
        .nav {
            background-color: #4DF5E0;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 10px 0;
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
        .contact-input_container {
            display: flex;
            flex-direction: column;
            gap: 10px;
            position: relative;
            width: 600px;
            margin: 0 auto;
        }
        .validation {
            display: flex;
            color: red;
        }
        .contact-input_label {
            font-size: 0.75rem;
        }
        .contact-input_textbox {
            border-top: none;
            border-right: none;
            border-bottom: 1.5px solid #666666;
            border-left: none;
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
        }
        .contact_output {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
        }
        .InputOutputContainer {
            display: flex;
            flex-direction: column;
            position: relative;
        }
        .message_textbox {
            border-top: 1.5px solid #666666;
            border-right: 1.5px solid #666666;
            border-bottom: 1.5px solid #666666;
            border-left: 1.5px solid #666666;
            width: 100%;
            height: 200px;
            box-sizing: border-box;
            overflow: hidden;
        }
        .submitBtn {
            cursor: pointer;
            background-color: #f5e04d;
            border: 2px solid black;
            font-size: 1.25rem;
            transition: font-size 0.3s ease, width 0.3s ease;
            margin: 20px auto;
            padding: 5px 0;
            width: 200px;
            z-index: 1;
        }
        .submitBtn:hover {
            font-size: 1.5rem;
        }
    </style>
</head>
<body>
                                                <%--  NAV--%>
<div class="nav">
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
        <a href="ContactUs.aspx" class="nav-link">
            <asp:Image ID="Image10" runat="server" Height="20px" Width="20px" ImageUrl="~/Content/images/contact-us.png" />
            <asp:Label ID="Label21" runat="server" Text="Contact Us"></asp:Label>
        </a>
        <a href="Cart.aspx" class="nav-link">
            <asp:Image ID="Image11" runat="server" Height="20px" Width="20px" ImageUrl="~/Content/images/shopping-cart.png" />
            <asp:Label ID="Label22" runat="server" Text="Shopping Cart"></asp:Label>
        </a>
    </div>
</div>

    <form id="form1" runat="server">
                                            
        <div style="display: flex; flex-direction: column;background-color: white;height: 100%;">
            <asp:Label ID="Label5" runat="server" Text="Contact Us" style="font-size: 1.75rem;letter-spacing: 1.5px;margin: 0 auto;"></asp:Label>
                <div class="contact-input_container">
                    <asp:Label ID="Label6" runat="server" Text="FULL NAME" class="contact-input_label" style="margin-top: 20px;"></asp:Label>
                    <div class="InputOutputContainer">
                        <asp:TextBox ID="contact_FullName_textbox" runat="server" class="contact-input_textbox"></asp:TextBox>
                        <asp:Label ID="FNAME_output" runat="server" Text="" class="contact_output"></asp:Label>
                            <div class="validation">
                                <asp:RegularExpressionValidator ID="contact_FullNameValidator1" runat="server" ErrorMessage="Invalid Name entered." ControlToValidate="contact_FullName_textbox" ValidationExpression="^[a-zA-Z-]{2,}\s+[a-zA-Z-]{2,}$" class="contact-input_label"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="contact_FullNameValidator2" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="contact_FullName_textbox" class="contact-input_label"></asp:RequiredFieldValidator>
                           </div>
                    </div>
                </div>
                
                <div class="contact-input_container">
                    <asp:Label ID="Label7" runat="server" Text="EMAIL" class="contact-input_label" style="margin-top: 20px;"></asp:Label>
                    <div class="InputOutputContainer">
                        <asp:TextBox ID="contact_Email_textbox" runat="server" class="contact-input_textbox"></asp:TextBox>
                        <asp:Label ID="EMAIL_output" runat="server" Text="" class="contact_output"></asp:Label>
                        <div class="validation">
                            <asp:RegularExpressionValidator ID="contact_EmailValidator1" runat="server" ErrorMessage="Invalid Email entered." ControlToValidate="contact_Email_textbox" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" class="contact-input_label"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="contact_EmailValidator2" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="contact_Email_textbox" class="contact-input_label"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="contact-input_container">
                    <asp:Label ID="Label8" runat="server" Text="PHONE NUMBER" class="contact-input_label" style="margin-top: 20px;"></asp:Label>
                    <div class="InputOutputContainer">
                        <asp:TextBox ID="contact_PhoneNumber_textbox" runat="server" class="contact-input_textbox"></asp:TextBox>
                        <asp:Label ID="PHONENUMBER_output" runat="server" Text="" class="contact_output"></asp:Label>
                        <div class="validation">
                            <asp:RegularExpressionValidator ID="contact_PhoneNumberValidator1" runat="server" ErrorMessage="Invalid Phone Number entered." ControlToValidate="contact_PhoneNumber_textbox" ValidationExpression="^(\+1\s?)?(\(\d{3}\)|\d{3})[\s\-]?\d{3}[\s\-]?\d{4}$" class="contact-input_label"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="contact_PhoneNumberValidator2" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="contact_PhoneNumber_textbox" class="contact-input_label"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="contact-input_container">
                    <asp:Label ID="Label9" runat="server" Text="SUBJECT" class="contact-input_label" style="margin-top: 20px;"></asp:Label>
                    <div class="InputOutputContainer">
                        <asp:TextBox ID="contact_Subject_textbox" runat="server" class="contact-input_textbox"></asp:TextBox>
                        <asp:Label ID="SUBJECT_output" runat="server" Text="" class="contact_output"></asp:Label>
                        <div class="validation">
                            <asp:RegularExpressionValidator ID="contact_SubjectValidator1" runat="server" ErrorMessage="Invalid Subject entered." ControlToValidate="contact_Subject_textbox" ValidationExpression="^.{2,50}$" class="contact-input_label"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="contact_SubjectValidator2" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="contact_Subject_textbox" class="contact-input_label"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="contact-input_container"">
                    <asp:Label ID="MESSAGE_label" runat="server" Text="MESSAGE" class="contact-input_label" style="margin-top: 20px;"></asp:Label>
                    <div class="InputOutputContainer">
                        <asp:TextBox ID="contact_Message_textbox" runat="server" class="message_textbox"  TextMode="MultiLine" cols="20" rows="5"></asp:TextBox>
                        <asp:Label ID="MESSAGE_output" runat="server" Text="" class="contact_output"></asp:Label>
                        <div class="validation">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Message entered." ControlToValidate="contact_Message_textbox" ValidationExpression="^.{5,200}$" class="contact-input_label"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="contact_Message_textbox" class="contact-input_label"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                
            <div style="display: flex;gap: 10px;">
                <asp:Button ID="submitBtn" runat="server" Text="SUBMIT" class="submitBtn" OnClick="SubmitBtn"/>
                <asp:Button ID="resetBtn" runat="server" Text="RESET" class="submitBtn" OnClick="ResetBtn"/>
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
