package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.iit.test.DBUtil;

import DAO.ChefDAO;
import DAO.PizzaDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Chef;
import model.Pizza;


public class PizzaListController  extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private Connection connection;
    private PizzaDAO pizzaDAO;
    private ChefDAO chefDAO;

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
            chefDAO = new ChefDAO(connection);
        } catch (ClassNotFoundException | SQLException e) {
            throw new ServletException("Error initializing servlet", e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Retrieve list of pizzas from DAO
            List<Pizza> pizzas = pizzaDAO.getAllPizzas();
            // Retrieve list of chefs from DAO
            List<Chef> chefs = chefDAO.getAllChefs();
            // Set pizzas and chefs as request attributes
            request.setAttribute("pizzas", pizzas);
            request.setAttribute("chefs", chefs);
            // Forward request to index.jsp
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Error retrieving pizzas or chefs", e);
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
