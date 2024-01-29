package com.jsp.database;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.jsp.entity.Admin;
import com.jsp.entity.Flight;
import com.jsp.entity.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class ConnectionUtil {

	private EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("booking");
	private EntityManager entityManager = entityManagerFactory.createEntityManager();

	public List<String[]> getAvailableFlights(String f, String t, String d, String trvl) throws Exception {
		try {
			Query query = entityManager.createQuery(
					"SELECT f FROM Flight f WHERE f.fromLocation = :from AND f.toLocation = :to AND f.dateOfDeparture = :date");
			query.setParameter("from", f);
			query.setParameter("to", t);
			query.setParameter("date", d);
			List<Flight> flights = query.getResultList();
			List<String[]> flightData = new ArrayList<>();
			for (Flight flight : flights) {
				String[] flightDetails = new String[7];
				flightDetails[0] = flight.getFlightNo();
				flightDetails[1] = flight.getName();
				flightDetails[2] = flight.getDepartureTime();
				flightDetails[3] = flight.getPrice();
				flightDetails[4] = flight.getAvailableSeats();
				flightDetails[5] = trvl;
				flightDetails[6] = String.valueOf(Double.parseDouble(trvl) * Double.parseDouble(flight.getPrice()));
				flightData.add(flightDetails);
			}
			return flightData;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception("Error while retrieving available flights");
		}
	}

	public HashMap<String, String> checkUser(String email, String password) {
		Query query = entityManager
				.createQuery("SELECT u FROM User u WHERE u.email = :email AND u.password = :password");
		query.setParameter("email", email);
		query.setParameter("password", password);
		List<User> users = query.getResultList();
		if (!users.isEmpty()) {
			User user = users.get(0);
			HashMap<String, String> userData = new HashMap<>();
			userData.put("name", user.getName());
			userData.put("email", user.getEmail());
			userData.put("phno", user.getPhno());
			userData.put("adno", user.getAdno());
			return userData;
		}
		return null;
	}

	public boolean insertUser(HashMap<String, String> user) {
		try {
			entityManager.getTransaction().begin();
			User newUser = new User();
			newUser.setEmail(user.get("email"));
			newUser.setPassword(user.get("password"));
			newUser.setName(user.get("name"));
			newUser.setPhno(user.get("phno"));
			newUser.setAdno(user.get("adno"));
			entityManager.persist(newUser);
			entityManager.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			entityManager.getTransaction().rollback();
			return false;
		}
	}

	public boolean checkAdmin(String email, String password) {
		Query query = entityManager
				.createQuery("SELECT a FROM Admin a WHERE a.email = :email AND a.password = :password");
		query.setParameter("email", email);
		query.setParameter("password", password);
		List<Admin> admins = query.getResultList();
		return !admins.isEmpty();
	}

	public boolean changeAdminPassword(String email, String password) {
		try {
			entityManager.getTransaction().begin();
			Query query = entityManager.createQuery("UPDATE Admin a SET a.password = :password WHERE a.email = :email");
			query.setParameter("password", password);
			query.setParameter("email", email);
			int rowsUpdated = query.executeUpdate();
			entityManager.getTransaction().commit();
			return rowsUpdated > 0;
		} catch (Exception e) {
			e.printStackTrace();
			entityManager.getTransaction().rollback();
			return false;
		}
	}

	

	public boolean insertFlight(Flight flight) {
	    EntityTransaction transaction = null;
	    try {
	        transaction = entityManager.getTransaction();
	        transaction.begin();

	        entityManager.persist(flight);

	        transaction.commit();
	        return true;

	    } catch (Exception e) {
	        if (transaction != null) {
	            transaction.rollback();
	        }
	        e.printStackTrace();
	        return false;
	    }
	}

	}