<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.hrms.model.RegisterModel" %>

<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        table {
            width: 85%;
            border-collapse: collapse;
            margin: 20px 0;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 15px;
            text-align: left;
            font-weight: bold;
        }

        th {
            background-color: #4CAF50;
            color: white;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
            transition: background-color 0.3s ease-in-out;
        }

        td {
            color: #555;
            position: relative;
        }

        td::after {
            content: '';
            position: absolute;
            left: 0;
            bottom: 0;
            width: 100%;
            height: 2px;
            background: linear-gradient(90deg, rgba(76, 175, 80, 0) 0%, rgba(76, 175, 80, 1) 50%, rgba(76, 175, 80, 0) 100%);
            transform: scaleX(0);
            transition: transform 0.3s ease;
        }

        td:hover::after {
            transform: scaleX(1);
        }

        td a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
            position: relative;
        }

        td a:hover {
            text-decoration: underline;
            color: #2E7D32;
        }
    </style>
</head>
<body>
<table>
    <thead>
        <tr>
            <th>User Name</th>
            <th>Email</th>
            <th>Address</th>
            <th>Mobile Number</th>
            <th>Topics</th>
            <th>Register Date</th>
            <th>Parent Contact</th>
        </tr>
    </thead>
    <tbody>
        <%
            List<RegisterModel> users = (List<RegisterModel>) request.getAttribute("user");
            if (users != null) {
                for (int i = 0; i < users.size(); i++) {
                    RegisterModel user = users.get(i);
        %>
        <tr>
            <td><%= user.getUserName() %></td>
            <td><%= user.getEmail() %></td>
            <td><%= user.getAddress() %></td>
            <td><%= user.getMobileNumber() %></td>
            <td><%= user.getTopics() %></td>
            <td><%= user.getRegisterDate() %></td>
            <td><%= user.getParentContact() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="7">No users found.</td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>
</body>
</html>
