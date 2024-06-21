<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
	<link rel="website icon" type="png" href="https://i.postimg.cc/yYh4JkMT/favicon-32x32.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            font-family: 'Nanum Gothic';
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        form {
            width: 500px;
            margin: 40px auto;
            padding: 40px;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 20px;
            box-shadow: 10px 20px 60px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }

        form:hover {
            transform: scale(1.05);
        }

        h2 {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
        }

        .elem-group {
            margin-bottom: 20px;
        }

        label {
            font-size: 18px;
            margin-bottom: 5px;
            display: block;
        }

        input[type="text"],
        input[type="date"],
        textarea,
        input[type="file"] {
            width: 100%;
            padding: 10px;
            border: 2px solid #000000;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 16px;
            margin-bottom: 15px;
        }

        textarea {
            height: 80px;
        }

        button[type="submit"] {
            display: block;
            width: 100%;
            height: 50px;
            background-color: #ffcc00;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
            color: #333;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button[type="submit"]:hover {
            background-color: #ffdb4d;
        }
        h3 {
        color: red;
        text-align: center;
        animation: blink 1s infinite; /* Blink effect */
    }
        @keyframes blink {
        50% {
            opacity: 0;
        }
    }
    </style>
    <title>Update</title>
</head>
<body>
    <%@ include file="userNav.jsp" %>
    <br><br>
    <h3 align="center" style="color:red; animation: blink 1s infinite;">${message}</h3>
    <br>
    <form action="update" method="POST">
        <h2>UPDATE CUSTOMER</h2>
        <div class="elem-group">
            <label for="event-name">First Name</label>
            <input type="text" name="fname" placeholder="Enter first name" value="${c.fname}" required>
        </div>
        <div class="elem-group">
            <label for="event-name">Last Name</label>
            <input type="text" name="lname" placeholder="Enter last name" value="${c.lname}" required>
        </div>
        <div class="elem-group">
            <label for="event-type">Email</label>
            <input type="email" name="email" required  value="${c.email}" readonly/>
        </div>
        <div class="elem-group">
            <label for="event-type">Password</label>
            <input type="password" name="pwd" required  value="${c.password}" />
        </div>
        <div class="elem-group">
            <label for="event-details">Contact No</label>
            <input type="text" name="contactno" required value="${c.contactno}" />
        </div>
        <button type="submit">update</button>
    </form>
</body>
</html>
