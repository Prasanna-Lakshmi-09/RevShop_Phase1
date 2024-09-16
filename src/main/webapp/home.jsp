<%@page import="java.util.List"%>
<%@page import="com.revshop.entity.Product"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home - E-Commerce Application</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <header>
        <div class="container">
            <h1>My E-Commerce Site</h1>
            <nav>
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="products.jsp">Products</a></li>
                    <li><a href="buyer-login.jsp">Buyer Login</a></li>
                    <li><a href="buyer-register">Buyer Register</a>
                    <li><a href="retailer-login.jsp">Retailer Login</a>
                    <li><a href="register.jsp">Retailer Register</a>
                    <li><a href="admin-login.jsp">Admin</a></li>
                    
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <div class="container">
            <h2>Featured Products</h2>
            <div class="product-list">
                <% 
                    // Example code to display products, assuming a list of products is available
                    List<Product> products = (List<Product>)request.getAttribute("products");
                    if (products != null && !products.isEmpty()) {
                        for (Product product : products) {
                %>
                <div class="product">
                    <img src="<%= product.getImage() %>" alt="<%= product.getImage_name() %>">
                    <h3><%= product.getProductName() %></h3>
                    <p><%= product.getDescription() %></p>
                    <p><strong>Price: <%= product.getPrice() %></strong></p>
                    <a href="/product?id=<%= product.getProductId() %>" class="btn">View Details</a>
                </div>
                <% 
                        }
                    } else {
                %>
                <p>No products available at the moment.</p>
                <% 
                    }
                %>
            </div>
        </div>
    </main>

    <footer>
        <div class="container">
            <p>&copy; 2024 My E-Commerce Site. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
