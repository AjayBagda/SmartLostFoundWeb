package com.lostfound;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/items")
public class AllItemsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        ItemDAO itemDAO = new ItemDAO();

        List<Item> lostItems = itemDAO.getItemsByType("LOST");
        List<Item> foundItems = itemDAO.getItemsByType("FOUND");

        response.setContentType("text/html;charset=UTF-8");

        StringBuilder html = new StringBuilder();

        html.append("""
                <!DOCTYPE html>
                <html>
                <head>
                    <meta charset="UTF-8">
                    <title>All Items - Smart Lost & Found</title>

                    <style>
                        body {
                            margin: 0;
                            font-family: Arial, sans-serif;
                            background: #f5f7fb;
                            color: #111827;
                        }

                        .navbar {
                            background: #111827;
                            color: white;
                            padding: 20px 50px;
                            display: flex;
                            justify-content: space-between;
                        }

                        .logo {
                            font-size: 22px;
                            font-weight: bold;
                        }

                        .navbar a {
                            color: white;
                            text-decoration: none;
                            margin-left: 25px;
                        }

                        .container {
                            width: 92%;
                            margin: 40px auto;
                        }

                        h1 {
                            text-align: center;
                            margin-bottom: 30px;
                        }

                        .table-box {
                            background: white;
                            padding: 20px;
                            border-radius: 12px;
                            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
                            overflow-x: auto;
                        }

                        table {
                            width: 100%;
                            border-collapse: collapse;
                        }

                        th {
                            background: #2563eb;
                            color: white;
                            padding: 13px;
                            text-align: left;
                        }

                        td {
                            padding: 12px;
                            border-bottom: 1px solid #e5e7eb;
                        }

                        tr:hover {
                            background: #f9fafb;
                        }

                        .lost {
                            color: #dc2626;
                            font-weight: bold;
                        }

                        .found {
                            color: #16a34a;
                            font-weight: bold;
                        }

                        .status {
                            background: #dcfce7;
                            color: #166534;
                            padding: 5px 10px;
                            border-radius: 20px;
                        }
                    </style>
                </head>

                <body>

                <div class="navbar">
                    <div class="logo">
                        🔎 Smart Lost & Found
                    </div>

                    <div>
                        <a href="index.jsp">Home</a>
                        <a href="report.jsp">Report Item</a>
                    </div>
                </div>

                <div class="container">

                    <h1>All Reported Items</h1>

                    <div class="table-box">

                    <table>

                    <tr>
                        <th>ID</th>
                        <th>Type</th>
                        <th>Item</th>
                        <th>Category</th>
                        <th>Color</th>
                        <th>Brand</th>
                        <th>Location</th>
                        <th>Status</th>
                    </tr>
                """);

        for (Item item : lostItems) {
            addItemRow(html, item);
        }

        for (Item item : foundItems) {
            addItemRow(html, item);
        }

        html.append("""
                    </table>

                    </div>

                </div>

                </body>
                </html>
                """);

        response.getWriter().println(html);
    }

    private void addItemRow(StringBuilder html, Item item) {

        String typeClass =
                "LOST".equalsIgnoreCase(item.getItemType())
                        ? "lost"
                        : "found";

        html.append("<tr>");

        html.append("<td>")
                .append(item.getItemId())
                .append("</td>");

        html.append("<td class='")
                .append(typeClass)
                .append("'>")
                .append(item.getItemType())
                .append("</td>");

        html.append("<td>")
                .append(item.getItemName())
                .append("</td>");

        html.append("<td>")
                .append(item.getCategory())
                .append("</td>");

        html.append("<td>")
                .append(item.getColor())
                .append("</td>");

        html.append("<td>")
                .append(item.getBrand())
                .append("</td>");

        html.append("<td>")
                .append(item.getLocation())
                .append("</td>");

        html.append("<td><span class='status'>")
                .append(item.getStatus())
                .append("</span></td>");

        html.append("</tr>");
    }
}