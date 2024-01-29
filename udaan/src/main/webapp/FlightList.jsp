<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight List</title>
<style>
    body {
        background-image: url('airplane_background.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-color: #73C2FB;
        color: black;
        font-family: Arial, sans-serif;
        text-align: center;
        opacity:0.8;
    }

    a {
        color: black;
        text-decoration: none;
        font-size: 35px;
        font-weight: bold;
    }

    h1 {
        font-size: 24px;
        font-weight: bold;
        margin-top: 20px;
    }

    table {
        width: 80%;
        margin: auto;
        margin-top: 20px;
        border-collapse: collapse;
    }

    th, td {
        border: 1px solid black;
        padding: 10px;
    }

    th {
        background-color: #f2f2f2;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    .udaan-logo {
	display: block;
	width: 100px;
	height: 100px;
	margin-bottom: 20px;
	margin-left: 850px;
	margin-top: -2px;
}
</style>
</head>
<body>
    <div class="udaan-logo">
        <img src="udaan1.png" alt="Udaan1 Logo" style="width: 210px; height: 155px; margin-bottom: 20px;">
    </div>
    <br>
    <a href="HomePage.jsp">Flight Booking</a>
    <br>
    <br>
    <%
    @SuppressWarnings("unchecked")
    List<String[]> flights = (List<String[]>) session.getAttribute("flights");
    if (flights != null) {
    %>
    <h1>Available Flights</h1>
    <table>
        <tr>
            <th>Flight_No</th>
            <th>Name</th>
            <th>Time</th>
            <th>Price</th>
            <th>Avl_Seats</th>
            <th>Book now</th>
        </tr>
        <%
        for (String[] flight : flights) {
        %>
        <tr>
            <td><%=flight[0]%></td>
            <td><%=flight[1]%></td>
            <td><%=flight[2]%></td>
            <td><%=flight[3]%></td>
            <td><%=flight[4]%></td>
            <td><a href="PaymentPage.jsp">Click Here</a></td>
        </tr>
        <% } %>
    </table>
    <%
    } else {
    %>
    <h1>There are no available flights</h1>
    <%
    }
    %>
</body>
</html>
