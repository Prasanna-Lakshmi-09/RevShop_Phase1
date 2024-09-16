<%@page import="com.revshop.utility.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Shopping System</title>
       
    </head>
    <body>
        <div class="ban-top">
            <div class="container">
                <div class="top_nav_left">
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed"
                                        data-toggle="collapse"
                                        data-target="#bs-example-navbar-collapse-1"
                                        aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span> <spanclass="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                                </button>
                            </div>
                            <jsp:include page="header.jsp"></jsp:include>
                            </div>
                        </nav>
                    </div>
                    <div class="top_nav_right">
                        <div class="cart box_1">
                            <a href="checkout.jsp"> 
                            <%
                                ResultSet resultCount = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcart where customer_id='" + session.getAttribute("id") + "'");
                                resultCount.next();
                                int count = resultCount.getInt(1);
                            %>
                            <h3>
                                <div class="total">
                                    <i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
                                    (
                                    <%=count%>
                                    items )
                                </div>
                            </h3>
                        </a>
                        <p>
                            <a href="javascript:;" class="simpleCart_empty">Empty Cart</a>
                        </p>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <br>
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-info">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body modal-spa">
                    <div class="login-grids">
                        <div class="login">
                            <div class="login-bottom">
                                <h3>Sign up for free</h3>
                                <%
                                    String success = (String) session.getAttribute("success-message");
                                    if (success != null) {
                                        session.removeAttribute("success-message");
                                %>
                                <div class='alert alert-success' id='success' style="width: 680px;">Customer
                                    Register Successfully.</div>
                                    <%
                                        }
                                        String fail = (String) session.getAttribute("fail-message");
                                        if (fail != null) {
                                            session.removeAttribute("fail-message");
                                    %>
                                <div class="alert alert-danger" id='danger' style="width: 680px;">Customer
                                    Registration Fail,Please try again</div>
                                    <%
                                        }
                                    %>
                                <form action="AddCustomer" method="post">
                                    <div class="sign-up">
                                        <h4>Your Name :</h4>
                                        <input type="text" placeholder="Your Name" required="" style="width: 680px;" name="name">
                                    </div>
                                    <div class="sign-up">
                                        <h4>Email :</h4>
                                        <input type="text" placeholder="Type here" required="" style="width: 680px;" name="email">
                                    </div>
                                    <div class="sign-up">
                                        <h4>Password :</h4>
                                        <input type="password" placeholder="Password" required="" style="width: 680px;" name="password">
                                    </div>
                                    <div class="sign-up">
                                        <h4>Phone :</h4>
                                        <input type="text" placeholder="Type here" required="" style="width: 680px;" name="mobile">
                                    </div>
                                    <div class="sign-up">
                                        <h4>Gender :</h4>
                                        <br> <select class="form-control" style="width: 680px;" name="gender">
                                            <option>Male</option>
                                            <option>Female</option>
                                        </select>
                                    </div>
                                    <br>
                                    <div class="sign-up">
                                        <h4>Address :</h4>
                                        <input type="text" placeholder="Type here" required="" style="min-height: 100px; width: 680px;" name="address">
                                    </div>
                                    <div class="sign-up">
                                        <h4>Pin Code :</h4>
                                        <input type="text" placeholder="Pincode" required="" style="width: 680px;" name="pincode">
                                    </div>
                                    <div class="sign-up">
                                        <input type="submit" value="REGISTER NOW" style="width: 680px;">
                                    </div>
                                </form>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <p>
                            <a href="customer-login.jsp">Existing Customer? Log In</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
<!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Retailer E-commerce Dashboard. All rights reserved.</p>
    </div>
    </body>
</html>