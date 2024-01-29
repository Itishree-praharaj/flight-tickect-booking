package com.jsp.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.jsp.database.ConnectionUtil;
import com.jsp.entity.Flight;

@WebServlet("/InsertFlight")
public class FlightInsert extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String flightNo = request.getParameter("Flight_No");
        String name = request.getParameter("name");
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        String departure = request.getParameter("departure");
        String time = request.getParameter("time");
        String price = request.getParameter("price");
        String availableSeats = request.getParameter("Avl_Seats");

        Flight flight = new Flight();
        flight.setFlightNo(flightNo);
        flight.setName(name);
        flight.setFromLocation(from);
        flight.setToLocation(to);
        flight.setDateOfDeparture(departure);
        flight.setDepartureTime(time);
        flight.setPrice(price);
        flight.setAvailableSeats(availableSeats);

        try {
            ConnectionUtil dao = new ConnectionUtil();
            HttpSession session = request.getSession();
            if (dao.insertFlight(flight)) {
                session.setAttribute("message", "Flight Added Successfully");
            } else {
                session.setAttribute("message", "Invalid Details");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("AdminHome.jsp");
    }
}


