<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction Processing</title>
<style>
    body {
        background-image: url('airplane_background.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-color: #73C2FB;
    }

    .heading {
        text-align: center;
        color: #50FF20;
        font-size: 40px;
        font-weight: bold;
        margin-top: 100px;
    }

    .text {
        text-align: center;
        color: #14FFD3;
        font-size: 25px;
        font-weight: bold;
    }

    .input-section {
        text-align: center;
        color: black;
        font-size: 25px;
        font-weight: bold;
    }

    .input-section a {
        color: #3498db;
        text-decoration: none;
    }

    .input-section input[type="text"] {
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
        width: 200px;
        margin-bottom: 20px;
    }

    .submit-button {
        display: inline-block;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
        background-color: #50FF20;
        border: none;
        color: white;
    }

    .submit-button:hover {
        background-color: #45a049;
    }

    .udaan-logo {
        display: block;
        width: 150px;
        height: 150px;
        margin: 0 auto;
        margin-top: 20px;
    }
</style>
</head>
<body>
    <div class="udaan-logo">
        <img src="udaan1.png" alt="Udaan1 Logo" style="width: 240px; height: 200px; margin-bottom: 20px;">
    </div>
    <div class="heading">Transaction Processing....</div>
    <div class="text">Enter your six digit code :</div>
    <br>
    <div class="input-section">
        <label><a href="BookFlight.jsp" class="submit-button">Submit -</a></label>
        <input type="text" name="code" />
        <br>
    </div>
</body>
</html>
