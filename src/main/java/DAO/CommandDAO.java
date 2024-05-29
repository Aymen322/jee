package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Command;
import model.Pizza;

public class CommandDAO {
    private final Connection connection;

    public CommandDAO(Connection connection) {
        this.connection = connection;
    }

    // Insert a new command into the database
    public void insertCommand(Command command) throws SQLException {
        String sql = "INSERT INTO command (pizza_id, status, quantity) VALUES (?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, command.getPizza().getId());
            statement.setString(2, command.getStatus());
            statement.setInt(3, command.getQuantity());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new SQLException("Error inserting command", e);
        }
    }

    // Retrieve all commands with status "Pending" from the database
    public List<Command> getPendingCommands() throws SQLException {
        return getCommandsByStatus("Pending");
    }

    // Retrieve all commands with status "Ready" from the database
    public List<Command> getReadyCommands() throws SQLException {
        return getCommandsByStatus("Ready");
    }

    // Retrieve commands by status
    private List<Command> getCommandsByStatus(String status) throws SQLException {
        List<Command> commands = new ArrayList<>();
        String sql = "SELECT c.id AS command_id, c.status, c.quantity, p.id AS pizza_id, p.name, p.description, p.price, p.image " +
                     "FROM command c " +
                     "JOIN pizza p ON c.pizza_id = p.id " +
                     "WHERE c.status = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, status);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    Pizza pizza = new Pizza();
                    pizza.setId(resultSet.getInt("pizza_id"));
                    pizza.setName(resultSet.getString("name"));
                    pizza.setDescription(resultSet.getString("description"));
                    pizza.setPrice(resultSet.getDouble("price"));
                    pizza.setImage(resultSet.getString("image"));

                    Command command = new Command();
                    command.setId(resultSet.getInt("command_id"));
                    command.setPizza(pizza);
                    command.setStatus(resultSet.getString("status"));
                    command.setQuantity(resultSet.getInt("quantity"));

                    commands.add(command);
                }
            }
        }
        return commands;
    }

    // Update the status of a command in the database
    public void updateCommandStatus(int commandId, String status) throws SQLException {
        String sql = "UPDATE command SET status = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, status);
            statement.setInt(2, commandId);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new SQLException("Error updating command status", e);
        }
    }
}
