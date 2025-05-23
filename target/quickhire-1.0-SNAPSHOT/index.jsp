<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Set status code to 200 OK
    response.setStatus(200);
    
    // Get the path to determine if we're on the root path
    String path = request.getRequestURI();
    
    if (path.equals("/") || path.equals("/index.jsp")) {
        // Redirect to index.html from the root path
        response.setHeader("Location", "index.html");
    } else {
        // For all other paths that hit this JSP, send to index.html (like a SPA)
        response.setHeader("Location", "/index.html");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="0;URL='/index.html'" />
    <title>QuickHire - Resume Parser & Job Portal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 100px;
            background-color: #f5f5f5;
        }
        h1 {
            color: #333;
        }
        p {
            color: #666;
        }
        .loading {
            display: inline-block;
            width: 50px;
            height: 50px;
            border: 3px solid rgba(0,0,0,.3);
            border-radius: 50%;
            border-top-color: #333;
            animation: spin 1s ease-in-out infinite;
        }
        @keyframes spin {
            to { transform: rotate(360deg); }
        }
    </style>
</head>
<body>
    <h1>Welcome to QuickHire</h1>
    <p>Loading the application...</p>
    <div class="loading"></div>
    <p>If you are not redirected automatically, <a href="index.html">click here</a>.</p>
    
    <script>
        // Backup redirection if meta refresh fails
        setTimeout(function() {
            window.location.href = 'index.html';
        }, 500);
    </script>
</body>
</html>