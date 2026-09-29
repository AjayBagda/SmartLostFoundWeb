package com.lostfound;

import java.sql.Connection;
import java.sql.PreparedStatement;

 class MatchDAO {

    public void saveMatch(int lostItemId, int foundItemId, double score) {

        String sql = "INSERT INTO matches " +
                "(lost_item_id, found_item_id, match_score) " +
                "VALUES (?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, lostItemId);
            ps.setInt(2, foundItemId);
            ps.setDouble(3, score);

            ps.executeUpdate();

            System.out.println("Match saved successfully!");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}