<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Feedback</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
    /* General styles */
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

/* Navbar styles */
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

/* Container styles */
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

/* Table styles */
.table {
    width: 100%;
    margin-top: 20px;
    border-collapse: collapse;
}

.table-bordered {
    border: 1px solid #dee2e6;
}

.table thead th {
    background-color: #28a745;
    color: #ffffff;
    font-weight: bold;
    padding: 10px;
    text-align: left;
}

.table tbody td {
    background-color: #ffffff;
    border: 1px solid #dee2e6;
    padding: 10px;
}

.table tbody tr:nth-of-type(odd) {
    background-color: #f8f9fa;
}

.table tbody tr:hover {
    background-color: #e9ecef;
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

    .table {
        font-size: 0.9rem;
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
                   <a class="nav-link" href="home.jsp">Home</a>
                </li>
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
                   <a class="nav-link" href="manageProfile.jsp">Manage Profile</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <h2 class="my-4">Customer Feedback</h2>

        <!-- List of Feedback -->
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Product</th>
                    <th>Customer</th>
                    <th>Feedback</th>
                    <th>Rating</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="feedback" items="${feedbackList}">
                    <tr>
                        <td>${feedback.productName}</td>
                        <td>${feedback.customerName}</td>
                        <td>${feedback.comments}</td>
                        <td>${feedback.rating}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
