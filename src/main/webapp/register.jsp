<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
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
    form {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 600px;
        margin: 20px;
    }
    h1 {
        color: #333;
        margin-bottom: 20px;
        text-align: center;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    td {
        padding: 10px;
        vertical-align: middle;
    }
    input[type="text"], input[type="email"], input[type="date"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #28a745;
        color: white;
        padding: 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 1em;
        width: 100%;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #218838;
    }
    .checkbox-group {
        display: flex;
        justify-content: start;
        gap: 15px;
    }
</style>
</head>
<body>
<form action="register" method="post">
    <h1>User Registration</h1>
    <table>
        <tr>
            <td>UserName</td>
            <td><input type="text" name="userName" required></td>
        </tr>
        <tr>
            <td>E-Mail</td>
            <td><input type="email" name="email" required></td>
        </tr>
        <tr>
            <td>Address</td>
            <td><input type="text" name="address" required></td>
        </tr>
        <tr>
            <td>Mobile Number</td>
            <td><input type="text" name="mobileNumber" required></td>
        </tr>
        <tr>
            <td>Topic:</td>
            <td colspan="2">
                <div class="checkbox-group">
                    <label><input type="checkbox" name="topic" value="Angular"> Angular</label>
                    <label><input type="checkbox" name="topic" value="Java"> Java</label>
                    <label><input type="checkbox" name="topic" value="Python"> Python</label>
                </div>
            </td>
        </tr>
        <tr>
            <td>Register Date</td>
            <td><input type="date" name="registerDate" required></td>
        </tr>
        <tr>
            <td>Parent Contact</td>
            <td><input type="text" name="parentContact" required></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Register">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
