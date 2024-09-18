<%@page import="com.revshop.entity.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.revshop.utility.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Products</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
    
     <%
       String message = (String) session.getAttribute("message");
       if (message != null) {
         session.removeAttribute("message");
     %>
     <div class="alert alert-danger" id="success">Product added successfully.</div>
    <%
       }
    %>
    
    
    <div class="container">
        <h2 class="my-4">Add Products</h2>

        <!-- Add Product Form -->
        <form action="addProducts" method="post">
            <div class="form-group">
                <label for="name">Product Name:</label>
                <input type="text" id="name" name="name" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="number" id="price" name="price" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea id="description" name="description" class="form-control" required></textarea>
            </div>
            <div class="form-group">
                <label for="status">Status</label> 
                   <select class="form-control" name="status" required>
                       <option>Active</option>
                       <option>In-Active</option>
                   </select>
            </div>
            <div class="form-group">
                <label for="category">Product Category</label> 
                  <input class="form-control" type="text" name="category" required/>
            </div>

            <div class="form-group">
                <label for="image">Attach Product Image</label> 
                <input type="file" name="image" required/>
            </div>
            <button type="submit" class="btn btn-primary" onclick="return confirm('Are you sure Do you want to add this product?');">Add Product</button>
            <button type="reset" class="btn btn-danger">Reset</button>
        </form>
   </div>
   
   <script src="assets/js/jquery-1.10.2.js"></script>
            <script src="assets/js/bootstrap.js"></script>
            <script src="assets/js/custom.js"></script>
</body>