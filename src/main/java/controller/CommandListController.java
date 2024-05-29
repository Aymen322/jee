package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.iit.test.DBUtil;

import DAO.CommandDAO;
import DAO.PizzaDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Command;
import model.Pizza;

public class CommandListController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private Connection connection;
    private CommandDAO commandDAO;
    private PizzaDAO pizzaDAO;

    public void init() throws ServletException {
        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Initialize CommandDAO and PizzaDAO, and retrieve database connection
            connection = DBUtil.getConnection();
            if (connection != null) {
                System.out.println("Database connection established successfully.");
            } else {
                System.out.println("Failed to establish database connection.");
            }
            commandDAO = new CommandDAO(connection);
            pizzaDAO = new PizzaDAO(connection);
        } catch (ClassNotFoundException | SQLException e) {
            throw new ServletException("Error initializing servlet", e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Retrieve list of pending commands from DAO
            List<Command> commands = commandDAO.getPendingCommands();
            // Retrieve list of pizzas from DAO
            List<Pizza> pizzas = pizzaDAO.getAllPizzas();
            // Set commands and pizzas as request attributes
            request.setAttribute("commands", commands);
            request.setAttribute("pizzas", pizzas);
            // Forward request to commandList.jsp
            request.getRequestDispatcher("CommandList.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Error retrieving commands or pizzas", e);
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
