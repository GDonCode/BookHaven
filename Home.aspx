<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BookHaven.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="padding: 0;">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <style>
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

    </style>
</head>
<body style="padding: 0; margin: 0; width: 100%;height: 100%;">
    <form id="form1" runat="server" style="position: relative;min-height: 100vh;padding-bottom: 120px;box-sizing: border-box;">
         
                                    <%--  NAV--%>

        <div style="background-color: #43b14b; display: flex;flex-direction: column; align-items: center; justify-content: space-between;padding-top: 10px;">
            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Content/images/logo.png" Width="100px"/>
                                  <%--  NAV LINKS --%>
            <div style="display: flex;gap: 100px;margin-left: -16px;">
                <a href="#" class="nav-link"><asp:Label ID="Label1" runat="server" Text="Browse Books"></asp:Label></a>
                <a href="#" class="nav-link"><asp:Label ID="Label2" runat="server" Text="User Account"></asp:Label></a>
                <a href="#" class="nav-link"><asp:Label ID="Label3" runat="server" Text="Contact Us"></asp:Label></a>
                <a href="#" class="nav-link"><asp:Label ID="Label4" runat="server" Text="Shopping Cart"></asp:Label></a>
            </div>
        </div>
        <br />

        <div style="text-align: center;width: 75%; margin: 0 auto;">
            <asp:Label ID="Label5" runat="server" Text="Welcome to Book Haven - Your Ultimate Bookstore! " style="font-size: 24px;margin: 0 auto;"></asp:Label>
            <br />
            <p>
            <asp:Label ID="Label6" runat="server" Text="Dive into a world of stories, knowledge, and adventure with our vast collection of books. Whether you're a fan of thrilling mysteries, timeless classics, or the latest bestsellers, Book Haven has something for everyone."></asp:Label>
            </p>
            <asp:Label ID="Label16" runat="server" Text="Featured Books" style="text-decoration: underline;font-size: 20px;"></asp:Label> 
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
                                <asp:Button ID="Button4" runat="server" Text="Add to Cart" class="add_to_cart"/>
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="carousel-container">
                             <asp:Image ID="Image4" runat="server" ImageAlign="Middle" ImageUrl="~/Content/images/davinci_code.jpg" class="carousel-img"/>
                             <div style="display: flex;flex-direction: column;">
                                <asp:Label ID="Label11" runat="server" Text="The DaVinci Code by Dan Brown"></asp:Label>
                                <asp:Label ID="Label12" runat="server" Text="$35.00"></asp:Label>
                                 <asp:Button ID="Button5" runat="server" Text="Add to Cart" class="add_to_cart"/>
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

                                           <%--FOOTER--%>

    <div style="background-color: #43b14b;display: flex;margin-top: 20px;justify-content: space-around;padding: 10px;" class="auto-style1">
        <div style="display: flex;flex-direction: column;gap: 10px;">
            <asp:Label ID="Label20" runat="server" Text="Follow our Social Media:" style="font-size: 20px;"></asp:Label>
            <div style="display: flex;gap: 10px;">
                <a href="https://www.instagram.com/" style="text-decoration: none;color: black;display: flex;gap: 5px;"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/Content/images/instagram.png" Width="30px" /><asp:Label ID="Label17" runat="server" Text="Instagram" style="margin-right: 10px;"></asp:Label></a>
                <a href="https://www.x.com/" style="text-decoration: none;color: black;display: flex;gap: 5px;"><asp:Image ID="Image6" runat="server" Height="30px" ImageUrl="~/Content/images/x.png" Width="30px" /><asp:Label ID="Label18" runat="server" Text="X (Twitter)" style="margin-right: 10px;"></asp:Label></a>
                <a href="https://www.tiktok.com/" style="text-decoration: none;color: black;display: flex;gap: 5px;"><asp:Image ID="Image7" runat="server" Height="30px" ImageUrl="~/Content/images/tiktok.png" Width="30px" /><asp:Label ID="Label19" runat="server" Text="TikTok" style="margin-right: 10px;"></asp:Label></a>
            </div>
        </div>
        <div style="display: flex;flex-direction: column;">
            <asp:Label ID="Label14" runat="server" Text="Contact Information" style="font-size: 20px;"></asp:Label>
            <asp:Label ID="Label13" runat="server" Text="EMAIL: support@bookhaven.com"></asp:Label>
            <asp:Label ID="Label15" runat="server" Text="TEL: 123-456-789"></asp:Label>
        </div>
    </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
