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

@WebServlet("/login")
public class LoginController extends HttpServlet {
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
        // Forward to the login JSP page
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = request.getParameter("login");
        String pass = request.getParameter("pass");

        try {
            User user = userDAO.getUserByLogin(login);
            if (user != null && user.getPass().equals(pass)) {
                String role = user.getRole();
                switch (role) {
                    case "chef":
                        response.sendRedirect("CommandListController");
                        break;
                    case "livreur":
                        response.sendRedirect("LivreurController");
                        break;
                    case "client":
                        response.sendRedirect("PizzaListController");
                        break;
                    default:
                        response.sendRedirect("login.jsp?error=Invalid role");
                }
            } else {
                response.sendRedirect("login.jsp?error=Invalid login or password");
            }
        } catch (SQLException e) {
            throw new ServletException("Error during login", e);
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
