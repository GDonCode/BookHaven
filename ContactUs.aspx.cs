using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookHaven
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitBtn(object sender, EventArgs e)
        {
            FNAME_output.Text = contact_FullName_textbox.Text;
            contact_FullName_textbox.Visible = false;

            EMAIL_output.Text = contact_Email_textbox.Text;
            contact_Email_textbox.Visible = false;

            PHONENUMBER_output.Text = contact_PhoneNumber_textbox.Text;
            contact_PhoneNumber_textbox.Visible = false;

            SUBJECT_output.Text = contact_Subject_textbox.Text;
            contact_Subject_textbox.Visible = false;

            MESSAGE_label.Text = "MESSAGE SENT:";
            MESSAGE_output.Text = contact_Message_textbox.Text;
            contact_Message_textbox.Visible = false;

        }

        protected void ResetBtn(object sender, EventArgs e)
        {
            // Make the textboxes visible again
            contact_FullName_textbox.Visible = true;
            contact_Email_textbox.Visible = true;
            contact_PhoneNumber_textbox.Visible = true;
            contact_Subject_textbox.Visible = true;
            contact_Message_textbox.Visible = true;

            // Clear the textboxes
            contact_FullName_textbox.Text = "";
            contact_Email_textbox.Text = "";
            contact_PhoneNumber_textbox.Text = "";
            contact_Subject_textbox.Text = "";
            contact_Message_textbox.Text = "";

            // Clear the output labels
            FNAME_output.Text = "";
            EMAIL_output.Text = "";
            PHONENUMBER_output.Text = "";
            SUBJECT_output.Text = ""; 
            MESSAGE_output.Text = "";
            MESSAGE_label.Text = "";

        }
    }
}