<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Flights</title>
<style>
body {
	background-image: url('airplane_background.jpg');
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-color: #73C2FB;
}

h1, h2 {
	text-align: center;
}

.form-container {
	border: 2px solid black;
	width: 25%;
	border-radius: 20px;
	padding: 20px;
	margin: auto;
	text-align: center;
	background-color: rgba(255, 255, 255, 0.7);
}

form {
	display: flex;
	flex-direction: column;
	align-items: center;
}

table {
	width: 100%;
}

table tr td {
	padding: 10px;
}

i {
	display: block;
	text-align: center;
	font-style: italic;
	font-size: 18px;
	margin-top: 30px;
}

h3 {
	display: flex;
	justify-content: center;
	font-size: 20px;
	margin-top: 10px;
}

h3 a {
	margin: 0 10px;
	text-decoration: none;
	color: red;
}

p {
	text-align: center;
	color: green;
	font-size: 20px;
}

.udaan-logo {
	display: block;
	width: 100px;
	height: 100px;
	margin-bottom: 20px;
	margin-left: 850px;
	margin-top: -2px;
}

.form-submit {
	width: 100px;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background-color: #4CAF50;
	color: white;
	cursor: pointer;
	font-size: 16px;
}

.form-submit:hover {
	background-color: #45a049;
}

i {
	display: block;
	text-align: center;
	font-style: italic;
	font-size: 25px;
	margin-top: 30px;
	font-weight: bold;
	
}
</style>
</head>
<body>
	<div class="udaan-logo">
		<img src="udaan1.png" alt="Udaan1 Logo"
			style="width: 210px; height: 155px; margin-bottom: 20px;">
	</div>
	<h1>Search Flights</h1>
	<h2>User Login</h2>
	<div class="form-container">
		<form action="UserLogin" method="post">

			<table>
				<tr>
					<td><label for="email">Email</label><br></td>
					<td><input type="email" name="email" id="email" /></td>
				</tr>
				<tr>
					<td><label for="pass">Password</label><br></td>
					<td><input type="password" name="password" id="pass" /></td>
				</tr>
				<tr>
					<td><input class="form-submit" type="reset" /></td>


					<td><input class="form-submit" type="submit" value="Submit" /></td>
				</tr>
				<tr>
					<td colspan="2"><i>New User-Create account</i></td>
				</tr>
				<tr>
					<td colspan="2">
						<h3>
							<a href="UserRegistration.jsp">| Create Account |</a> 
							<a href="Flyaway.jsp">Home Page |</a>
						</h3>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<br>
	<br>
	
	<%
	String message = (String) session.getAttribute("message");
	if (message != null) {
	%>
	<p><%=message%></p>
	<%
	session.setAttribute("message", null);
	}
	%>
</body>
</html>
