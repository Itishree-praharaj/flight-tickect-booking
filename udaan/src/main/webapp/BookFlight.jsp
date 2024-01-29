<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
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

	.success-message {
		color: style="color: white; text-shadow: 4px 4px 4px #000000;";
		font-size: 20px;
		font-weight: bold;
	}

	.success-header {
		color: green;
		font-size: 40px;
		font-weight: bold;
	}

	.home-link {
		color: green;
		font-size: 25px;
		font-weight: bold;
	}

	.home-link a {
		color: green;
		text-decoration: none;
		font-weight: bold;
	}

	.logo {
		width: 100px;
		height: 100px;
		margin-bottom: 20px;
	}
</style>
</head>
<body>
	<div class="container">
		<img class="logo" src="udaan1.png" alt="Udaan Logo">
		<%
		@SuppressWarnings("unchecked")
		HashMap<String, String> user = (HashMap<String, String>) session.getAttribute("user");
		if (user == null) {
			response.sendRedirect("UserPage.jsp");
		}
		%>
		<p class="success-message" align="center">Transaction Completed Successfully....</p>
		<p class="success-header" align="center">Flight Booked Successfully <br>Thank you...</p>
		<p class="home-link" align="center">Go to home page: > <a href=Flyaway.jsp>click here</a></p>
	</div>
</body>
</html>
