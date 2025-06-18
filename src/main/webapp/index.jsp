<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Java Web Application</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .container {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
            text-align: center;
            max-width: 500px;
            width: 90%;
        }
        h1 {
            color: #333;
            margin-bottom: 1rem;
        }
        .subtitle {
            color: #666;
            margin-bottom: 2rem;
        }
        .form-group {
            margin-bottom: 1rem;
        }
        input[type="text"] {
            padding: 10px;
            border: 2px solid #ddd;
            border-radius: 5px;
            width: 200px;
            font-size: 16px;
        }
        .btn {
            background: #667eea;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin: 5px;
            text-decoration: none;
            display: inline-block;
            transition: background 0.3s;
        }
        .btn:hover {
            background: #5a6fd8;
        }
        .info {
            margin-top: 2rem;
            padding: 1rem;
            background: #f8f9fa;
            border-radius: 5px;
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Hello Koti</h1>
        <p class="subtitle">Built with Maven - Packaged as WAR</p>
        
        <form action="hello" method="get">
            <div class="form-group">
                <input type="text" name="name" placeholder="Enter your name" />
            </div>
            <button type="submit" class="btn">Say Hello</button>
        </form>
        
        <div style="margin-top: 20px;">
            <a href="hello" class="btn">Hello Servlet</a>
        </div>
        
        <div class="info">
            <strong>Application Info:</strong><br/>
            Server Time: <%= new java.util.Date() %><br/>
            Session ID: <%= session.getId() %><br/>
            Context Path: <%= request.getContextPath() %>
        </div>
    </div>
</body>
</html>

