<%@page import="com.revshop.utility.DatabaseConnection"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <title>Retailer Orders</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    <link rel="stylesheet" href="css/orders.css" />
    
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
            //Checking whether retailer in session or not
            if (session.getAttribute("email") != null && session.getAttribute("email") != "") {
        %>
        
            <div class="content-wrapper">
                <div class="container-fluid">
                    <div class="row pad-botm">
                        <div class="col-md-12">
                            <h4 class="header-line">All Orders</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="panel panel-success">
                  <!--                <div class="panel-heading">All Orders</div>   -->
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Order No</th>
                                                    <th>Customer Details</th>
                                                    <th>Product</th>
                                                    <th>Qty</th>
                                                    <th>Total Amount</th>
                                                    <th>Status</th>
                                                    <th>Order Date & Time</th>
                                                    <th>Payment Mode</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                        <%
                                            ResultSet resultOrders = DatabaseConnection.getResultFromSqlQuery("select * from order1");
                                            while (resultOrders.next()) {
                                        %>
                                        <tbody>
                                            <tr>
                                                <td><%=resultOrders.getInt(1)%></td>
                                                <td><%=resultOrders.getInt(2) %></td>
                                                <td>Name: <%=resultOrders.getString(3)%><br>
                                                    Phone No: <%=resultOrders.getString(4)%><br>
                                                    Email: <%=resultOrders.getString(5)%><br>
                                                    Address: <%=resultOrders.getString(6)%><br>
                                                    Pincode: <%=resultOrders.getString(7)%></td>
                                                <td><img src="uploads/<%=resultOrders.getString(8)%>"
                                                         alt="" class="pro-image-front"
                                                         style="width: 150px; height: 100px;"><br><%=resultOrders.getString(9)%></td>
                                                <td><%=resultOrders.getString(10)%></td>
                                                <td><%=resultOrders.getString(13)%></td>
                                                <%
                                                    if (resultOrders.getString(14).equals("Deliver")) {
                                                %>
                                                <td><span class="label label-success">Delivered</span></td>
                                                <%
                                                } else {
                                                %>
                                                <td><span class="label label-danger">Pending</span></td>
                                                <%
                                                    }
                                                %>
                                                <td><%=resultOrders.getString(15)%></td>
                                                <td><%=resultOrders.getString(16)%></td>
                                                <%
                                                    if (resultOrders.getString(14).equals("Deliver")) {
                                                %>
                                                <td><a href="CustomerProductsOrderStatus?order_no=<%=resultOrders.getInt(2)%>"><button class="btn btn-danger" onClick="return confirm('Are you sure, You want to change product delivery status');">Pending</button></a></td>
                                                <%
                                                } else {
                                                %>
                                                <td><a
                                                        href="CustomerProductsOrderStatus?order_no=<%=resultOrders.getInt(2)%>"><button class="btn btn-primary" onClick="return confirm('Are you sure, You want to change product delivery status?');">Deliver</button></a></td>
                                                    <%
                                                        }
                                                    %>
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
