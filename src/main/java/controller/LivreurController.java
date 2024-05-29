package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import DAO.CommandDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Command;
import com.iit.test.DBUtil;

public class LivreurController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private Connection connection;
    private CommandDAO commandDAO;

    public void init() throws ServletException {
        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Initialize DAO and retrieve database connection
            connection = DBUtil.getConnection();
            commandDAO = new CommandDAO(connection);
        } catch (ClassNotFoundException | SQLException e) {
            throw new ServletException("Error initializing servlet", e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Retrieve the list of ready commands from the database
            List<Command> readyCommands = commandDAO.getReadyCommands();
            // Set the list as a request attribute
            request.setAttribute("readyCommands", readyCommands);
            // Forward to the JSP page
            request.getRequestDispatcher("livreurCommands.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Error retrieving ready commands", e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve command ID and new status from the request parameters
        String commandIdParam = request.getParameter("id");
        String status = request.getParameter("status");

        if (commandIdParam != null && !commandIdParam.isEmpty() && status != null && !status.isEmpty()) {
            try {
                int commandId = Integer.parseInt(commandIdParam);
                // Update the command status in the database
                commandDAO.updateCommandStatus(commandId, status);
                // Redirect to the same page to refresh the list
                response.sendRedirect("livreurCommands.jsp");
            } catch (NumberFormatException | SQLException e) {
                throw new ServletException("Error updating command status", e);
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid command ID or status");
        }
    }

    public void destroy() {
        // Close the database connection when the servlet is destroyed
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
