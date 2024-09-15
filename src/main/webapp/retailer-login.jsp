<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Retailer Login - E-Commerce Application</title>
    <style>
body, h1, h2, h3, p, a {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
}

body {
    background-color: #f5f5f5;
}

/* Header styling */
header {
    background-color: #343a40;
    color: #fff;
    padding: 15px 0;
    text-align: center;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.header-container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

/* Footer styling */
footer {
    background-color: #343a40;
    color: #fff;
    padding: 10px 0;
    text-align: center;
    box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
    position: absolute;
    bottom: 0;
    width: 100%;
}

.footer-container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

/* Login container styling */
.login-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: calc(100vh - 130px); /* Adjust for header and footer height */
    padding: 20px;
}

.container {
    max-width: 400px;
    width: 100%;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
}

/* Heading styles */
h2, h3 {
    margin-bottom: 20px;
}

h2 {
    text-align:center;
    font-size: 24px;
    color: #333;
}

h3 {
    font-size: 18px;
    color: #666;
}

/* Alert styling */
.alert {
    padding: 15px;
    margin-bottom: 20px;
    border-radius: 4px;
}

.alert-danger {
    background-color: #f8d7da;
    color: #721c24;
    border: 1px solid #f5c6cb;
}

/* Form styling */
.form-group {
    margin-bottom: 15px;
}

label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

input[type="text"], input[type="password"] {
    width: 95%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

input[type="text"]:focus, input[type="password"]:focus {
    border-color: #007bff;
    outline: none;
}

/* Button styling */
.btn {
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    border-radius: 4px;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s;
}

.btn-warning {
    background-color: #ffc107;
    color: #212529;
}

.btn-warning:hover {
    background-color: #e0a800;
}

/* Register link styling */
.register-link {
    margin-top: 15px;
    text-align: center;
}

.register-link a {
    color: #007bff;
    text-decoration: none;
}

.register-link a:hover {
    text-decoration: underline;
}
               
    </style>
    
</head>
<body>
<header>
        <div class="header-container">
            <h1>Rev Shop</h1>
        </div>
    </header>
    <div class="login-container">
        <div class="container">
            <h2 class="text-center">Retailer Login</h2>
            <h3 class="text-center">Sign in with your account</h3>

            <%
                String credential = (String) session.getAttribute("credential");
                if (credential != null) {
            %>
            <div class="alert alert-danger">
                You have entered wrong credentials.
            </div>
            <%
                session.removeAttribute("credential");
                }
            %>

            <form action="retailer-login" method="post">
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="text" id="email" name="email" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-warning btn-block">Login</button>
            </form>
            
            <div class="register-link">
                <p>
                    <a href="register.jsp">New to Smart Shop? Create an account</a>
                </p>
            </div>
        </div>
    </div>
     <footer>
        <div class="footer-container">
            <p>&copy; 2024 Rev Shop. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
