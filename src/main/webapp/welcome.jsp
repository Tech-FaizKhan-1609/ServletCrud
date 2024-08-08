<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        text-align: center;
        padding: 40px;
        background: #ffffff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        border-radius: 12px;
        width: 300px;
    }
    .container h1 {
        margin-bottom: 20px;
        color: #333;
        font-size: 2em;
        font-weight: bold;
    }
    a {
        display: block;
        font-size: 1.2em;
        color: #ffffff;
        text-decoration: none;
        padding: 15px;
        margin: 10px 0;
        background-color: #28a745;
        border-radius: 8px;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }
    a:hover {
        background-color: #218838;
        transform: translateY(-2px);
    }
    a:active {
        transform: translateY(1px);
    }
</style>
</head>
<body>
<div class="container">
    <h1>Welcome</h1>
    <a href="register.jsp">REGISTER</a>
    <a href="userList">USER LIST</a>
</div>
</body>
</html>
