<%@ page import="java.util.List" %>
<%@ page import="com.lostfound.Item" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>All Items - Smart Lost & Found</title>

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f5f7fb;
            color: #111827;
        }

        .navbar {
            background: #111827;
            color: white;
            padding: 18px 60px;
            display: flex;
            justify-content: space-between;
            align-items: center;
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
            font-size: 13px;
        }

        .empty {
            text-align: center;
            padding: 30px;
            color: #6b7280;
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

            <%
                List<Item> items =
                        (List<Item>) request.getAttribute("items");

                if (items != null && !items.isEmpty()) {

                    for (Item item : items) {
            %>

            <tr>

                <td>
                    <%= item.getItemId() %>
                </td>

                <td>

                    <% if ("LOST".equalsIgnoreCase(item.getItemType())) { %>

                        <span class="lost">LOST</span>

                    <% } else { %>

                        <span class="found">FOUND</span>

                    <% } %>

                </td>

                <td>
                    <%= item.getItemName() %>
                </td>

                <td>
                    <%= item.getCategory() %>
                </td>

                <td>
                    <%= item.getColor() %>
                </td>

                <td>
                    <%= item.getBrand() %>
                </td>

                <td>
                    <%= item.getLocation() %>
                </td>

                <td>
                    <span class="status">
                        <%= item.getStatus() %>
                    </span>
                </td>

            </tr>

            <%
                    }

                } else {
            %>

            <tr>

                <td colspan="8" class="empty">
                    No items reported yet.
                </td>

            </tr>

            <%
                }
            %>

        </table>

    </div>

</div>

</body>

</html>