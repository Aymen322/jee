package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import com.iit.test.DBUtil;

import DAO.PizzaDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Pizza;

public class PizzaDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Connection connection;
	private PizzaDAO pizzaDAO;

	public void init() throws ServletException {
		try {
			// Load MySQL JDBC driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			// Initialize PizzaDAO and ChefDAO, and retrieve database connection
			connection = DBUtil.getConnection();
			if (connection != null) {
				System.out.println("Database connection established successfully.");
			} else {
				System.out.println("Failed to establish database connection.");
			}
			pizzaDAO = new PizzaDAO(connection);
		} catch (ClassNotFoundException | SQLException e) {
			throw new ServletException("Error initializing servlet", e);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// Retrieve pizza ID from request parameter
			int pizzaId = Integer.parseInt(request.getParameter("pizzaId"));

			// Retrieve pizza by ID from database using DAO
			Pizza pizza = pizzaDAO.getPizzaById(pizzaId);

			// Set pizza as a request attribute
			request.setAttribute("pizza", pizza);

			// Forward request to pizzadetail.jsp
			request.getRequestDispatcher("pizzadetail.jsp").forward(request, response);
		} catch (NumberFormatException e) {
			// Handle if pizzaId parameter is not provided or invalid
			throw new ServletException("Invalid pizza ID", e);
		} catch (SQLException e) {
			// Handle database errors
			throw new ServletException("Error retrieving pizza from database", e);
		}
	}

	public void destroy() {
		// Close database connection
		try {
			if (connection != null && !connection.isClosed()) {
				connection.close();
				System.out.println("Database connection closed.");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
