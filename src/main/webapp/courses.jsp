
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.webapp.CourseListServlet.Course" %>
<!DOCTYPE html>
<html>
<head>
    <title>Courses Offered</title>
    <style>
        body { font-family: Arial; margin: 20px; }
        table { border-collapse: collapse; width: 80%; }
        th, td { padding: 10px; border: 1px solid #ccc; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
<h2>Available Courses</h2>
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
</body>
</html>
