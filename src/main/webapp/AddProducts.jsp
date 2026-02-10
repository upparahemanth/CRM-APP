<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Products</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f8;
        margin: 0;
    }

    /* Wrapper to center form below navbar */
    .form-wrapper {
        min-height: calc(100vh - 80px); /* approx navbar height */
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .form-container {
        background: #ffffff;
        padding: 25px 30px;
        border-radius: 8px;
        width: 320px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    h3 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    /* Remove number arrows (Chrome, Edge, Safari) */
    input[type="number"]::-webkit-inner-spin-button,
    input[type="number"]::-webkit-outer-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }

    /* Remove number arrows (Firefox) */
    input[type="number"] {
        -moz-appearance: textfield;
    }

    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }

    input[type="text"]:focus,
    input[type="number"]:focus {
        border-color: #007bff;
        outline: none;
    }

    input[type="submit"] {
        width: 90%;
        padding: 10px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 15px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>

</head>
<body>

<%@ include file="Navbar.jsp" %>

<div class="form-wrapper">
    <div class="form-container">
        <h3>Add Products</h3>

        <form action="AddProducts" method="post">
            <input type="number" name="pid" placeholder="Enter Product ID" required>
            <input type="text" name="pname" placeholder="Enter Product Name" required>
            <input type="number" name="price" placeholder="Enter Price" required>
            <input type="number" name="quantity" placeholder="Enter Quantity" required>
            <input type="text" name="url" placeholder="Enter Image URL" required>
            <input type="submit" value="Add Product">
        </form>
    </div>
</div>

</body>
</html>
