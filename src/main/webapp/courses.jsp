<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.webapp.CourseListServlet.Course" %>
<!DOCTYPE html>
<html>
<head>
    <title>Courses Offered - KTech</title>
    <style>
        body { font-family: Arial; background-color: #f8f8f8; margin: 0; padding: 0; }
        header { background-color: #004080; color: white; padding: 20px; text-align: center; }
        main { padding: 20px; }
        table { border-collapse: collapse; width: 80%; margin: auto; background: white; }
        th, td { padding: 10px; border: 1px solid #ccc; }
        th { background-color: #e0e0e0; }
        .back { text-align: center; margin-top: 20px; }
        a { color: #004080; text-decoration: none; font-weight: bold; }
    </style>
</head>
<body>
<header>
    <h1>Courses We Offer</h1>
</header>
<main>
    <table>
        <tr><th>Course Name</th><th>Description</th></tr>
        <%
            List<Course> courses = (List<Course>) request.getAttribute("courses");
            for (Course course : courses) {
        %>
        <tr>
            <td><%= course.name %></td>
            <td><%= course.description %></td>
        </tr>
        <% } %>
    </table>
    <div class="back">
        <a href="index.jsp">← Back to Home</a>
    </div>
</main>
</body>
</html>