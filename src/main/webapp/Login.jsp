<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<%@  include file="Navbar.jsp"%>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}

.login-container {
	width: 350px;
	margin: 120px auto;
	background-color: #ffffff;
	padding: 25px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	color: #333;
	margin-bottom: 20px;
}

label {
	font-weight: bold;
	display: block;
	margin-top: 12px;
}

input[type="text"] {
	width: 95%;
	padding: 8px;
	margin-top: 6px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

input[type="submit"] {
	width: 100%;
	margin-top: 18px;
	padding: 10px;
	background-color: #28a745;
	border: none;
	color: white;
	font-size: 16px;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #218838;
}

.link {
	text-align: center;
	margin-top: 15px;
}

.link a {
	text-decoration: none;
	color: #007bff;
	font-size: 14px;
}

.link a:hover {
	text-decoration: underline;
}
</style>

</head>
<body>
	<%
	String errormessage = (String) request.getAttribute("error");
	if (errormessage != null) {
	%>

	<h3 style="color:red"><%=errormessage%></h3>
	<%
	}
	%>

	<div class="login-container">
		<h1>User Login</h1>

		<form action="Login" method="post">

			<label>Email:</label> <input type="text" name="email" required>

			<label>Password:</label> <input type="text" name="password" required>

			<input type="submit" value="Login">

		</form>

		<div class="link">
			<p>
				New user? <a href="Register.jsp">Register here</a>
			</p>
		</div>
	</div>

</body>
</html>
