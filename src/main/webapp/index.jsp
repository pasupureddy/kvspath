<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>KTech Online Training</title>
    <style>
        body { font-family: Arial; margin: 0; padding: 0; background-color: #f8f8f8; }
        header { background-color: #004080; color: white; padding: 20px; text-align: center; }
        nav { background-color: #e0e0e0; padding: 10px; text-align: center; }
        nav a { margin: 0 15px; text-decoration: none; color: #004080; font-weight: bold; }
        .hero {
             background-image: url("https://images.pexels.com/photos/4145190/pexels-photo-4145190.jpeg");
             background-size: cover;
             background-position: center;
             height: 320px;
             position: relative;
             display: flex;
             align-items: center;
             justify-content: center;
             color: white;
             font-size: 36px;
             font-weight: bold;
             text-shadow: 2px 2px 6px rgba(0,0,0,0.6);
         }
         .hero::before {
             content: "";
             position: absolute;
             inset: 0;
             background-color: rgba(0, 0, 0, 0.5); /* dark overlay */
         }
         .hero span {
             position: relative;
             z-index: 1;
         }

        main { padding: 20px; }
        section { margin-top: 40px; }
        footer { background-color: #004080; color: white; padding: 10px; text-align: center; margin-top: 40px; }
    </style>
</head>
<body>
<header>
    <h1>Welcome to KTech Online Training Institute</h1>
    <p>Your one-stop destination for Cloud, DevOps, and IT Training</p>
</header>
<nav>
    <a href="./index.jsp">Home</a>
    <a href="./courses">Courses</a>
    <a href="./recordings">Recordings</a>
</nav>
<div class="hero">
    <span>Learn Anytime. Anywhere. Upskill with KTech 🚀</span>
</div>
<main>
    <section>
        <h2>About Us</h2>
        <p>KTech is a premium online training provider specializing in Cloud, DevOps, Linux, and Scripting technologies. 
        With experienced trainers and real-world labs, we make sure you’re industry-ready.</p>
    </section>
</main>
<footer>
    &copy; 2025 KTech Training. All rights reserved.
</footer>
</body>
</html>