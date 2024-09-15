<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Profile</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2 class="my-4">Manage Profile</h2>

        <!-- Update Profile Form -->
        <form action="/updateProfile" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" class="form-control" value="${seller.name}" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control" value="${seller.email}" required>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <textarea id="address" name="address" class="form-control" required>${seller.address}</textarea>
            </div>
            <button type="submit" class="btn btn-primary">Update Profile</button>
        </form>
    </div>
</body>
</html>
