<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f8;
        margin: 0;
    }

    h1 {
        text-align: center;
        margin: 30px 0 20px;
        color: #1f2937;
    }

    /* Wrapper to center form below navbar */
    .form-wrapper {
        min-height: calc(100vh - 120px);
        display: flex;
        justify-content: center;
        align-items: flex-start;
    }

    form {
        width: 360px;
        padding: 25px 30px;
        background-color: #ffffff;
        border-radius: 8px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    }

    label {
        font-weight: bold;
        display: block;
        margin-bottom: 6px;
        color: #374151;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }

    input[type="text"]:focus {
        border-color: #007bff;
        outline: none;
    }

    input[type="submit"] {
        width: 100%;
        margin-top: 10px;
        padding: 10px;
        background-color: #007bff;
        border: none;
        color: white;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>

</head>
<body>

<%@ include file="Navbar.jsp" %>

<h1>User Registration Form</h1>

<div class="form-wrapper">
    <form action="Register" method="post">

        <label>Enter User ID</label>
        <input type="text" name="uid" required>

        <label>Enter User Name</label>
        <input type="text" name="uname" required>

        <label>Enter Email</label>
        <input type="text" name="email" required>

        <label>Enter Password</label>
        <input type="text" name="password" required>

        <input type="submit" value="Register">

    </form>
</div>

</body>
</html>
 