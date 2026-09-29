<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Smart Lost & Found</title>

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

        .login-box {
            width: 420px;
            background: white;
            padding: 35px;
            border-radius: 16px;
            box-shadow: 0 10px 35px rgba(0, 0, 0, 0.12);
        }

        .logo {
            text-align: center;
            font-size: 55px;
            margin-bottom: 5px;
        }

        h1 {
            text-align: center;
            margin: 0 0 8px;
            color: #111827;
        }

        .subtitle {
            text-align: center;
            color: #6b7280;
            margin-bottom: 28px;
        }

        label {
            display: block;
            margin-top: 16px;
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

        .register-link {
            text-align: center;
            margin-top: 20px;
            color: #6b7280;
        }

        .register-link a {
            color: #2563eb;
            text-decoration: none;
            font-weight: bold;
        }

        .home-link {
            text-align: center;
            margin-top: 15px;
        }

        .home-link a {
            color: #374151;
            text-decoration: none;
            font-size: 14px;
        }
    </style>
</head>

<body>

<div class="login-box">

    <div class="logo">🔎</div>

    <h1>Welcome Back</h1>

    <p class="subtitle">
        Login to Smart Lost & Found
    </p>

    <form action="login" method="post">

        <label>Email</label>

        <input
            type="email"
            name="email"
            placeholder="Enter your email"
            required
        >

        <label>Password</label>

        <input
            type="password"
            name="password"
            placeholder="Enter your password"
            required
        >

        <button type="submit">
            Login
        </button>

    </form>

    <div class="register-link">
        Don't have an account?
        <a href="register.jsp">Create Account</a>
    </div>

    <div class="home-link">
        <a href="index.jsp">← Back to Home</a>
    </div>

</div>

</body>
</html>