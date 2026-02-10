<%@page import="com.crm.dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f8;
        margin: 0;
    }

    h2 {
        text-align: center;
        margin: 30px 0;
        color: #1f2937;
    }

    /* Products Grid */
    .products {
        display: grid;
        grid-template-columns: repeat(4, 1fr); /* 4 per row */
        gap: 20px;
        max-width: 1100px;
        margin: 0 auto 40px;
        padding: 0 20px;
    }

    /* Product Card */
    .items {
        background: #ffffff;
        border-radius: 10px;
        padding: 15px;
        text-align: center;
        box-shadow: 0 4px 10px rgba(0,0,0,0.08);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .items:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 20px rgba(0,0,0,0.12);
    }

    .items img {
        width: 100%;
        height: 180px;
        object-fit: contain;
        margin-bottom: 10px;
    }

    .items h4 {
        margin: 8px 0;
        font-size: 18px;
        color: #111827;
    }

    .items h5 {
        margin: 5px 0;
        font-size: 15px;
        color: #4b5563;
        font-weight: normal;
    }

    /* Responsive layout */
    @media (max-width: 1024px) {
        .products {
            grid-template-columns: repeat(3, 1fr);
        }
    }

    @media (max-width: 768px) {
        .products {
            grid-template-columns: repeat(2, 1fr);
        }
    }

    @media (max-width: 480px) {
        .products {
            grid-template-columns: 1fr;
        }
    }
</style>

</head>
<body>

<%@ include file="Navbar.jsp" %>

<h2>Products</h2>

<div class="products">
<%
    List<Product> plist = (List<Product>) request.getAttribute("plist");
    if (plist != null) {
        for (Product pro : plist) {
%>
        <div class="items">
            <img src="images/<%= pro.getUrl() %>">
            <h4><%= pro.getPname() %></h4>
            <h5>₹ <%= pro.getPrice() %></h5>
            <h5>Stock: <%= pro.getQuantity() %></h5>
        </div>
<%
        }
    }
%>
</div>

</body>
</html>
