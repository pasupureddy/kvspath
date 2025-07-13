<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.webapp.RecordingsServlet.Recording" %>
<!DOCTYPE html>
<html>
<head>
    <title>Class Recordings - KTech</title>
    <style>
        body { font-family: Arial; background-color: #f8f8f8; margin: 0; padding: 0; }
        header { background-color: #004080; color: white; padding: 20px; text-align: center; }
        main { padding: 20px; }
        ul { list-style-type: none; padding: 0; max-width: 700px; margin: auto; background: white; border-radius: 8px; }
        li { padding: 10px; border-bottom: 1px solid #ddd; }
        li:last-child { border-bottom: none; }
        a { text-decoration: none; color: #004080; font-weight: bold; }
        a:hover { text-decoration: underline; }
        .back { text-align: center; margin-top: 20px; }
    </style>
</head>
<body>
<header>
    <h1>Class Recordings</h1>
</header>
<main>
    <ul>
        <%
            List<Recording> recordings = (List<Recording>) request.getAttribute("recordings");
            for (Recording recording : recordings) {
        %>
        <li><a href="<%= recording.url %>" target="_blank"><%= recording.title %></a></li>
        <% } %>
    </ul>
    <div class="back">
        <a href="index.jsp">← Back to Home</a>
    </div>
</main>
</body>
</html>