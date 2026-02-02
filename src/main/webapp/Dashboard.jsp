<%@page import="com.crm.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DashBoard</title>
</head>
<body>
<% User user= (User)session.getAttribute("us"); %>
<h1>Welcome <%= user.getUserName() %> </h1>
<h1>This is your Dashboard</h1>
</body>
</html>