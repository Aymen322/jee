package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.User;

public class UserDAO {
    private final Connection connection;

    public UserDAO(Connection connection) {
        this.connection = connection;
    }

    // Insert a new user into the database
    public void insertUser(User user) throws SQLException {
        String sql = "INSERT INTO User (login, pass, role) VALUES (?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, user.getLogin());
            statement.setString(2, user.getPass());
            statement.setString(3, user.getRole());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new SQLException("Error inserting user", e);
        }
    }

    // Retrieve a user by login
    public User getUserByLogin(String login) throws SQLException {
        String sql = "SELECT login, pass, role FROM User WHERE login = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, login);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    return new User(
                        resultSet.getString("login"),
                        resultSet.getString("pass"),
                        resultSet.getString("role")
                    );
                } else {
                    return null;
                }
            }
        } catch (SQLException e) {
            throw new SQLException("Error retrieving user by login", e);
        }
    }

    // Retrieve all users
    public List<User> getAllUsers() throws SQLException {
        List<User> users = new ArrayList<>();
        String sql = "SELECT login, pass, role FROM User";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                User user = new User(
                    resultSet.getString("login"),
                    resultSet.getString("pass"),
                    resultSet.getString("role")
                );
                users.add(user);
            }
        } catch (SQLException e) {
            throw new SQLException("Error retrieving all users", e);
        }
        return users;
    }

    // Update a user in the database
    public void updateUser(User user) throws SQLException {
        String sql = "UPDATE User SET pass = ?, role = ? WHERE login = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, user.getPass());
            statement.setString(2, user.getRole());
            statement.setString(3, user.getLogin());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new SQLException("Error updating user", e);
        }
    }

    // Delete a user by login
    public void deleteUser(String login) throws SQLException {
        String sql = "DELETE FROM User WHERE login = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, login);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new SQLException("Error deleting user", e);
        }
    }
}
