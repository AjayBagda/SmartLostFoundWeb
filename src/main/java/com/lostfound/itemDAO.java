package com.lostfound;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

 class ItemDAO {

    // Save item and return generated item ID
    public int saveItem(Item item) {

        String sql = "INSERT INTO items " +
                "(user_id, item_type, item_name, category, description, color, brand, location, item_date) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(
                     sql,
                     java.sql.Statement.RETURN_GENERATED_KEYS)) {

            ps.setInt(1, item.getUserId());
            ps.setString(2, item.getItemType());
            ps.setString(3, item.getItemName());
            ps.setString(4, item.getCategory());
            ps.setString(5, item.getDescription());
            ps.setString(6, item.getColor());
            ps.setString(7, item.getBrand());
            ps.setString(8, item.getLocation());
            ps.setString(9, item.getItemDate());

            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();

            if (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return -1;
    }


    // Get all opposite-type items
    public List<Item> getItemsByType(String itemType) {

        List<Item> items = new ArrayList<>();

        String sql = "SELECT * FROM items " +
                "WHERE item_type = ? AND status = 'ACTIVE'";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, itemType);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Item item = new Item();

                item.setItemId(rs.getInt("item_id"));
                item.setUserId(rs.getInt("user_id"));
                item.setItemType(rs.getString("item_type"));
                item.setItemName(rs.getString("item_name"));
                item.setCategory(rs.getString("category"));
                item.setDescription(rs.getString("description"));
                item.setColor(rs.getString("color"));
                item.setBrand(rs.getString("brand"));
                item.setLocation(rs.getString("location"));
                item.setItemDate(rs.getString("item_date"));
                item.setStatus(rs.getString("status"));

                items.add(item);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return items;
    }
}