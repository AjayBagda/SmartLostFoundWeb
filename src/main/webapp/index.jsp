<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Smart Lost & Found Portal</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: #f5f7fb;
            color: #222;
        }

        /* Navbar */
        .navbar {
            height: 70px;
            background: #111827;
            color: white;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 60px;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            margin-left: 30px;
            font-size: 15px;
        }

        .nav-links a:hover {
            color: #60a5fa;
        }

        /* Hero */
        .hero {
            min-height: 500px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 60px 10%;
            background: linear-gradient(135deg, #eff6ff, #ffffff);
        }

        .hero-text {
            width: 55%;
        }

        .hero-text h1 {
            font-size: 52px;
            line-height: 1.1;
            margin-bottom: 20px;
            color: #111827;
        }

        .hero-text h1 span {
            color: #2563eb;
        }

        .hero-text p {
            font-size: 18px;
            color: #6b7280;
            line-height: 1.6;
            margin-bottom: 30px;
        }

        .buttons a {
            display: inline-block;
            padding: 14px 25px;
            border-radius: 8px;
            text-decoration: none;
            margin-right: 12px;
            font-weight: bold;
        }

        .btn-primary {
            background: #2563eb;
            color: white;
        }

        .btn-primary:hover {
            background: #1d4ed8;
        }

        .btn-secondary {
            background: white;
            color: #2563eb;
            border: 2px solid #2563eb;
        }

        .btn-secondary:hover {
            background: #eff6ff;
        }

        /* Hero Card */
        .hero-card {
            width: 330px;
            background: white;
            padding: 30px;
            border-radius: 18px;
            box-shadow: 0 10px 35px rgba(0,0,0,0.12);
            text-align: center;
        }

        .hero-card .icon {
            font-size: 75px;
            margin-bottom: 15px;
        }

        .hero-card h2 {
            margin-bottom: 10px;
        }

        .hero-card p {
            color: #6b7280;
            line-height: 1.5;
        }

        /* Features */
        .features {
            padding: 60px 10%;
            text-align: center;
        }

        .features h2 {
            font-size: 32px;
            margin-bottom: 40px;
        }

        .feature-container {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
        }

        .feature-card {
            width: 250px;
            background: white;
            padding: 30px 20px;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .feature-card .icon {
            font-size: 40px;
            margin-bottom: 15px;
        }

        .feature-card h3 {
            margin-bottom: 10px;
        }

        .feature-card p {
            color: #6b7280;
            font-size: 14px;
            line-height: 1.5;
        }

        /* Footer */
        footer {
            background: #111827;
            color: #9ca3af;
            text-align: center;
            padding: 25px;
            margin-top: 30px;
        }

        /* Mobile */
        @media (max-width: 800px) {

            .navbar {
                padding: 0 20px;
            }

            .nav-links {
                display: none;
            }

            .hero {
                flex-direction: column;
                text-align: center;
                gap: 40px;
            }

            .hero-text {
                width: 100%;
            }

            .hero-text h1 {
                font-size: 38px;
            }

            .hero-card {
                width: 90%;
            }
        }
    </style>
</head>

<body>

<!-- Navbar -->
<div class="navbar">

    <div class="logo">
        🔎 Smart Lost & Found
    </div>

    <div class="nav-links">
        <a href="index.jsp">Home</a>
        <a href="report.jsp">Report Item</a>
        <a href="#">Login</a>
        <a href="#">Register</a>
    </div>

</div>


<!-- Hero Section -->
<section class="hero">

    <div class="hero-text">

        <h1>
            Lost Something?<br>
            <span>Let's Find It.</span>
        </h1>

        <p>
            Smart Lost & Found Portal helps people report,
            search and recover lost items easily.
            Report a lost item or a found item and let our
            matching system help connect them.
        </p>

        <div class="buttons">

            <a href="report.jsp" class="btn-primary">
                Report Lost Item
            </a>

            <a href="report.jsp" class="btn-secondary">
                Report Found Item
            </a>

        </div>

    </div>


    <div class="hero-card">

        <div class="icon">
            🔍
        </div>

        <h2>Find Your Item</h2>

        <p>
            Our smart matching system compares
            item name, category, location, color
            and brand to find possible matches.
        </p>

    </div>

</section>


<!-- Features -->
<section class="features">

    <h2>How It Works</h2>

    <div class="feature-container">

        <div class="feature-card">

            <div class="icon">📝</div>

            <h3>Report</h3>

            <p>
                Report your lost or found item
                with important details.
            </p>

        </div>


        <div class="feature-card">

            <div class="icon">🔎</div>

            <h3>Smart Matching</h3>

            <p>
                The system automatically checks
                possible matching items.
            </p>

        </div>


        <div class="feature-card">

            <div class="icon">🤝</div>

            <h3>Recover</h3>

            <p>
                Find the possible match and
                connect with the rightful owner.
            </p>

        </div>

    </div>

</section>


<!-- Footer -->
<footer>

    <p>
        © 2026 Smart Lost & Found Portal
    </p>

</footer>

</body>
</html>