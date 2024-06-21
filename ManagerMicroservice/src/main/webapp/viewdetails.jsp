<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="website icon" type="png" href="https://i.postimg.cc/yYh4JkMT/favicon-32x32.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <style>
         /* Your existing styles */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }

        .event-list-container {
            max-width: 800px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }


        .event-item {
            border: 1px solid #ddd;
            margin-bottom: 20px;
            border-radius: 10px;
            background: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease-in-out;
        }

        .event-item:hover {
            transform: scale(1.02);
        }

        .event-details {
            padding: 20px;
        }

        .event-item h3 {
            font-size: 24px;
            margin-top: 0;
        }

        .event-item p {
            font-size: 18px;
            margin: 5px 0;
        }

        .register-button {
            background-color: #ffcc00;
            border: none;
            border-radius: 5px;
            color: #333;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .register-button:hover {
            background-color: #ffdb4d;
        }
        .table-header {
        background-color: #333;
        color: #fff;
        font-weight: bold;
        text-align: center;
    }

    /* Add CSS classes for table cells */
    .table-cell {
        text-align: center;
        padding: 5px;
    }
    </style>
    <title>Details</title>
</head>
<body>
<%@ include file="managerNav.jsp" %>
<div class="event-list-container">
    <div class="event-item">
        <div class="event-details">
           <table>
    <tr>
        <th class="table-header">Customer Name</th>
        <th class="table-header">Email</th>
        <th class="table-header">Contact</th>
    </tr>
    <c:forEach items="${blist}" var="reg" varStatus="loop">    
        <tr>
            <td class="table-cell">${reg.customer_id.fname}</td>
            <td class="table-cell">${reg.customer_id.email}</td>
            <td class="table-cell">${reg.customer_id.contactno}</td>
        </tr>
    </c:forEach>
</table>
        </div>
    </div>
    <!-- More event items can be added here -->
</div>
</body>
</html>
