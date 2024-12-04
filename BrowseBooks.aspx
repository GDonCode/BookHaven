<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BrowseBooks.aspx.cs" Inherits="BookHaven.Browse" %>

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
            padding: 0;
            margin: 0;
        }
                                    /*NAV AND FOOTER STYLES START*/

        .nav {
            background-color: #4DF5E0;
            display: flex;
            align-items:center;
            justify-content:center; 
            padding: 10px 0;
            border-bottom: 2px solid #f5e04d;
        }
        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 100px;
            left: 0px;
            margin-bottom: 0px;
            background-color: #4DF5E0;
            display: flex;
            margin-top: 20px;
            justify-content: space-around;
            padding: 10px;
            border-top: 2px solid #f5e04d;
        }
        .nav-link_container {
            display: flex;
            gap: 50px;
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
        }
        .nav-link:hover {
            border-bottom: 2px solid #f5e04d;
            font-size: 1.5rem;
        }
        .footer-heading {
            font-size: 1.25rem;
            font-weight: 500;
        }

                            /*NAV AND FOOTER STYLES END*/

        .filters {
            width: 30%;
            display: flex;
            flex-direction: column;
            gap: 20px;
            margin-left: 50px;
        }
        .books_grid {
           display: flex;
           gap: 20px;
           flex-wrap: wrap;
           width: 100%;
           justify-content: space-around;
        }
        .item {
            display: flex;
            flex-direction: column;
            gap: 5px;
            width: 350px;
        }
        .add_to_cart {
            cursor: pointer;
            background-color: #f5e04d;
            border: 2px solid black;
            font-size: 1rem;
            transition: font-size 0.3s ease;
            border-radius: 2px;
        }
        .add_to_cart:hover {
            font-size: 1.25rem;
        }
        .main-container {
            display: flex;
            width: 100%;
            margin: 20px 0;
        }
        .filter-section {
            display: flex;
            flex-direction: column;
            border: 2.5px solid #f5e04d;
            padding: 20px;
            border-radius: 2px;
        }
        .filter-section_heading {
            font-size: 1.25rem;
            font-weight: 500;
        }
        .book-section {
            display: flex;
            flex-direction: column;
            width: 70%;
            gap: 20px;
            margin-right: 30px;
        }
    </style>
</head>
<body>                            
    
                                             <%--  NAV--%>
<div class="nav">
                                        <%--  NAV LINKS --%>
    <div class="nav-link_container">
        <a href="Browse.aspx" class="nav-link">
            <asp:Image ID="Image8" runat="server" Height="20px" Width="20px" ImageUrl="~/Content/images/books.png" />
            <asp:Label ID="Label6" runat="server" Text="Browse Books"></asp:Label>
        </a>
        <a href="User.aspx" class="nav-link">
            <asp:Image ID="Image9" runat="server" Height="20px" Width="20px" ImageUrl="~/Content/images/user.png" />
            <asp:Label ID="Label7" runat="server" Text="User Account" ></asp:Label>
        </a>
    </div>
    <a href="Home.aspx" style="text-decoration: none;color: black;"><asp:Image ID="Image1" runat="server" Height="120px" ImageUrl="~/Content/images/logo1.png" Width="120px" style="margin: 0 20px;"/></a>
    <div class="nav-link_container">
        <a href="ContactUs.aspx" class="nav-link">
            <asp:Image ID="Image10" runat="server" Height="20px" Width="20px" ImageUrl="~/Content/images/contact-us.png" />
            <asp:Label ID="Label8" runat="server" Text="Contact Us"></asp:Label>
        </a>
        <a href="Cart.aspx" class="nav-link">
            <asp:Image ID="Image11" runat="server" Height="20px" Width="20px" ImageUrl="~/Content/images/shopping-cart.png" />
            <asp:Label ID="Label9" runat="server" Text="Shopping Cart"></asp:Label>
        </a>
    </div>
