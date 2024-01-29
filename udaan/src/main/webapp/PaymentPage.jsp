<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Available Flights</title>
<style>
    body {
        background-image: url('airplane_background.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-color: #73C2FB;
        font-family: Arial, sans-serif;
    }

    .container {
        max-width: 800px;
        margin: 0 auto;
        text-align: center;
    }

    .udaan-logo {
       width: 240px;
        height: 170px;
        margin-bottom: 20px;
        margin-left: 250px;
        margin-top: -2px;
    }

    h1 {
        color: #08fa57;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 30px;
    }

    th, td {
        border: 1px solid black;
        padding: 12px;
        text-align: center;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    a {
        display: inline-block;
        text-align: center;
        text-decoration: none;
        color: white;
        background-color: #4CAF50;
        border: 1px solid #4CAF50;
        border-radius: 5px;
        width: 150px;
        padding: 10px;
        margin: 30px auto 50px;
    }

    a:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="udaan-logo">
            <img src="udaan1.png" alt="Udaan1 Logo" style="width: 240px; height: 170px; margin-bottom: 20px;">
        </div>
        <%
        @SuppressWarnings("unchecked")
        List<String[]> flights = (List<String[]>) session.getAttribute("flights");
        if (flights != null) {
        %>
        <h1>Available Flights</h1>
        <table>
            <tr>
                <th>Flight No</th>
                <th>Name</th>
                <th>Time</th>
                <th>Price</th>
                <th>Person</th>
                <th>Total Price</th>
            </tr>
            <%
            for (String[] flight : flights) {
            %>
            <tr>
                <td><%=flight[0]%></td>
                <td><%=flight[1]%></td>
                <td><%=flight[2]%></td>
                <td><%=flight[3]%></td>
                <td><%=flight[5]%></td>
                <td><%=flight[6]%></td>
            </tr>
            <%
            }
            %>
        </table>
        <a href="DebitCard.html">Click here to Payment</a>
        <%
        } else {
        %>
        <h1>There are no available flights</h1>
        <%
        }
        %>
    </div>
</body>
</html>
