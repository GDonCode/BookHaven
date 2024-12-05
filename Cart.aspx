<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="BookHaven.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
        .rmv_cart {
            cursor: pointer;
            background-color: red;
            border: 2px solid black;
            font-size: 1rem;
            transition: font-size 0.3s ease;
            border-radius: 2px;
        }
        .rmv_cart:hover {
            font-size: 1.25rem;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="book-section">
    <asp:Label ID="Label5" runat="server" Text="SEARCH" style="margin-left: 40px;font-size: 1.75rem;font-weight: 500;"></asp:Label>
    <div class="cart_books_grid">
        <div class="item" id="Item_1" runat="server" Visible = "false">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Content/images/becoming.jpg" class="book-cover"/>
            <asp:Label ID="Title_1" runat="server" Text=""></asp:Label>
            <asp:Label ID="Author_1" runat="server" Text=""></asp:Label>
            <asp:Label ID="Price_1" runat="server" Text="$10.00"></asp:Label>
            <asp:Button ID="Button1" runat="server" CommandArgument="1" Text="Remove" class="rmv_cart" OnClick="RmvCartBtn"/>
        </div>
        <div class="item" id="Item_2" runat="server" Visible = "false">
            <asp:Image ID="Image2" runat="server" ImageUrl="2" class="book-cover"/>
            <asp:Label ID="Title_2" runat="server" Text=""></asp:Label>
            <asp:Label ID="Author_2" runat="server" Text=""></asp:Label>
            <asp:Label ID="Price_2" runat="server" Text="$20.00"></asp:Label>
            <asp:Button ID="Button2" runat="server" CommandArgument="2" Text="Remove" class="rmv_cart" OnClick="RmvCartBtn"/>
        </div>
        <div class="item" id="Item_3" runat="server" Visible = "false">
            <asp:Image ID="Image3" runat="server" ImageUrl="2" class="book-cover"/>
            <asp:Label ID="Title_3" runat="server" Text=""></asp:Label>
            <asp:Label ID="Author_3" runat="server" Text=""></asp:Label>
            <asp:Label ID="Price_3" runat="server" Text="$30.00"></asp:Label>
            <asp:Button ID="Button3" runat="server"  CommandArgument="3" Text="Remove" class="rmv_cart" OnClick="RmvCartBtn"/>
        </div>
        <div class="item" id="Item_4" runat="server" Visible = "false">
            <asp:Image ID="Image4" runat="server" ImageUrl="2" class="book-cover"/>
            <asp:Label ID="Title_4" runat="server" Text=""></asp:Label>
            <asp:Label ID="Author_4" runat="server" Text=""></asp:Label>
            <asp:Label ID="Price_4" runat="server" Text="$50.00"></asp:Label>
            <asp:Button ID="Button4" runat="server"  CommandArgument="4" Text="Remove" class="rmv_cart" OnClick="RmvCartBtn"/>
        </div>
        <div  class="item" id="Item_5" runat="server" Visible = "false">
            <asp:Image ID="Image5" runat="server" ImageUrl="2" class="book-cover"/>
            <asp:Label ID="Title_5" runat="server" Text=""></asp:Label>
            <asp:Label ID="Author_5" runat="server" Text=""></asp:Label>
            <asp:Label ID="Price_5" runat="server" Text="$60.00"></asp:Label>
            <asp:Button ID="Button5" runat="server" CommandArgument="5" Text="Remove" class="rmv_cart" OnClick="RmvCartBtn"/>
        </div>
        <div class="item" id="Item_6" runat="server" Visible = "false">
            <asp:Image ID="Image6" runat="server" ImageUrl="2" class="book-cover"/>
            <asp:Label ID="Title_6" runat="server" Text=""></asp:Label>
            <asp:Label ID="Author_6" runat="server" Text=""></asp:Label>
            <asp:Label ID="Price_6" runat="server" Text="$70.00"></asp:Label>
            <asp:Button ID="Button6" runat="server" CommandArgument="6" Text="Remove" class="rmv_cart" OnClick="RmvCartBtn"/>
        </div>
        <div class="item" id="Item_7" runat="server" Visible = "false">
            <asp:Image ID="Image7" runat="server" ImageUrl="2" class="book-cover"/>
            <asp:Label ID="Title_7" runat="server" Text=""></asp:Label>
            <asp:Label ID="Author_7" runat="server" Text=""></asp:Label>
            <asp:Label ID="Price_7" runat="server" Text="$80.00"></asp:Label>
            <asp:Button ID="Button7" runat="server" CommandArgument="7" Text="Remove" class="rmv_cart" OnClick="RmvCartBtn"/>
        </div>
        <div class="item" id="Item_8" runat="server" Visible = "false">
            <asp:Image ID="Image8" runat="server" ImageUrl="2" class="book-cover"/>
            <asp:Label ID="Title_8" runat="server" Text=""></asp:Label>
            <asp:Label ID="Author_8" runat="server" Text=""></asp:Label>
            <asp:Label ID="Price_8" runat="server" Text="$90.00"></asp:Label>
            <asp:Button ID="Button8" runat="server" CommandArgument="8" Text="Remove" class="rmv_cart" OnClick="RmvCartBtn"/>
        </div>
        <div class="item" id="Item_9" runat="server" Visible = "false">
            <asp:Image ID="Image9" runat="server" ImageUrl="2" class="book-cover"/>
            <asp:Label ID="Title_9" runat="server" Text=""></asp:Label>
            <asp:Label ID="Author_9" runat="server" Text=""></asp:Label>
            <asp:Label ID="Price_9" runat="server" Text="$100.00"></asp:Label>
            <asp:Button ID="Button9" runat="server" CommandArgument="9" Text="Remove" class="rmv_cart" OnClick="RmvCartBtn"/>
        </div>
        <div class="item" id="Item_10" runat="server" Visible = "false">
            <asp:Image ID="Image10" runat="server" ImageUrl="2" class="book-cover"/>
            <asp:Label ID="Title_10" runat="server" Text=""></asp:Label>
            <asp:Label ID="Author_10" runat="server" Text=""></asp:Label>
            <asp:Label ID="Price_10" runat="server" Text="$105.00"></asp:Label>
            <asp:Button ID="Button10" runat="server" CommandArgument="10" Text="Remove" class="rmv_cart" OnClick="RmvCartBtn"/>
        </div>
        <div class="item" id="Item_11" runat="server" Visible = "false">
            <asp:Image ID="Image11" runat="server" ImageUrl="2" class="book-cover"/>
            <asp:Label ID="Title_11" runat="server" Text=""></asp:Label>
            <asp:Label ID="Author_11" runat="server" Text=""></asp:Label>
            <asp:Label ID="Price_11" runat="server" Text="$110.00"></asp:Label>
            <asp:Button ID="Button11" runat="server" CommandArgument="11" Text="Remove" class="rmv_cart" OnClick="RmvCartBtn"/>
        </div>
        <div class="item" id="Item_12" runat="server" Visible = "false">
            <asp:Image ID="Image12" runat="server" ImageUrl="2" class="book-cover"/>
            <asp:Label ID="Title_12" runat="server" Text=""></asp:Label>
            <asp:Label ID="Author_12" runat="server" Text=""></asp:Label>
            <asp:Label ID="Price_12" runat="server" Text="$120.00"></asp:Label>
            <asp:Button ID="Button12" runat="server" CommandArgument="12" Text="Remove" class="rmv_cart" OnClick="RmvCartBtn"/>
        </div>
    </div>
</div>
    </form>
</body>
</html>