</div>
    <form id="form1" runat="server">

        <div class="main-container">
            <div class="filters">
                <asp:Label ID="Label1" runat="server" Text="FILTER BY: " style="margin: 0 auto;font-size: 1.75rem;font-weight: 500;"></asp:Label>

                <div class="filter-section">
                    <asp:Label ID="Label2" runat="server" Text="CATEGORY" class="filter-section_heading"></asp:Label>
                    <asp:CheckBoxList ID="Category_CheckBox" runat="server">
                        <asp:ListItem Value="Mystery">Mystery</asp:ListItem>
                        <asp:ListItem Value="Science Fiction">Science Fiction</asp:ListItem>
                        <asp:ListItem Value="Biography">Biography</asp:ListItem>
                        <asp:ListItem Value="History">History</asp:ListItem>
                        <asp:ListItem Value="Romance">Romance</asp:ListItem>
                        <asp:ListItem Value="Thriller">Thriller</asp:ListItem>
                    </asp:CheckBoxList>
                </div>

                <div class="filter-section">
                    <asp:Label ID="Label3" runat="server" Text="PRICE" class="filter-section_heading"></asp:Label>
                    <asp:CheckBoxList ID="Price_CheckBox" runat="server">
                        <asp:ListItem Value="">$10 - $25</asp:ListItem>
                        <asp:ListItem Value="">$25 - $50</asp:ListItem>
                        <asp:ListItem Value="">$50 - $75</asp:ListItem>
                        <asp:ListItem Value="">$75 - $100</asp:ListItem>
                        <asp:ListItem Value="">$100 +</asp:ListItem>
                    </asp:CheckBoxList>
                </div>

                <div class="filter-section">
                    <asp:Label ID="Label4" runat="server" Text="AUTHOR" class="filter-section_heading"></asp:Label>
                    <asp:CheckBoxList ID="Author_CheckBox" runat="server">
                        <asp:ListItem Value="A.J. Finn">A.J. Finn</asp:ListItem>
                        <asp:ListItem Value="Alex Michaelides">Alex Michaelides</asp:ListItem>
                        <asp:ListItem Value="Colleen Hoover">Colleen Hoover</asp:ListItem>
                        <asp:ListItem Value="David McCollough">David McCollough</asp:ListItem>
                        <asp:ListItem Value="Don Tillman">Don Tillman</asp:ListItem>
                        <asp:ListItem Value="Frank Herbert">Frank Herbert</asp:ListItem>
                        <asp:ListItem Value="Gillian Flynn">Gillian Flynn</asp:ListItem>
                        <asp:ListItem Value="Michelle Obama">Michelle Obama</asp:ListItem>
                        <asp:ListItem Value="Richard Osman">Richard Osman</asp:ListItem>
                        <asp:ListItem Value="Ursula K. Le Guin">Ursula K. Le Guin</asp:ListItem>
                        <asp:ListItem Value="Walter Isaacson">Walter Isaacson</asp:ListItem>
                        <asp:ListItem Value="Yuval Noah Harari">Yuval Noah Harari</asp:ListItem>
                    </asp:CheckBoxList>
                </div>
            </div>


            <div class="book-section">
                <asp:Label ID="Label5" runat="server" Text="SEARCH" style="margin-left: 40px;font-size: 1.75rem;font-weight: 500;"></asp:Label>
                <div class="books_grid">
                    <div class="item">
                        <div id="Cover_1"></div>
                        <asp:Label ID="Title_1" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Author_1" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Price_1" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button1" runat="server" Text="Add to Cart" class="add_to_cart"/>
                    </div>
                    <div class="item">
                        <div id="Cover_2"></div>
                        <asp:Label ID="Title_2" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Author_2" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Price_2" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button2" runat="server" Text="Add to Cart" class="add_to_cart"/>
                    </div>
                    <div class="item">
                        <div id="Cover_3"></div>
                        <asp:Label ID="Title_3" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Author_3" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Price_3" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button3" runat="server" Text="Add to Cart" class="add_to_cart"/>
                    </div>
                    <div class="item">
                        <div id="Cover_4"></div>
                        <asp:Label ID="Title_4" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Author_4" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Price_4" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button4" runat="server" Text="Add to Cart" class="add_to_cart"/>
                    </div>
                    <div class="item">
                        <div id="Cover_5"></div>
                        <asp:Label ID="Title_5" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Author_5" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Price_5" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button5" runat="server" Text="Add to Cart" class="add_to_cart"/>
                    </div>
                    <div class="item">
                        <div id="Cover_6"></div>
                        <asp:Label ID="Title_6" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Author_6" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Price_6" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button6" runat="server" Text="Add to Cart" class="add_to_cart"/>
                    </div>
                    <div class="item">
                        <div id="Cover_7"></div>
                        <asp:Label ID="Title_7" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Author_7" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Price_7" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button7" runat="server" Text="Add to Cart" class="add_to_cart"/>
                    </div>
                    <div class="item">
                        <div id="Cover_8"></div>
                        <asp:Label ID="Title_8" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Author_8" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Price_8" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button8" runat="server" Text="Add to Cart" class="add_to_cart"/>
                    </div>
                    <div class="item">
                        <div id="Cover_9"></div>
                        <asp:Label ID="Title_9" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Author_9" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Price_9" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button9" runat="server" Text="Add to Cart" class="add_to_cart"/>
                    </div>
                    <div class="item">
                        <div id="Cover_10"></div>
                        <asp:Label ID="Title_10" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Author_10" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Price_10" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button10" runat="server" Text="Add to Cart" class="add_to_cart"/>
                    </div>
                    <div class="item">
                        <div id="Cover_11"></div>
                        <asp:Label ID="Title_11" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Author_11" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Price_11" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button11" runat="server" Text="Add to Cart" class="add_to_cart"/>
                    </div>
                    <div class="item">
                        <div id="Cover_12"></div>
                        <asp:Label ID="Title_12" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Author_12" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Price_12" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button12" runat="server" Text="Add to Cart" class="add_to_cart"/>
                    </div>
                </div>
            </div>


        </div>
    </form>
</body>
</html>
