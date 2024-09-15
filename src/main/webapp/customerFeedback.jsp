<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Feedback</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
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
