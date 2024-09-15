<%@page import="com.revshop.utility.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Shopping System</title>
        <style >
     .navbar {
            background-color: #343a40;
        }

        .navbar-brand {
            color: #fff;
        }

        .navbar-nav .nav-link {
            color: #fff;
        }

        .navbar-nav .nav-link:hover {
            color: #ddd;
        }
       
     }
    </style>
    </head>
    <body>
    
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Seller Dashboard</a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                   <a class="nav-link" href="home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="manageProducts.jsp">Manage Products</a>
                </li>
                <li class="nav-item">
                   <a class="nav-link" href="viewOrders.jsp">View Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="manageProfile.jsp">Profile</a>
                </li>
                <li class="nav-item">
                   <a class="nav-link" href="customerFeedback.jsp">Customer-FeedBack</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>  
    
        <%
            //Checking whether admin in session or not
            if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
        %>
            <div class="content-wrapper">
                <div class="container">
                    <div class="row pad-botm">
                        <div class="col-md-12">
                            <h4 class="header-line">Edit Product</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-info">
                                <div class="panel-heading">Edit Product</div>
                            <%
                                //Getting input from the admin
                                int id = Integer.parseInt(request.getParameter("id"));
                                //Querying to database
                                ResultSet updateResult = DatabaseConnection.getResultFromSqlQuery("select * from tblproduct where id='" + id + "' ");
                                while (updateResult.next()) {
                            %>
                            <div class="panel-body">
                                <form role="form" action="admin-edit-product-process.jsp"
                                      method="post">
                                    <div class="form-group">
                                        <label>Product Id</label> <input class="form-control" type="text" name="pid" value="<%=updateResult.getString("id")%>" readonly />
                                    </div>
                                    <div class="form-group">
                                        <label>Enter Name</label> <input class="form-control" type="text" name="pname" value="<%=updateResult.getString("name")%>" />
                                    </div>
                                    <div class="form-group">
                                        <label>Price</label> <input class="form-control" type="text" name="price" value="<%=updateResult.getString("price")%>" />
                                    </div>
                                    <div class="form-group">
                                        <label>Description</label> <input class="form-control" type="text" style="min-height: 100px;" name="description" value="<%=updateResult.getString("description")%>" />
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Status</label> <select class="form-control" name="status">
                                            <option>Active</option>
                                            <option>In-Active</option></select>
                                    </div>

                                    <button type="submit" class="btn btn-success">Update Product</button>
                                </form>
                            </div>
                            <%
                                }
                            %>
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