<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Admin Home</title>
    <style>
        body {
            background-image: url('airplane_background.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            opacity: 0.7;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            padding: 20px;
            width: 30%;
            margin: 100px auto;
            text-align: center;
        }

        .form-title {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .form-input {
            display: block;
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .form-submit {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-submit:hover {
            background-color: #45a049;
        }

        .form-link {
            text-align: center;
            margin-top: 20px;
        }

        .form-link a {
            color: black;
            text-decoration: none;
            font-size: 16px;
        }
    </style>
</head>

<body>
    <div class="form-container">
        <img src="udaan1.png" alt="Udaan Logo" style="width:230px; height: 200px; margin-bottom: 20px;">
        <div class="form-title">Insert New Flight Details</div>
        <form action="InsertFlight" method="post">
            <input class="form-input" type="text" name="Flight_No" placeholder="Flight No" required>
            <input class="form-input" type="text" name="name" placeholder="Name" required>
            <input class="form-input" type="text" name="from" placeholder="From" required>
            <input class="form-input" type="text" name="to" placeholder="To" required>
            <input class="form-input" type="date" name="departure" required>
            <input class="form-input" type="time" name="time" required>
            <input class="form-input" type="text" name="price" placeholder="Price" required>
            <input class="form-input" type="text" name="Avl_Seats" placeholder="Available Seats" required>
            <input class="form-submit" type="submit" value="Submit">
        </form>
        <div class="form-link">
            <a href="Flyaway.jsp">Home Page</a>
        </div>
    </div>
</body>

</html>
