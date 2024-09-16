<%@page import="com.revshop.utility.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Rev Shop</title>
        
    </head> 
    <body>
 
   
        <div class="ban-top">
            <div class="container">
                <div class="top_nav_left">
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed"
                                        data-toggle="collapse"
                                        data-target="#bs-example-navbar-collapse-1"
                                        aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span> <span
                                        class="icon-bar"></span> <span class="icon-bar"></span> <span
                                        class="icon-bar"></span>
                                </button>
                            </div>
                            </div>
                        </nav>
                    </div>

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
                    <li><a href="register.jsp">Retailer register</a>
                    <li><a href="admin-login.jsp">Admin</a></li>
                   </ul>
            </nav>
        </div>
    </header>
                   
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="page-head">
            <div class="container">
                <h3>Products</h3>
            </div>
        </div>
        <br/>
        <div class="electronics">
            <div class="container">
                <div class="clearfix"></div>
                <div class="ele-bottom-grid">
                    <h3>
                        Our Products
                    </h3>
                    <%
                        ResultSet retriveProduct = DatabaseConnection.getResultFromSqlQuery("select * from tblproduct");
                        while (retriveProduct.next()) {
                    %>
                    <form action="AddToCart" method="post">
                        <div class="col-md-3 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    <input type="hidden" name="productId" value="<%=retriveProduct.getInt("id")%>">
                                    <img src="uploads/<%=retriveProduct.getString("image_name")%>" alt="" class="pro-image-front">
                                    <img src="uploads/<%=retriveProduct.getString("image_name")%>" alt="" class="pro-image-back"> <span class="product-new-top">New</span>
                                </div>
                                <div class="item-info-product ">
                                    <h4>
                                        <%=retriveProduct.getString("name")%>
                                    </h4>
                                    <h5>
                                        Category: <%=retriveProduct.getString("product_category")%>
                                    </h5>
                                    <div class="info-product-price">
                                        <input type="hidden" name="price" value="<%=retriveProduct.getString("price")%>"> 
                                        <input type="hidden" name="mrp_price" value="<%=retriveProduct.getString("mrp_price")%>"> <span class="item_price"><%=retriveProduct.getString("price")%> Rs.</span>
                                        <del><%=retriveProduct.getString("mrp_price")%> Rs.</del>
                                    </div>
                                    <input type="submit" value="Add to cart" class="btn btn-warning" onclick="return confirm('Are you sure Do you want to add this item in cart?');">
                                </div>
                            </div>
                        </div>
                    </form>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
        
        <footer>
        <div class="container">
            <p>&copy; 2024 My E-Commerce Site. All rights reserved.</p>
        </div>
    </footer>
    </body>
</html>