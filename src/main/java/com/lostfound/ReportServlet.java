package com.lostfound;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/report")
public class ReportServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Form se data lena
        String itemType = request.getParameter("itemType");
        String itemName = request.getParameter("itemName");
        String category = request.getParameter("category");
        String description = request.getParameter("description");
        String color = request.getParameter("color");
        String brand = request.getParameter("brand");
        String location = request.getParameter("location");
        String itemDate = request.getParameter("itemDate");


        // 2. Item object banana
        Item item = new Item();

        item.setUserId(1);
        item.setItemType(itemType);
        item.setItemName(itemName);
        item.setCategory(category);
        item.setDescription(description);
        item.setColor(color);
        item.setBrand(brand);
        item.setLocation(location);
        item.setItemDate(itemDate);


        // 3. Database me item save karna
        ItemDAO itemDAO = new ItemDAO();

        int newItemId = itemDAO.saveItem(item);


        if (newItemId == -1) {

            response.setContentType("text/html");

            response.getWriter().println(
                    "<h1>Item save nahi hua!</h1>"
            );

            return;
        }


        // 4. Opposite type find karna
        String oppositeType;

        if (itemType.equalsIgnoreCase("LOST")) {
            oppositeType = "FOUND";
        } else {
            oppositeType = "LOST";
        }


        // 5. Opposite items database se lana
        List<Item> oppositeItems =
                itemDAO.getItemsByType(oppositeType);


        // 6. Matching check karna
        int matchCount = 0;

        MatchDAO matchDAO = new MatchDAO();


        for (Item oppositeItem : oppositeItems) {

            double score;

            if (itemType.equalsIgnoreCase("LOST")) {

                score = MatchService.calculateScore(
                        item,
                        oppositeItem
                );

                if (score >= 70) {

                    matchDAO.saveMatch(
                            newItemId,
                            oppositeItem.getItemId(),
                            score
                    );

                    matchCount++;
                }

            } else {

                score = MatchService.calculateScore(
                        oppositeItem,
                        item
                );

                if (score >= 70) {

                    matchDAO.saveMatch(
                            oppositeItem.getItemId(),
                            newItemId,
                            score
                    );

                    matchCount++;
                }
            }
        }


        // 7. Result browser par dikhana
        response.setContentType("text/html");

        response.getWriter().println(
                "<html>" +
                        "<body style='font-family:Arial;text-align:center;margin-top:80px;'>" +

                        "<h1>Item Reported Successfully!</h1>" +

                        "<p>Item ID: " + newItemId + "</p>" +

                        "<h2>Possible Matches Found: "
                        + matchCount +
                        "</h2>" +

                        "</body>" +
                        "</html>"
        );
    }
}