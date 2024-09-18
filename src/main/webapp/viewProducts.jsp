<%@page import="com.revshop.utility.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Retailer-view products</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        
        <link rel="stylesheet" href="css/viewP.css">
        
    </head>
    <body>
        <%
            //Checking whether retailer in session or not
            if (session.getAttribute("email") != null && session.getAttribute("email") != "") {
        %>
<!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Retailer Dashboard</a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                
                <li class="nav-item">
                <a class="nav-link" href="retailerDashboard.jsp">Dashboard</a>
                </li>
                <li class="nav-item">
                   <a class="nav-link" href="viewOrders.jsp">View Orders</a>
                </li>
                <li class="nav-item">
                   <a class="nav-link" href="customerFeedback.jsp">Customer-FeedBack</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="manageProfile.jsp">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
    
            <div class="content-wrapper">
                <div class="container-fluid">
                    <div class="row pad-botm">
                        <div class="col-md-12">
                            <h4 class="header-line">View Products</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="panel panel-success">
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Name</th>
                                                    <th>Image</th>
                                                    <th>Description</th>
                                                    <th>MRP(Rs)</th>
                                                    <th>Price (Rs)</th>
                                                    
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                        <%
                                            ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from product");
                                            while (rs.next()) {
                                        %>
                                        <tbody>
                                            <tr>
                                                <td><%=rs.getInt("product_id")%></td>
                                                <td><%=rs.getString("product_name")%></td>
                                                <td><image src="uploads/<%=rs.getString("image_name")%>"
                                                           width="100" height="70"></image></td>
                                                <td><%=rs.getString("description")%></td>
                                                <td><del><%=rs.getString("mrp_price")%></del></td>
                                                <td><%=rs.getString("price")%></td>
                                               
                                                <td><%=rs.getString("active")%></td>
                                                <td><a
                                                        href="editProduct.jsp?product_id=<%=rs.getInt("product_id")%>"
                                                        class="btn btn-primary">Edit</a>|<a
                                                        href="deleteProduct.jsp?product_id=<%=rs.getInt("product_id")%>"
                                                        class="btn btn-danger" onclick="return confirm('Are you sure Do you want to delete this product?');">Delete</a></td>
                                            </tr>
                                        </tbody>
                                        <%
                                            }
                                        %>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <script src="assets/js/jquery-1.10.2.js"></script>
            <script src="assets/js/bootstrap.js"></script>
            <script src="assets/js/custom.js"></script>
        <%
            } else {
                response.sendRedirect("retailer-login.jsp");
            }
        %>
    </body>
</html>