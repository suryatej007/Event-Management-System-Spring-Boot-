<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Events</title>
    <!-- Your existing head content -->

    <!-- Bootstrap and Font Awesome -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa; /* Set a light background color */
            color: #343a40; /* Set the default text color */
            margin: 0;
            padding: 0;
        }

        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin: 20px;
            gap: 20px;
        }

        .card {
            width: 300px;
            margin: 20px;
            padding: 15px;
            background: #fff; /* Set a white background color */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
            cursor: pointer;
            overflow: hidden;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-radius: 8px;
        }

        .card h3 {
            margin-top: 10px;
            font-size: 1.5em;
            color: #343a40; /* Set a dark text color */
        }

        .card p {
            margin-top: 5px;
            color: #868e96; /* Set a lighter text color */
        }

        .card-description {
            height: 80px;
            overflow: hidden;
            color: #495057; /* Set a slightly darker text color */
        }
    </style>
</head>

<body>
    <%@ include file="managerNav.jsp" %>
    <br><br>

    <!-- Loop through events and create cards -->
    <div class="card-container">
        <c:forEach items="${eventdata}" var="e">
            <div class="card">
                <img src="${e.ephoto}" alt="Event Photo">
                <h3>${e.ename}</h3>
                <p><strong>Category:</strong> ${e.ecategory}</p>
                <p><strong>Date:</strong> ${e.edate}</p>
                <p><strong>Location:</strong> ${e.elocation}</p>
                <p><strong>Cost:</strong> ${e.ecost}</p>
                <div class="card-description">
                    <p>${e.edesc}</p>
                   <center> <button class="delete-button">
                    <i class="fas fa-trash"></i><a href='<c:url value="deleteevent/${e.id}"></c:url>'>Delete</a>
                </button></center>
                </div>
            </div>
        </c:forEach>
        
    </div>

    <!-- Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
</body>

</html>
