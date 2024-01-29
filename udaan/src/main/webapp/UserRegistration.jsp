<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<style>
    body {
        background-image: url('airplane_background.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-color: #73C2FB;
    }

    h2 {
        text-align: center;
        margin-top: 100px;
        color: #08fa57;
        animation: slideIn 9s infinite linear, colorChange 3s infinite linear;
    }

    @keyframes slideIn {
        0% {
            transform: translateX(100%);
        }
        50% {
            transform: translateX(0);
        }
        100% {
            transform: translateX(-100%);
        }
    }

    @keyframes colorChange {
        0% {
            color: blue;
        }
        
        100% {
            color: red;
        }
    }

    .form-container {
        border: 3px solid black;
        width: 430px;
        border-radius: 20px;
        padding: 22px;
        margin: 100px auto;
        text-align: center;
        background-color: rgba(255, 255, 255, 0.7);
    }

    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    form label {
        display: block;
        margin-bottom: 8px;
    }

    form input[type="text"],
    form input[type="email"],
    form input[type="password"] {
        padding: 6px;
        border-radius: 5px;
        border: 1px solid #ccc;
        margin-bottom: 10px;
        width: 50%;
    }

    form a {
        display: block;
        text-decoration: none;
        color: red;
        font-size: 18px;
        margin-bottom: 20px;
    }

    form input[type="submit"],
    form input[type="reset"] {
        width: 80px;
        padding: 8px;
        border: none;
        border-radius: 5px;
        background-color: #4CAF50;
        color: white;
        cursor: pointer;
        font-size: 14px;
        margin-right: 10px;
    }

    form input[type="submit"]:hover,
    form input[type="reset"]:hover {
        background-color: #45a049;
    }

    .udaan-logo {
        display: block;
        width: 80px;
        height: 80px;
        margin: 0 auto;
        margin-top: 20px;
    }
</style>
</head>
<body>
    <div class="udaan-logo">
        <img src="udaan1.png" alt="Udaan1 Logo" style="width: 240px; height: 170px; margin-bottom: 20px;">
    </div>
    <h2>Welcome to Udaan! Please add your details to Udaan</h2>
    <div class="form-container">
        <form action="UserRegistration" method="post">
            <label for="email">Email:</label> <input type="email" name="email" id="email" /><br>
            <label for="pass">Password:</label> <input type="password" name="password" id="pass" /><br>
            <label for="name">Name:</label> <input type="text" name="name" id="name" /><br>
            <label for="phno">Phone No.:</label> <input type="text" name="phno" id="phno" /><br>
            <label for="adno">Aadhaar No.:</label> <input type="text" name="adno" id="adno" /><br>
            <a href="Flyaway.jsp">| Home Page |</a>
            <input type="submit" value="Submit" />
            <input type="reset" />
        </form>
    </div>
</body>
</html>
