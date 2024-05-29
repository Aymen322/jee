package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import com.iit.test.DBUtil;

import DAO.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

@WebServlet("/signup")
public class SignUpController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private Connection connection;
    private UserDAO userDAO;

    public void init() throws ServletException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DBUtil.getConnection();
            if (connection != null) {
                System.out.println("Database connection established successfully.");
            } else {
                System.out.println("Failed to establish database connection.");
            }
            userDAO = new UserDAO(connection);
        } catch (ClassNotFoundException | SQLException e) {
            throw new ServletException("Error initializing servlet", e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward to the sign-up JSP page
        request.getRequestDispatcher("signup.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = request.getParameter("login");
        String pass = request.getParameter("pass");
        String role = request.getParameter("role"); // Assuming role is selected in the form

        try {
            // Check if the user already exists
            User existingUser = userDAO.getUserByLogin(login);
            if (existingUser != null) {
                response.sendRedirect("signup.jsp?error=User already exists");
                return;
            }

            // Create a new User object
            User newUser = new User(login, pass, role);

            // Insert the new user into the database
            userDAO.insertUser(newUser);

            // Redirect to login page after successful registration
            response.sendRedirect("login.jsp?signup=success");
        } catch (SQLException e) {
            throw new ServletException("Error during sign-up", e);
        }
    }

    public void destroy() {
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
