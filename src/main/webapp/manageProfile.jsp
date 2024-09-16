<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Profile</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style >
     
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

.navbar {
    background-color: #343a40;
    padding: 1rem;
}

.navbar-brand {
    color: #ffffff;
    font-weight: bold;
    font-size: 1.5rem;
}

.navbar-nav .nav-item .nav-link {
    color: #ffffff;
    margin-right: 1rem;
}

.navbar-nav .nav-item .nav-link:hover {
    color: #f8f9fa;
    text-decoration: underline;
}

.navbar-nav .nav-item.active .nav-link {
    font-weight: bold;
    color: #ffd700;
}

/* Container styling */
.container {
    margin-top: 20px;
    background-color: #ffffff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Heading */
h2 {
    font-size: 1.8rem;
    font-weight: bold;
    margin-bottom: 20px;
    color: #343a40;
}

/* Form styling */
.form-group {
    margin-bottom: 1rem;
}

.form-group label {
    font-weight: bold;
    margin-bottom: 0.5rem;
    display: block;
}

.form-control {
    border: 1px solid #ced4da;
    border-radius: 5px;
    padding: 10px;
    font-size: 1rem;
    width: 100%;
}

.form-control:focus {
    border-color: #80bdff;
    box-shadow: 0 0 0 0.2rem rgba(38, 143, 255, 0.25);
}

/* Button styling */
.btn-primary {
    background-color: #007bff;
    border-color: #007bff;
    color: #ffffff;
    padding: 10px 15px;
    font-size: 1rem;
    border-radius: 5px;
    display: inline-block;
    text-align: center;
    cursor: pointer;
    text-decoration: none;
}

.btn-primary:hover {
    background-color: #0056b3;
    border-color: #004085;
}

/* Responsive design */
@media (max-width: 768px) {
    .navbar-nav {
        flex-direction: column;
        text-align: center;
    }

    .navbar-nav .nav-item {
        margin: 5px 0;
    }

    .container {
        padding: 10px;
    }

    .form-group {
        margin-bottom: 0.5rem;
    }

    .btn-primary {
        width: 100%;
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
                   <a class="nav-link" href="manageProducts.jsp">Manage Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewOrders.jsp">View Orders</a>
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
    

    <div class="container">
        <h2 class="my-4">Manage Profile</h2>

        <!-- Update Profile Form -->
        <form action="/updateProfile" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" class="form-control" value="${seller.name}" required>
            </div>
            
            <div class="form-group">
                <label for="address">Address:</label>
                <textarea id="address" name="address" class="form-control" required>${seller.address}</textarea>
            </div>
            
            <div class="form-group">
                <label for="phno">Phone No:</label>
                <input id="phno" name="phno" class="form-control" value="${seller.phNo}" required>
            </div>
            
            
            <button type="submit" class="btn btn-primary">Update Profile</button>
        </form>
    </div>
</body>
</html>
