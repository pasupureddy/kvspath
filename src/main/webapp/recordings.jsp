
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.webapp.RecordingsServlet.Recording" %>
<!DOCTYPE html>
<html>
<head>
    <title>Recordings</title>
    <style>
        body { font-family: Arial; margin: 20px; }
        ul { list-style-type: none; padding: 0; }
        li { margin-bottom: 10px; }
        a { text-decoration: none; color: #0066cc; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>
<h2>Class Recordings</h2>
<ul>
    <%
        List<Recording> recordings = (List<Recording>) request.getAttribute("recordings");
        for (Recording recording : recordings) {
    %>
    <li><a href="<%= recording.url %>" target="_blank"><%= recording.title %></a></li>
    <% } %>
</ul>
</body>
</html>
