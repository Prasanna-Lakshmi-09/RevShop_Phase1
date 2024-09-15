<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Retailer Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #343a40;
            color: #fff;
            padding: 15px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .header-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header-container h1 {
            margin: 0;
        }

        .header-nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 15px;
            font-size: 16px;
        }

        .header-nav a:hover {
            text-decoration: underline;
        }

        footer {
            background-color: #343a40;
            color: #fff;
            padding: 5px 0;
            text-align: center;
            box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
            position: relative;
            bottom: 0;
            width: 100%;
        }

        .container {
            width: 100%;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        .sign-up {
            margin-bottom: 20px;
        }

        .sign-up h4 {
            margin-bottom: 5px;
            font-size: 16px;
            color: #333;
        }

        .sign-up input[type="text"], 
        .sign-up input[type="password"] {
            width: calc(100% - 22px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
            box-sizing: border-box;
        }

        .sign-up input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .sign-up input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .clearfix::after {
            content: "";
            display: table;
            clear: both;
        }

        p {
            text-align: center;
            margin-top: 20px;
        }

        p a {
            color: #007bff;
            text-decoration: none;
        }

        p a:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        function validateForm() {
            var name = document.querySelector('input[name="name"]').value;
            var email = document.querySelector('input[name="email"]').value;
            var password = document.querySelector('input[name="password"]').value;
            var mobile = document.querySelector('input[name="mobile"]').value;
            var address = document.querySelector('input[name="address"]').value;
            
            if (name === "" || email === "" || password === "" || mobile === "" || address === "") {
                alert("All fields are required!");
                return false;
            }
            // Additional validation can be added here (e.g., email format, password strength)
            return true;
        }
    </script>
</head>
<body>
    <header>
        <div class="header-container">
            <h1>Rev Shop</h1>
            <nav class="header-nav">
                <a href="home.jsp">Home</a>
                <a href="buyer-login.jsp">Buyer Login</a>
                <a href="buyer-registration.jsp">Buyer Registration</a>
                <a href="retailer-login.jsp">Retailer Login</a>
                <a href="admin.jsp">Admin</a>
            </nav>
        </div>
    </header>

    <div class="container">
        <h2 class="text-center">Retailer Registration</h2>
        <form action="/register" method="post" onsubmit="return validateForm()">
            <div class="sign-up">
                <h4>Your Name :</h4>
                <input type="text" placeholder="Your Name" required name="name">
            </div>
            <div class="sign-up">
                <h4>Email :</h4>
                <input type="text" placeholder="Type here" required name="email">
            </div>
            <div class="sign-up">
                <h4>Password :</h4>
                <input type="password" placeholder="Password" required name="password">
            </div>
            <div class="sign-up">
                <h4>Phone :</h4>
                <input type="text" placeholder="Type here" required name="mobile">
            </div>
            <div class="sign-up">
                <h4>Address :</h4>
                <input type="text" placeholder="Type here" required style="min-height: 100px;" name="address">
            </div>
            <div class="sign-up">
                <input type="submit" value="REGISTER NOW">
            </div>
        </form>
        <div class="clearfix"></div>
        <p>
            <a href="retailer-login.jsp">Existing Retailer? Log In</a>
        </p>
    </div>

    <footer>
        <div class="footer-container">
            <p>&copy; 2024 Rev Shop. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
