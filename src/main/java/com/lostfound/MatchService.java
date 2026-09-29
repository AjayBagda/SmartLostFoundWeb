package com.lostfound;

public class MatchService {

    public static double calculateScore(Item lost, Item found) {

        double score = 0;

        if (lost.getItemName().equalsIgnoreCase(found.getItemName())) {
            score += 30;
        }

        if (lost.getCategory().equalsIgnoreCase(found.getCategory())) {
            score += 20;
        }

        if (lost.getLocation().equalsIgnoreCase(found.getLocation())) {
            score += 20;
        }

        if (lost.getColor().equalsIgnoreCase(found.getColor())) {
            score += 15;
        }

        if (lost.getBrand().equalsIgnoreCase(found.getBrand())) {
            score += 15;
        }

        return score;
    }
}