<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Success</title>
<style>
    body {
        background-image: url('airplane_background.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-color: #73C2FB;
    }

    .success-message {
        text-align: center;
        color: #50FF20 ;
        font-size: 40px;
        font-weight: bold;
        margin-top: 100px;
        animation: fadeIn 3s ease-in-out infinite;
    }

    @keyframes fadeIn {
        0% {
            opacity: 0;
        }
        100% {
            opacity: 1;
        }
    }

    .link-text {
        text-align: center;
        color: #50FF20;
        font-size: 25px;
        font-weight: bold;
        margin-top: 20px;
    }

    .link-text a {
        color: #f39c12;
        text-decoration: none;
        padding: 5px 10px;
        border: 1px solid #f39c12;
        border-radius: 5px;
        transition: all 0.3s;
    }

    .link-text a:hover {
        background-color: #f39c12;
        color: #ffffff;
    }

    .udaan-logo {
        width: 240px;
        height: 170px;
        margin-bottom: 20px;
        margin-left: 850px;
        margin-top: -2px;
    }
</style>
</head>
<body>
    <div class="udaan-logo">
        <img src="udaan1.png" alt="Udaan1 Logo" style="width: 240px; height: 170px; margin-bottom: 20px;">
    </div>
    <div class="success-message">Congratulations! You have successfully registered.</div>
    <div class="link-text">Go to HomePage: <a href=Flyaway.jsp class="link-warning link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Click here</a></div>
    <div class="link-text">Search Flight: <a href=UserPage.jsp class="link-warning link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Click here</a></div>
</body>
</html>
