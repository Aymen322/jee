package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Chef;

public class ChefDAO {
    private final Connection connection;

    public ChefDAO(Connection connection) {
        this.connection = connection;
    }

    // Insert a new chef into the database
    public void insertChef(Chef chef) throws SQLException {
        String sql = "INSERT INTO chef (name, specialty, image) VALUES (?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, chef.getName());
            statement.setString(2, chef.getSpecialty());
            statement.setString(3, chef.getImage());
            statement.executeUpdate();
        }
    }

    // Retrieve all chefs from the database
    public List<Chef> getAllChefs() throws SQLException {
        List<Chef> chefs = new ArrayList<>();
        String sql = "SELECT * FROM chef";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                Chef chef = new Chef();
                chef.setId(resultSet.getInt("id"));
                chef.setName(resultSet.getString("name"));
                chef.setSpecialty(resultSet.getString("specialty"));
                chef.setImage(resultSet.getString("image"));
                chefs.add(chef);
            }
        }
        return chefs;
    }
}
