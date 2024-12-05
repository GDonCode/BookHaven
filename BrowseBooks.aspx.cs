using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace BookHaven
{
    public class Book
    {
        public decimal Price { get; set; }
        public string ItemId { get; set; }
    }

    public partial class Browse : System.Web.UI.Page
    {
        private List<Book> bookprices = new List<Book>();
        protected void Page_Load(object sender, EventArgs e)
        {
            bookprices = new List<Book>
            {
                new Book { Price = decimal.Parse(Price_1.Text.Replace("$", "").Trim()), ItemId = "Item_1" },
                new Book { Price = decimal.Parse(Price_2.Text.Replace("$", "").Trim()), ItemId = "Item_2" },
                new Book { Price = decimal.Parse(Price_3.Text.Replace("$", "").Trim()), ItemId = "Item_3" },
                new Book { Price = decimal.Parse(Price_4.Text.Replace("$", "").Trim()), ItemId = "Item_4" },
                new Book { Price = decimal.Parse(Price_5.Text.Replace("$", "").Trim()), ItemId = "Item_5" },
                new Book { Price = decimal.Parse(Price_6.Text.Replace("$", "").Trim()), ItemId = "Item_6" },
                new Book { Price = decimal.Parse(Price_7.Text.Replace("$", "").Trim()), ItemId = "Item_7" },
                new Book { Price = decimal.Parse(Price_8.Text.Replace("$", "").Trim()), ItemId = "Item_8" },
                new Book { Price = decimal.Parse(Price_9.Text.Replace("$", "").Trim()), ItemId = "Item_9" },
                new Book { Price = decimal.Parse(Price_10.Text.Replace("$", "").Trim()), ItemId = "Item_10" },
                new Book { Price = decimal.Parse(Price_11.Text.Replace("$", "").Trim()), ItemId = "Item_11" },
                new Book { Price = decimal.Parse(Price_12.Text.Replace("$", "").Trim()), ItemId = "Item_12" }
            };
        }

        protected void AddToCartBtn(object sender, EventArgs e)
        {
           int CartCounter = 0;
            CartCounter += 1;

            if (Button1.CommandArgument == "1")
            {
                Session["Cover"] = "";
                Session["Title1"] = Title_1.Text;
                Session["Author1"] = Author_1.Text;
                Session["Price1"] = int.Parse(Price_1.Text);
            }

            if (Button2.CommandArgument == "2")
            {
                Session["Cover2"] = "";
                Session["Title2"] = Title_2.Text;
                Session["Author2"] = Author_2.Text;
                Session["Price2"] = int.Parse(Price_2.Text);
            }

            if (Button3.CommandArgument == "3")
            {
                Session["Cover3"] = "";
                Session["Title3"] = Title_3.Text;
                Session["Author3"] = Author_3.Text;
                Session["Price3"] = int.Parse(Price_3.Text);
            }

            if (Button4.CommandArgument == "4")
            {
                Session["Cover4"] = "";
                Session["Title4"] = Title_4.Text;
                Session["Author4"] = Author_4.Text;
                Session["Price4"] = int.Parse(Price_4.Text);
            }

            if (Button5.CommandArgument == "5")
            {
                Session["Cover5"] = "";
                Session["Title5"] = Title_5.Text;
                Session["Author5"] = Author_5.Text;
                Session["Price5"] = int.Parse(Price_5.Text);
            }

            if (Button6.CommandArgument == "6")
            {
                Session["Cover6"] = "";
                Session["Title6"] = Title_6.Text;
                Session["Author6"] = Author_6.Text;
                Session["Price6"] = int.Parse(Price_6.Text);
            }

            if (Button7.CommandArgument == "7")
            {
                Session["Cover7"] = "";
                Session["Title7"] = Title_7.Text;
                Session["Author7"] = Author_7.Text;
                Session["Price7"] = int.Parse(Price_7.Text);
            }

            if (Button8.CommandArgument == "8")
            {
                Session["Cover8"] = "";
                Session["Title8"] = Title_8.Text;
                Session["Author8"] = Author_8.Text;
                Session["Price8"] = int.Parse(Price_8.Text);
            }

            if (Button9.CommandArgument == "9")
            {
                Session["Cover9"] = "";
                Session["Title9"] = Title_9.Text;
                Session["Author9"] = Author_9.Text;
                Session["Price9"] = int.Parse(Price_9.Text);
            }

            if (Button10.CommandArgument == "10")
            {
                Session["Cover10"] = "";
                Session["Title10"] = Title_10.Text;
                Session["Author10"] = Author_10.Text;
                Session["Price10"] = int.Parse(Price_10.Text);
            }

            if (Button11.CommandArgument == "11")
            {
                Session["Cover11"] = "";
                Session["Title11"] = Title_11.Text;
                Session["Author11"] = Author_11.Text;
                Session["Price11"] = int.Parse(Price_11.Text);
            }

            if (Button12.CommandArgument == "12")
            {
                Session["Cover12"] = "";
                Session["Title12"] = Title_12.Text;
                Session["Author12"] = Author_12.Text;
                Session["Price12"] = int.Parse(Price_12.Text);
            }

        }

    }

}