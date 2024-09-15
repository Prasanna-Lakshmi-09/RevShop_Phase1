<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Retailer Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

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

        .dashboard-title {
            text-align: center;
            margin-top: 20px;
            margin-bottom: 40px;
        }

        .card {
            margin-bottom: 20px;
        }

        .footer {
            background-color: #343a40;
            color: #fff;
            padding: 15px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
            box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
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

    <!-- Main Dashboard Section -->
    <div class="container">
        <h2 class="dashboard-title">Welcome, [Seller Name]!</h2>

        <div class="row">
            <!-- Add Products -->
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">Add Products</h5>
                        <p class="card-text">Add products in your store.</p>
                        <a href="addProduct.jsp" class="btn btn-primary">Add Products</a>
                    </div>
                </div>
            </div>
            
            <!-- View Products -->
            <div class="col-md-4">
              <div class="card text-center">
                 <div class="card-body">
                   <h5 class="card-title">View Products</h5>
                   <p class="card-text">View Products in your store</p>
                   <a href="viewProducts.jsp" class="btn btn-primary">View Products</a>
                 </div>
              </div>
            </div>

            <!-- View Orders -->
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">View Orders</h5>
                        <p class="card-text">Track and manage customer orders.</p>
                        <a href="viewOrders.jsp" class="btn btn-primary">View Orders</a>
                    </div>
                </div>
            </div>

            <!-- Manage Profile -->
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">Manage Profile</h5>
                        <p class="card-text">Update your personal and business information.</p>
                        <a href="manageProfile.jsp" class="btn btn-primary">Manage Profile</a>
                    </div>
                </div>
            </div>
          
          <!-- Customer Feedback -->  
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">Customer Feedback</h5>
                        <p class="card-text">Check feedback from customers on your products.</p>
                        <a href="customerFeedback.jsp" class="btn btn-primary">View Feedback</a>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Retailer E-commerce Dashboard. All rights reserved.</p>
    </div>

    <!-- Optional JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
