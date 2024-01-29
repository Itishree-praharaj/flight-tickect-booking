
package com.jsp.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.jsp.database.ConnectionUtil;

@WebServlet("/FlightList")
public class ListOfFlights extends HttpServlet {
private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String from=request.getParameter("from");
		String to=request.getParameter("to");
		String departure=request.getParameter("departure");
		String travellers=request.getParameter("travellers");
		try {
			ConnectionUtil dao = new ConnectionUtil();
			List<String[]> flights=dao.getAvailableFlights(from, to, departure,travellers);
			HttpSession session=request.getSession();
			session.setAttribute("flights", flights);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("FlightList.jsp");
	}
}
