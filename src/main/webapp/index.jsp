
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
        main { padding: 20px; }
        footer { background-color: #004080; color: white; padding: 10px; text-align: center; position: fixed; bottom: 0; width: 100%; }
    </style>
</head>
<body>

<header>
    <h1>Welcome to KTech Online Training Institute</h1>
    <p>Your one-stop destination for Cloud, DevOps, and IT Training</p>
</header>

<nav>
    <a href="index.jsp">Home</a>
    <a href="courses">Courses</a>
    <a href="recordings">Recordings</a>
    <a href="hello?name=Koti">Say Hello</a>
</nav>

<main>
    <h2>Hello Koti 👋</h2>
    <p>This web application is built using <strong>Maven</strong> and packaged as a <strong>WAR</strong> file.</p>

    <h3>Try it out:</h3>
    <form action="hello" method="get">
        <label for="name">Enter your name: </label>
        <input type="text" id="name" name="name" required>
        <button type="submit">Say Hello</button>
    </form>
</main>

<footer>
    &copy; 2025 KTech Training. All rights reserved.
</footer>

</body>
</html>
