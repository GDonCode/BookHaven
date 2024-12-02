<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BookHaven.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="padding: 0;">
<head runat="server">
    <title></title>

                                                              <%--OPEN SANS FONT--%>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&family=Lora:ital,wght@0,400..700;1,400..700&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Parkinsans:wght@300..800&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <style>
        body {
            padding: 0; 
            margin: 0; 
            width: 100%;
            height: 100%;
            font-family: "Open Sans", sans-serif;
        }
        .carousel-item {
            height: 34rem;
            position: relative;
            background: #f5e04d;
        }
        .carousel-container {
            display: flex;
            flex-direction: column; 
            justify-content: center;
            align-items: center;
            height: 100%;
            color: black;
        }
        .carousel-img {
            width: auto;
            height: 70%;
            margin: 0 auto;
        }
        .carousel {
            width: 80%;
            margin: 0 auto;
        }
        .add_to_cart {
            cursor: pointer;
            background-color: #f5e04d;
            border: 2px solid black;
            font-size: 1rem;
            transition: font-size 0.3s ease;
        }
        .add_to_cart:hover {
            font-size: 1.25rem;
        }
        .category-button {
            cursor: pointer;
            background-color: #f5e04d;
            border: 2px solid black;
            font-size: 1rem;
            transition: font-size 0.3s ease;
            padding: 0 25px;
            margin-top: 10px;
        }
        .category-button:hover {
            font-size: 1.25rem;
        }
        .browse_all-button {
            cursor: pointer;
            background-color: #f5e04d;
            border: 2px solid black;
            font-size: 1.5rem;
            transition: font-size 0.3s ease;
            padding: 0 25px;
            width: min-content;
            margin: 50px auto 20px auto;
            display: block;
        }
        .browse_all-button:hover {
            font-size: 1.75rem;
        }
        .auto-style1 {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 100px;
            left: 0px;
            margin-bottom: 0px;
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
        .category {
            display: flex;
            flex-direction: column;
            justify-content: center;
            gap: 40px;
            margin-top: 100px;
        }
        .category-container {
            display: flex;
            align-content: center;
            gap: 100px;
            margin: 0 auto;
        }
        .category-item {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            border: 10px solid #f5e04d;
            padding: 15px;
            width: 300px;
            text-align: center;
            gap: 5px;
            transition: box-shadow 0.5s ease-in-out, transform 0.5s ease-in;
        }
        .category-item:hover {
            transform: translateY(-15px);
            box-shadow: 10px 10px 5px rgba(77, 98, 245, 0.5);
        }
        .category-item--title {
            font-size: 1.25rem;
            text-decoration: underline;
        }
        .subheading {
            text-decoration: underline;
            font-size: 20px;
        }
        .footer-heading {
            font-size: 1.25rem;
            font-weight: 500;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="position: relative;min-height: 100vh;padding-bottom: 120px;box-sizing: border-box;">
         
                                    <%--  NAV--%>

        <div style="background-color: #4d62f5; display: flex;flex-direction: column; align-items: center; justify-content: space-between;padding-top: 10px;">
            <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl="~/Content/images/logo1.png" Width="120px"/>
                                  <%--  NAV LINKS --%>
            <div style="display: flex;gap: 100px;margin-left: -16px;">
                <a href="#" class="nav-link">
                    <asp:Image ID="Image8" runat="server" Height="20px" Width="20px" ImageUrl="~/Content/images/books.png" />
                    <asp:Label ID="Label1" runat="server" Text="Browse Books"></asp:Label>
                </a>
                <a href="#" class="nav-link">
                    <asp:Image ID="Image9" runat="server" Height="20px" Width="20px" ImageUrl="~/Content/images/user.png" />
                    <asp:Label ID="Label2" runat="server" Text="User Account" ></asp:Label>
                </a>
                <a href="#" class="nav-link">
                    <asp:Image ID="Image10" runat="server" Height="20px" Width="20px" ImageUrl="~/Content/images/contact-us.png" />
                    <asp:Label ID="Label3" runat="server" Text="Contact Us"></asp:Label>
                </a>
                <a href="#" class="nav-link">
                    <asp:Image ID="Image11" runat="server" Height="20px" Width="20px" ImageUrl="~/Content/images/shopping-cart.png" />
                    <asp:Label ID="Label4" runat="server" Text="Shopping Cart"></asp:Label>
                </a>
            </div>
        </div>
        <br />

        <div style="text-align: center;width: 75%; margin: 0 auto;">
            <asp:Label ID="Label5" runat="server" Text="Welcome to Book Haven - Your Ultimate Bookstore! " style="font-size: 24px;margin: 0 auto;"></asp:Label>
            <br />
            <p>
            <asp:Label ID="Label6" runat="server" Text="Dive into a world of stories, knowledge, and adventure with our vast collection of books. Whether you're a fan of thrilling mysteries, timeless classics, or the latest bestsellers, Book Haven has something for everyone."></asp:Label>
            </p>
            <asp:Label ID="Label16" runat="server" Text="Featured Books" class="subheading"></asp:Label> 
        </div>
        
        <div style="background-color: #f5e04d; width: 50%; margin: 0 auto;">
                                 <%-- CAROUSEL --%>  
            <div id="carousel" class="carousel slide" data-bs-ride="carousel">
                <ol class="carousel-indicators" style="list-style: none;">
                    <li data-bs-target="carousel" data-bs-slide-to="0" class="active"></li>
                    <li data-bs-target="carousel" data-bs-slide-to="1"></li>
                    <li data-bs-target="carousel" data-bs-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="carousel-container">
                            <asp:Image ID="Image2" runat="server" ImageAlign="Middle" ImageUrl="~/Content/images/the_alchemist.jpg" class="carousel-img"/>
                            <div style="display: flex;flex-direction: column;">
                                <asp:Label ID="Label7" runat="server" Text="The Alchemist by Paul Coehlo"></asp:Label>
                                <asp:Label ID="Label8" runat="server" Text="$26.99"></asp:Label>
                                <asp:Button ID="Button3" runat="server" Text="Add to Cart" class="add_to_cart" />
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="carousel-container">
                            <asp:Image ID="Image3" runat="server" ImageAlign="Middle" ImageUrl="~/Content/images/to_kill_a_mockingbird.png" class="carousel-img"/>
                            <div style="display: flex;flex-direction: column;">
                                <asp:Label ID="Label9" runat="server" Text="To Kill a Mockingbird by Harper Lee"></asp:Label>
                                <asp:Label ID="Label10" runat="server" Text="$16.00"></asp:Label>
                                <asp:Button ID="Button4" runat="server" Text="Add to Cart" class="add_to_cart" />
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="carousel-container">
                             <asp:Image ID="Image4" runat="server" ImageAlign="Middle" ImageUrl="~/Content/images/davinci_code.jpg" class="carousel-img"/>
                             <div style="display: flex;flex-direction: column;">
                                <asp:Label ID="Label11" runat="server" Text="The DaVinci Code by Dan Brown"></asp:Label>
                                <asp:Label ID="Label12" runat="server" Text="$35.00"></asp:Label>
                                 <asp:Button ID="Button5" runat="server" Text="Add to Cart" class="add_to_cart" />
                            </div>
                        </div>
                    </div>
                </div>
                <a href="#carousel" class="carousel-control-prev" role="button" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                </a>
                <a href="#carousel" class="carousel-control-next" role="button" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                </a>
            </div>
        </div>

                                                    <%--  CATEGORIES --%>

        <div class="category">
            <asp:Label ID="Label33" runat="server" Text="Explore Different Categories" class="subheading" style="margin: 0 auto;"></asp:Label>
            <div class="category-container">
                <div class="category-item">
                    <asp:Image ID="Image12" runat="server" Height="250px" ImageUrl="~/Content/images/the_woman_in_the_window.jpg" />
                    <asp:Label ID="Label21" runat="server" Text="Mystery" class="category-item--title"></asp:Label>
                    <asp:Label ID="Label26" runat="server" Text="Unravel secrets and solve thrilling mysteries."></asp:Label>
                    <asp:Button ID="Button1" runat="server" Text="Explore" class="category-button" />
                </div>
                <div class="category-item">
                    <asp:Image ID="Image13" runat="server" Height="250px" ImageUrl="~/Content/images/steve_jobs.jpg"/>
                    <asp:Label ID="Label22" runat="server" Text="Biography" class="category-item--title"></asp:Label>
                    <asp:Label ID="Label27" runat="server" Text="Discover the lives that shaped history."></asp:Label>
                    <asp:Button ID="Button2" runat="server" Text="Explore" class="category-button" />
                </div>
                <div class="category-item"> 
                    <asp:Image ID="Image14" runat="server" Height="250px" ImageUrl="~/Content/images/the_left_hand_of_darkness.jpg"/>
                    <asp:Label ID="Label23" runat="server" Text="Science Fiction" class="category-item--title"></asp:Label>
                    <asp:Label ID="Label28" runat="server" Text="Venture into realms of the unknown and beyond."></asp:Label>
                    <asp:Button ID="Button6" runat="server" Text="Explore" class="category-button" />
                </div>
            </div>
            <div class="category-container">
                <div class="category-item">
                    <asp:Image ID="Image15" runat="server" Height="250px" ImageUrl="~/Content/images/the_rosie_project.jpg"/>
                    <asp:Label ID="Label24" runat="server" Text="Romance" class="category-item--title"></asp:Label>
                    <asp:Label ID="Label29" runat="server" Text="Feel the magic of love and heartfelt connections."></asp:Label>
                    <asp:Button ID="Button7" runat="server" Text="Explore" class="category-button" />
                </div>
                <div class="category-item">
                    <asp:Image ID="Image16" runat="server" Height="250px" ImageUrl="~/Content/images/the_wright_brothers.jpg"/>
                    <asp:Label ID="Label25" runat="server" Text="History" class="category-item--title"></asp:Label>
                    <asp:Label ID="Label30" runat="server" Text="Explore the stories of our collective past."></asp:Label>
                    <asp:Button ID="Button8" runat="server" Text="Explore" class="category-button" />
                </div>
                <div class="category-item">
                    <asp:Image ID="Image17" runat="server" Height="250px" ImageUrl="~/Content/images/sharp_objects.jpg"/>
                    <asp:Label ID="Label31" runat="server" Text="Thriller" class="category-item--title"></asp:Label>
                    <asp:Label ID="Label32" runat="server" Text="Unpredictable, chilling, and filled with deep secrets."></asp:Label>
                    <asp:Button ID="Button9" runat="server" Text="Explore" class="category-button" />
                </div>
            </div>
        </div>

            <asp:Button ID="Button10" runat="server" Text="Browse All" class="browse_all-button" />

                                           <%--FOOTER--%>

    <div style="background-color: #43b14b;display: flex;margin-top: 20px;justify-content: space-around;padding: 10px;" class="auto-style1">
        <div style="display: flex;flex-direction: column;gap: 10px;">
            <asp:Label ID="Label20" runat="server" Text="Follow our Social Media:" class="footer-heading"></asp:Label>
            <div style="display: flex;gap: 10px;">
                <a href="https://www.instagram.com/" style="text-decoration: none;color: black;display: flex;gap: 5px;"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/Content/images/instagram.png" Width="30px" /><asp:Label ID="Label17" runat="server" Text="Instagram" style="margin-right: 10px;"></asp:Label></a>
                <a href="https://www.x.com/" style="text-decoration: none;color: black;display: flex;gap: 5px;"><asp:Image ID="Image6" runat="server" Height="30px" ImageUrl="~/Content/images/x.png" Width="30px" /><asp:Label ID="Label18" runat="server" Text="X (Twitter)" style="margin-right: 10px;"></asp:Label></a>
                <a href="https://www.tiktok.com/" style="text-decoration: none;color: black;display: flex;gap: 5px;"><asp:Image ID="Image7" runat="server" Height="30px" ImageUrl="~/Content/images/tiktok.png" Width="30px" /><asp:Label ID="Label19" runat="server" Text="TikTok" style="margin-right: 10px;"></asp:Label></a>
            </div>
        </div>
        <div style="display: flex;flex-direction: column;">
            <asp:Label ID="Label14" runat="server" Text="Contact Information" class="footer-heading"></asp:Label>
            <asp:Label ID="Label13" runat="server" Text="EMAIL: support@bookhaven.com"></asp:Label>
            <asp:Label ID="Label15" runat="server" Text="TEL: 123-456-789"></asp:Label>
        </div>
    </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
