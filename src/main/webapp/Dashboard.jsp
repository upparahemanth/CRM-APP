<%@page import="java.util.List"%>
<%@page import="com.crm.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<%@  include file="Navbar.jsp" %>

<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        background-color: #f4f6f8;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 90%;
        max-width: 1000px;
        margin: 40px auto;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
        color: #333;
        margin-bottom: 10px;
    }

    h2 {
        color: #555;
        margin-top: 30px;
        margin-bottom: 15px;
    }

    .welcome {
        color: #0a66c2;
        font-size: 26px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 15px;
    }

    table th {
        background-color: #0a66c2;
        color: #ffffff;
        padding: 12px;
        text-align: left;
    }

    table td {
        padding: 10px;
        border-bottom: 1px solid #ddd;
    }

    table tr:hover {
        background-color: #f1f5f9;
    }

    .action-btns {
        display: flex;
        gap: 8px;
    }

    .edit-btn {
        padding: 6px 12px;
        background-color: #28a745;
        color: white;
        text-decoration: none;
        border-radius: 4px;
        font-size: 14px;
    }

    .edit-btn:hover {
        background-color: #218838;
    }

    .delete-btn {
        padding: 6px 12px;
        background-color: #dc3545;
        color: white;
        text-decoration: none;
        border-radius: 4px;
        font-size: 14px;
    }

    .delete-btn:hover {
        background-color: #c82333;
    }
</style>

<%
    User user = (User) session.getAttribute("us");
	if(user==null){
		request.setAttribute("error","Please Login   First");
		request.getRequestDispatcher("Login.jsp").forward(request,response);
		return;
	}
%>

</head>
<body>



<div class="container">
    <h1 class="welcome">
        Welcome <%= user.getUserName() %>
    </h1>

    <h1>This is your Dashboard</h1>
    <h2>All User Details</h2>

    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Role</th>
            <th>Action</th>
        </tr>

        <%
            List<User> ulist = (List<User>) request.getAttribute("userlist");
            for (User usr : ulist) {
        %>
        <tr>
            <td><%= usr.getUserId() %></td>
            <td><%= usr.getUserName() %></td>
            <td><%= usr.getEmail() %></td>
            <td><%= usr.getRole() %></td>
            <td>
                <div class="action-btns">
                    <a class="edit-btn" href="Edit?uid=<%= usr.getUserId() %>">Edit</a>
                    <a class="delete-btn" href="Delete?uid=<%= usr.getUserId() %>">Delete</a>
                </div>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</div>

</body>
</html>
<!-- This is a CrmApp -->
