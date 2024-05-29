package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import com.iit.test.DBUtil;

import DAO.ChefDAO;
import DAO.ClientDAO;
import DAO.CommandDAO;
import DAO.PizzaDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Client;
import model.Command;
import model.Pizza;

public class CheckoutController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private Connection connection;
    private PizzaDAO pizzaDAO;
    private ChefDAO chefDAO;
    private ClientDAO clientDAO;
    private CommandDAO commandDAO;

    public void init() throws ServletException {
        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Initialize DAOs and retrieve database connection
            connection = DBUtil.getConnection();
            if (connection != null) {
                System.out.println("Database connection established successfully.");
            } else {
                System.out.println("Failed to establish database connection.");
            }
            pizzaDAO = new PizzaDAO(connection);
            clientDAO = new ClientDAO(connection);
            commandDAO = new CommandDAO(connection);
            chefDAO = new ChefDAO(connection);

        } catch (ClassNotFoundException | SQLException e) {
            throw new ServletException("Error initializing servlet", e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve selected pizza ID from request parameters
        String pizzaIdParam = request.getParameter("pizzaId");
        if (pizzaIdParam != null && !pizzaIdParam.isEmpty()) {
            try {
                int pizzaId = Integer.parseInt(pizzaIdParam);
                System.out.println(pizzaId);

                // Retrieve the Pizza object from the database
                Pizza pizza = pizzaDAO.getPizzaById(pizzaId);

                // Set pizza as a request attribute
                request.setAttribute("pizza", pizza);

              
                request.getRequestDispatcher("Checkout.jsp").forward(request, response);
            } catch (NumberFormatException | SQLException e) {
                throw new ServletException("Error retrieving pizza details", e);
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid or missing pizza ID");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve client information from request parameters
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String address = request.getParameter("address");

        // Retrieve the quantity from request parameters
        String quantityParam = request.getParameter("quantity");
        int quantity = 0;
        if (quantityParam != null && !quantityParam.isEmpty()) {
            try {
                quantity = Integer.parseInt(quantityParam);
            } catch (NumberFormatException e) {
                throw new ServletException("Invalid quantity format", e);
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Quantity is required");
            return;
        }

        // Retrieve pizza ID from request parameters
        String pizzaIdParam = request.getParameter("pizzaId");
        if (pizzaIdParam == null || pizzaIdParam.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing pizza ID");
            return;
        }

        int pizzaId;
        try {
            pizzaId = Integer.parseInt(pizzaIdParam);
        } catch (NumberFormatException e) {
            throw new ServletException("Invalid pizza ID format", e);
        }

        // Set the status as "pending"
        String status = "pending";

        try {
            // Create a new Client object
            Client client = new Client(firstName, lastName, email, address);
            // Save client to the database using DAO class
            clientDAO.insertClient(client);

            // Retrieve the Pizza object from the database
            Pizza pizza = pizzaDAO.getPizzaById(pizzaId);

            // Create a new Command object with status as "pending", set client ID, and quantity
            Command command = new Command(pizza, status, quantity);

            // Save command to the database using DAO class
            commandDAO.insertCommand(command);

            // Set a success message attribute (optional)
            request.setAttribute("orderConfirmationMessage", "Your order has been placed successfully!");

            // Forward to Checkout.jsp for displaying confirmation message or handling further actions
            request.getRequestDispatcher("Checkout.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Error processing checkout", e);
        }
    }

}
