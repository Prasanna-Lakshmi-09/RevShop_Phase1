<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Retailer Orders</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css' />" />
</head>
<body>


<h2>All Orders for Your Products</h2>

<table border="1" cellpadding="10" cellspacing="0">
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
    <tbody>
        <c:forEach var="order" items="${orderList}" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${order.orderNo}</td>
                <td>
                    ${order.customer.name}<br>
                    ${order.customer.email}<br>
                    ${order.customer.phone}
                </td>
                <td>${order.product.name}</td>
                <td>${order.quantity}</td>
                <td>${order.totalAmount}</td>
                <td>${order.status}</td>
                <td>${order.orderDateTime}</td>
                <td>${order.paymentMode}</td>
                <td>
                    <!-- Add action buttons or links here -->
                    <a href="<c:url value='/retailer/orderDetails?id=${order.id}' />">View Details</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>


</body>
</html>
