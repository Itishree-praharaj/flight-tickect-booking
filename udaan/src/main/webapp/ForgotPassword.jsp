<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Booking</title>
<style>
    body {
        background-image: url('airplane_background.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-color: #73C2FB;
    }

    a {
        color: black;
        text-decoration: none;
        font-size: 35px;
        font-weight: bold;
    }

    .form-container {
        border: 3px solid black;
        width: 25%;
        border-radius: 20px;
        padding: 20px;
        margin: auto;
        background-color: rgba(255, 255, 255, 0.7);
    }

    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    form label {
        display: block;
        margin-bottom: 10px;
    }

    form input[type="email"],
    form input[type="password"] {
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
        margin-bottom: 15px;
        width: 80%;
    }

    form input[type="submit"],
    form input[type="reset"] {
        width: 100px;
        padding: 10px;
        border: none;
        border-radius: 5px;
        background-color: #4CAF50;
        color: white;
        cursor: pointer;
        font-size: 16px;
        margin-right: 10px;
    }

    form input[type="submit"]:hover,
    form input[type="reset"]:hover {
        background-color: #45a049;
    }

    .udaan-logo {
        display: block;
        width: 150px;
        height: 150px;
        margin: 0 auto;
        margin-top: 50px;
    }
</style>
</head>
<body>
    <div class="udaan-logo">
        <img src="udaan1.png" alt="Udaan1 Logo" style="width: 240px; height: 200px; margin-bottom: 20px; margin-top:-20px">
    </div>
    <div style="text-align: center;">
        <a href="HomePage.jsp">Flight Booking</a>
    </div>
    <div class="form-container">
        <form action="ForgotP" method="post">
            <label for="email">Email :-</label>
            <input type="email" name="email" id="email" /><br><br>
            <label for="pass">New Password :-</label>
            <input type="password" name="password" id="pass" /><br><br>
            <input type="submit" value="submit" />
            <input type="reset" />
        </form>
    </div>
</body>
</html>
