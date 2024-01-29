<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<style>
	body {
		background-image: url('airplane_background.jpg');
		background-size: cover;
		background-position: center;
		background-repeat: no-repeat;
		background-attachment: fixed;
	}

	body, html {
		height: 100%;
		margin: 0;
	}

	.container {
		height: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;
	}

	.form-container {
		border: 3px solid black;
		border-radius: 20px;
		padding: 20px;
		text-align: center;
		background-color: rgba(255, 255, 255, 0.7);
		width: 25%;
	}

	.form-title {
		font-size: 30px;
		margin-bottom: 20px;
	}

	.form-input {
		padding: 10px;
		margin-bottom: 20px;
		border-radius: 5px;
		border: 1px solid #ccc;
	}

	.form-submit {
		width: 100px;
		padding: 10px;
		border: none;
		border-radius: 5px;
		background-color: #4CAF50;
		color: white;
		cursor: pointer;
	}

	.form-link {
		font-size: 25px;
		color: #FECC09;
		text-decoration: none;
	}

	.form-link:hover {
		color: darkred;
		text-decoration: underline;
	}
</style>
</head>
<body>
	<div class="container">
		<br>
		<img src="udaan1.png" alt="Udaan Logo" style="width: 380px; height:250px; margin-bottom:5px; margin-top:7px">
		<p style="font-size: 28px; color:#FECC09 ; font-weight: bold;">Welcome to our Admin page! Please go to the <a href="HomePage.jsp" style="color: #4CAF50; font-weight: bold; text-decoration: underline;">home</a> page.</p>
		

		<br>
		<br>
		<div class="form-container">
			<form action="AdminLogin" method="post">
				<div class="form-title">Admin Login</div>
				<label for="email">Email :-</label> <br>
				<input class="form-input" type="email" name="email" id="email" /> <br> <br>
				<label for="pass">Password :-</label> <br>
				<input class="form-input" type="password" name="password" id="pass" /> <br> <br>
				<input class="form-submit" type="submit" value="Submit" /> <input type="reset" />
			</form>
		</div>
		<a href="ForgotPassword.jsp" class="form-link">Forgot Password</a>
		<%
		String message = (String) session.getAttribute("message");
		if (message != null) {
		%>
		<p style="color: silver;"><%=message%></p>
		<%
		session.setAttribute("message", null);
		}
		%>
	</div>
</body>
</html>
