package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import com.iit.test.DBUtil;

import DAO.CommandDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updateCommandStatusToDelivred")
public class UpdateCommandStatusToDelivredController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private Connection connection;
    private CommandDAO commandDAO;

    public void init() throws ServletException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DBUtil.getConnection();
            if (connection != null) {
                System.out.println("Database connection established successfully.");
            } else {
                System.out.println("Failed to establish database connection.");
            }
            commandDAO = new CommandDAO(connection);
        } catch (ClassNotFoundException | SQLException e) {
            throw new ServletException("Error initializing servlet", e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int commandId = Integer.parseInt(request.getParameter("id"));
        String status = request.getParameter("status");

        try {
            commandDAO.updateCommandStatus(commandId, status);
            response.sendRedirect("LivreurController"); 
        } catch (SQLException e) {
            throw new ServletException("Error updating command status", e);
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
