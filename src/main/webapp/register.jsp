<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register - Smart Lost & Found</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #eff6ff, #f8fafc);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .register-box {
            width: 420px;
            background: white;
            padding: 35px;
            border-radius: 16px;
            box-shadow: 0 10px 35px rgba(0,0,0,0.12);
        }

        .logo {
            text-align: center;
            font-size: 28px;
            margin-bottom: 10px;
        }

        h1 {
            text-align: center;
            margin-bottom: 8px;
            color: #111827;
        }

        .subtitle {
            text-align: center;
            color: #6b7280;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-top: 15px;
            margin-bottom: 6px;
            font-weight: bold;
            color: #374151;
        }

        input {
            width: 100%;
            padding: 12px;
            border: 1px solid #d1d5db;
            border-radius: 8px;
            font-size: 15px;
            outline: none;
        }

        input:focus {
            border-color: #2563eb;
        }

        button {
            width: 100%;
            margin-top: 25px;
            padding: 13px;
            border: none;
            border-radius: 8px;
            background: #2563eb;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        button:hover {
            background: #1d4ed8;
        }

        .login-link {
            text-align: center;
            margin-top: 20px;
            color: #6b7280;
        }

        .login-link a {
            color: #2563eb;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>

<body>

<div class="register-box">

    <div class="logo">🔎</div>

    <h1>Create Account</h1>

    <p class="subtitle">
        Join Smart Lost & Found Portal
    </p>

    <form action="register" method="post">

        <label>Name</label>
        <input
            type="text"
            name="name"
            placeholder="Enter your name"
            required
        >

        <label>Email</label>
        <input
            type="email"
            name="email"
            placeholder="Enter your email"
            required
        >

        <label>Phone</label>
        <input
            type="text"
            name="phone"
            placeholder="Enter your phone number"
            required
        >

        <label>Password</label>
        <input
            type="password"
            name="password"
            placeholder="Create a password"
            required
        >

        <button type="submit">
            Create Account
        </button>

    </form>

    <div class="login-link">
        Already have an account?
        <a href="login.jsp">Login</a>
    </div>

</div>

</body>
</html>