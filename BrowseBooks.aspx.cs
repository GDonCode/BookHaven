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



        protected void Price_Selected(object sender, EventArgs e)
        {
            
            List<string> selectedRanges = new List<string>();
            foreach (ListItem item in Price_CheckBox.Items)
            {
                if (item.Selected)
                {
                    selectedRanges.Add(item.Value);
                }
            }

            
            foreach (Book book in bookprices)
            {
                bool isVisible = false;

                
                foreach (string range in selectedRanges)
                {
                    Response.Write($"Selected Range: {range}");
                    string[] bounds = range.Split('-');
                    decimal minPrice = decimal.Parse(bounds[0]);
                    decimal maxPrice = bounds.Length > 1 ? decimal.Parse(bounds[1]) : decimal.MaxValue;

                    if (book.Price >= minPrice && book.Price <= maxPrice)
                    {
                        isVisible = true;
                        break;
                    }
                }

                
                var itemDiv = FindControl(book.ItemId) as HtmlGenericControl; 
                if (itemDiv != null)
                {
                    itemDiv.Visible = isVisible;
                }
            }
        }

        protected void AddToCartBtn(object sender, EventArgs e)
        {
           int CartCounter = 0;
            CartCounter += 1;

            if (Button1.CommandArgument == "1")
            {
                Session["Cover"] = "";
                Session["Title"] = Title_1.Text;
                Session["Author"] = Author_1.Text;
                Session["Price"] = int.Parse(Price_1.Text);
            }

            if (Button2.CommandArgument == "2")
            {
                Session["Cover"] = "";
                Session["Title"] = Title_2.Text;
                Session["Author"] = Author_2.Text;
                Session["Price"] = int.Parse(Price_2.Text);
            }

            if (Button3.CommandArgument == "3")
            {
                Session["Cover"] = "";
                Session["Title"] = Title_3.Text;
                Session["Author"] = Author_3.Text;
                Session["Price"] = int.Parse(Price_3.Text);
            }

            if (Button4.CommandArgument == "4")
            {
                Session["Cover"] = "";
                Session["Title"] = Title_4.Text;
                Session["Author"] = Author_4.Text;
                Session["Price"] = int.Parse(Price_4.Text);
            }

            if (Button5.CommandArgument == "5")
            {
                Session["Cover"] = "";
                Session["Title"] = Title_5.Text;
                Session["Author"] = Author_5.Text;
                Session["Price"] = int.Parse(Price_5.Text);
            }

            if (Button6.CommandArgument == "6")
            {
                Session["Cover"] = "";
                Session["Title"] = Title_6.Text;
                Session["Author"] = Author_6.Text;
                Session["Price"] = int.Parse(Price_6.Text);
            }

            if (Button7.CommandArgument == "7")
            {
                Session["Cover"] = "";
                Session["Title"] = Title_7.Text;
                Session["Author"] = Author_7.Text;
                Session["Price"] = int.Parse(Price_7.Text);
            }

            if (Button8.CommandArgument == "8")
            {
                Session["Cover"] = "";
                Session["Title"] = Title_8.Text;
                Session["Author"] = Author_8.Text;
                Session["Price"] = int.Parse(Price_8.Text);
            }

            if (Button9.CommandArgument == "9")
            {
                Session["Cover"] = "";
                Session["Title"] = Title_9.Text;
                Session["Author"] = Author_9.Text;
                Session["Price"] = int.Parse(Price_9.Text);
            }

            if (Button10.CommandArgument == "10")
            {
                Session["Cover"] = "";
                Session["Title"] = Title_10.Text;
                Session["Author"] = Author_10.Text;
                Session["Price"] = int.Parse(Price_10.Text);
            }

            if (Button11.CommandArgument == "11")
            {
                Session["Cover"] = "";
                Session["Title"] = Title_11.Text;
                Session["Author"] = Author_11.Text;
                Session["Price"] = int.Parse(Price_11.Text);
            }

            if (Button12.CommandArgument == "12")
            {
                Session["Cover"] = "";
                Session["Title"] = Title_12.Text;
                Session["Author"] = Author_12.Text;
                Session["Price"] = int.Parse(Price_12.Text);
            }

        }

    }

}