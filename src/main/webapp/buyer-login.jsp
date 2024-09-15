<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container" style="max-width: 400px; margin-top: 100px;">
        <h2 class="text-center">Customer Login</h2>
        <form action="/customerLoginSubmit" method="post">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-success btn-block">Login</button>
        </form>
    </div>
</body>
</html>
