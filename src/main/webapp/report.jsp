<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Report Item - Smart Lost & Found</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f4f7;
            margin: 0;
            padding: 40px;
        }

        .container {
            width: 500px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.15);
        }

        h1 {
            text-align: center;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input,
        select,
        textarea {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }

        textarea {
            height: 100px;
            resize: vertical;
        }

        button {
            width: 100%;
            margin-top: 25px;
            padding: 12px;
            border: none;
            border-radius: 6px;
            background: #222;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background: #444;
        }
    </style>
</head>

<body>

<div class="container">

    <h1>Report Lost / Found Item</h1>

    <form action="report" method="post">

        <label>Item Type</label>

        <select name="itemType" required>
            <option value="LOST">Lost Item</option>
            <option value="FOUND">Found Item</option>
        </select>


        <label>Item Name</label>

        <input type="text"
               name="itemName"
               placeholder="Example: Mobile"
               required>


        <label>Category</label>

        <input type="text"
               name="category"
               placeholder="Example: Electronics"
               required>


        <label>Description</label>

        <textarea name="description"
                  placeholder="Describe the item..."
                  required></textarea>


        <label>Color</label>

        <input type="text"
               name="color"
               placeholder="Example: Black">


        <label>Brand</label>

        <input type="text"
               name="brand"
               placeholder="Example: Samsung">


        <label>Location</label>

        <input type="text"
               name="location"
               placeholder="Example: Jaipur"
               required>


        <label>Item Date</label>

        <input type="date"
               name="itemDate"
               required>


        <button type="submit">
            Report Item
        </button>

    </form>

</div>

</body>
</html>