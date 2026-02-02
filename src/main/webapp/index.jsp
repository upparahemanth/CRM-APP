<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #eef2f7;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 400px;
        margin: 100px auto;
        background-color: #ffffff;
        padding: 30px;
        text-align: center;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    h1 {
        color: #333;
    }

    p {
        color: #666;
        margin-bottom: 20px;
    }

    a {
        display: block;
        margin: 10px 0;
        padding: 10px;
        text-decoration: none;
        background-color: #007bff;
        color: white;
        border-radius: 4px;
    }

    a:hover {
        background-color: #0056b3;
    }
</style>

</head>
<body>

<div class="container">
    <h1>Welcome to CRM App</h1>
    <p>Customer Relationship Management System</p>

    <a href="Register.jsp">Register</a>
    <a href="Login.jsp">Login</a>
</div>

</body>
</html>
