using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookHaven
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
 
        }

        protected void BillingToggle(object sender, EventArgs e)
        {
            if (billing_checkbox.Checked)
            {
                billing_section.Visible = false;
            }
            else
            {
                billing_section.Visible = true;
            }
        }
    }
}