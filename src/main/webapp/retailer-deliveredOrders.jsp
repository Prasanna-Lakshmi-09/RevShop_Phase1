<%@page import="com.revshop.utility.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
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
 <%
            //Checking whether retailer in session or not
            if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
        %>
        
            <!-- MENU SECTION END-->
            <div class="content-wrapper">
                <div class="container-fluid">
                    <div class="row pad-botm">
                        <div class="col-md-12">
                            <h4 class="header-line">Delivered Orders</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="panel panel-success">
                                <div class="panel-heading">Delivered Orders</div>
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
                                                    <th>Date</th>
                                                    <th>Payment Mode</th>
                                                </tr>
                                            </thead>
                                        <%
                                            //Querying to the database
                                            ResultSet resultOrders = DatabaseConnection.getResultFromSqlQuery("select * from tblorders where order_status='Deliver'");
                                            while (resultOrders.next()) {
                                        %>
                                        <tbody>
                                            <tr>
                                                <td><%=resultOrders.getInt(1)%></td>
                                                <td><%=resultOrders.getInt(2)%></td>
                                                <td><%=resultOrders.getString(3)%>|<%=resultOrders.getString(4)%>|<%=resultOrders.getString(5)%>|<%=resultOrders.getString(6)%>|<%=resultOrders.getString(7)%>|<%=resultOrders.getString(8)%></td>
                                                <td><img src="uploads/<%=resultOrders.getString(9)%>"
                                                         alt="" class="pro-image-front"
                                                         style="width: 150px; height: 100px;"><br><%=resultOrders.getString(10)%></td>
                                                <td><%=resultOrders.getString(11)%></td>
                                                <td><%=resultOrders.getString(14)%></td>
                                                <%
                                                    if (resultOrders.getString(15).equals("Deliver")) {
                                                %>
                                                <td><span class="label label-success">Delivered</span></td>
                                                <%
                                                } else {
                                                %>
                                                <td><span class="label label-danger">Pending</span></td>
                                                <%
                                                    }
                                                %>
                                                <td><%=resultOrders.getString(16)%></td>
                                                <td><%=resultOrders.getString(17)%></td>
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
        
        <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Retailer E-commerce Dashboard. All rights reserved.</p>
    </div>
</body>
</html>