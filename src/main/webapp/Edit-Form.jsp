<%@page import="com.crm.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit page</title>
<%@  include file="Navbar.jsp" %>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}

h1 {
	text-align: center;
	color: #333;
}

form {
	width: 350px;
	margin: 50px auto;
	padding: 20px;
	background-color: #ffffff;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	font-weight: bold;
	display: block;
	margin-top: 10px;
}

input[type="text"] {
	width: 95%;
	padding: 8px;
	margin-top: 5px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

input[type="submit"] {
	width: 100%;
	margin-top: 15px;
	padding: 10px;
	background-color: #007bff;
	border: none;
	color: white;
	font-size: 16px;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}
</style>

</head>
<body>

	<%
	User existingUser = (User) request.getAttribute("euser");
	%>

	<h1>Edit Form</h1>

	<form action="Upadte" method="post">

		 <input type="hidden" name="uid" value=<%=existingUser.getUserId()%>><br>
		
		 <br> <label>Enter User Name:</label> <input type="text" name="uname" value=<%=existingUser.getUserName()%>><br>
			
		 <br> <label>Enter Email:</label> <input type="text" name="email" value=<%=existingUser.getEmail()%>><br>
			 
		 <br> <label>Enter Password:</label> <input type="text" name="password" value=<%=existingUser.getPassword()%>><br> 
		 
		 <br> <label>Enter Role:</label> <input type="text" name="role" value=<%=existingUser.getRole()%>><br>
		 
		 <br> <input type="submit" value="Upadte">

	</form>
</body>
</html>

<!-- This is a CrmApp -->