<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="BookHaven.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="display: flex; flex-direction: column;background-color: white;height: auto;">
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

        <div class="contact-input_container" style="height: max-content;">
            <asp:Label ID="Label10" runat="server" Text="MESSAGE" class="contact-input_label" style="margin-top: 20px;"></asp:Label>
            <div class="InputOutputContainer">
                <asp:TextBox ID="contact_Message_textbox" runat="server" class="contact-input_textbox message_textbox"></asp:TextBox>
                <asp:Label ID="MESSAGE_output" runat="server" Text="" class="contact_output"></asp:Label>
                <div class="validation">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Message entered." ControlToValidate="contact_Message_textbox" ValidationExpression="^.{5,200}$" class="contact-input_label"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field cannot be blank." ControlToValidate="contact_Message_textbox" class="contact-input_label"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        
        <asp:Button ID="submitBtn" runat="server" Text="SUBMIT" class="submitBtn"/>
</div>
    </form>
</body>
</html>
