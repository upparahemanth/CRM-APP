<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
    .navbar {
        background-color: #1f2937;
        padding: 12px 30px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .nav-left, .nav-right {
        display: flex;
        gap: 20px;
    }

    .navbar a {
        color: #ffffff;
        text-decoration: none;
        font-size: 15px;
        padding: 8px 14px;
        border-radius: 4px;
        transition: background 0.3s ease;
    }

    .navbar a:hover {
        background-color: #374151;
    }
</style>
</head>

<body>
    <div class="navbar">
        <!-- Left side -->
        <div class="nav-left">
        	<img src="images/crmlogo.png" height='50px' width='50px'>
            <a href="index.jsp">Home</a>
            <a href="Dashboard">Dashboard</a>
            <a href="Register.jsp">Register</a>
            <a href="Product">Products</a>
            <a href="AddProducts.jsp">Add Products</a>
        </div>

        <!-- Right side -->
        <div class="nav-right">
            <a href="Login.jsp">Login</a>
            <a href="Logout">Logout</a>
        </div>
    </div>
</body>
</html>
