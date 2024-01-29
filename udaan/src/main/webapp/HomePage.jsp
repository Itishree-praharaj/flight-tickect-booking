<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Flight Booking</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap');

        body {
            background-image: url('airplane_background.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            font-family: 'Poppins', sans-serif;
            background-color: rgba(115, 194, 251, 0.5);
        }

        nav {
            background-color: #2975f0;
            padding: 10px;
            display: flex;
            justify-content: flex-end;
        }

        a {
            color: white;
            text-decoration: none;
            margin-right: 20px;
            font-family: 'Poppins', sans-serif;
        }

        p {
            color: white;
            font-family: 'Poppins', sans-serif;
        }

        form {
            border: 5px solid black;
            width: 25%;
            border-radius: 20px;
            padding: 20px;
            background-color: white;
        }

        input[type="text"],
        input[type="date"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"],
        input[type="reset"] {
            width: 100%;
            background-color: #2975f0;
            color: white;
            padding: 10px 15px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>

<body>
    <nav style="background-color: #2975f0; padding: 10px;">
<%
    HashMap<String, String> user = (HashMap<String, String>) session.getAttribute("user");
    if (user != null) {
    %>
    <p>Welcome <%=user.get("name")%></p>
    <a href="LogOut">| Logout |</a>
    <a href="AdminPage.jsp">Admin Login |</a>
    <%
    } else {
    %>
    <a style="color: white; text-decoration: none; margin-right: 20px;" href="UserPage.jsp">User Login</a>
    <a style="color: white; text-decoration: none;" href="AdminPage.jsp">Admin Login</a>
    <%
    }
    %>

    </nav>

    <br>
    <br>
    <div align="center">
        <form action=FlightList method=post>
            <label for=from>From :-</label> <input type=text name=from id=from /><br>
            <br> <label for=to>To :-</label> <input type=text name=to id=to /><br>
            <br> <label for=departure>Departure :-</label> <input type=date
                name=departure id=departure /><br> <br> <label
                for=travellers>Travelers :-</label> <input type=number
                name=travellers id=travellers /><br> <br> <input
                type=submit value=Search /> <input type=reset />
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
