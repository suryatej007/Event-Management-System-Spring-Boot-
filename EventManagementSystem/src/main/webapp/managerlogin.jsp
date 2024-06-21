<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="website icon" type="png" href="https://i.postimg.cc/yYh4JkMT/favicon-32x32.png">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <style>
        .back-button {
            position: absolute;
            top: 20px;
            left: 20px;
            color: #fff;
            text-decoration: none;
            font-size: 16px;
        }

        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins',sans-serif;
        }

        body{
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }

        .container{
            max-width: 700px;
            width: 100%;
            background-color: #fff;
            padding: 25px 30px;
            border-radius: 5px;
            box-shadow: 0 5px 10px rgba(0,0,0,0.15);
        }

        .container .title{
            font-size: 25px;
            font-weight: 500;
            position: relative;
        }

        .container .title::before{
            content: "";
            position: absolute;
            left: 0;
            bottom: 0;
            height: 3px;
            width: 30px;
            border-radius: 5px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }

        .content form {
            opacity: 0;
            animation: fadeIn 1s forwards;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .content form .user-details{
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 20px 0 12px 0;
        }

        .content form .user-details .input-box{
            margin-bottom: 15px;
            width: calc(100% / 2 - 20px);
        }

        .content form .user-details .input-box span.details{
            display: block;
            font-weight: 500;
            margin-bottom: 5px;
        }

        .content form .user-details .input-box input{
            height: 45px;
            width: 100%;
            outline: none;
            font-size: 16px;
            border-radius: 5px;
            padding-left: 15px;
            border: 1px solid #ccc;
            border-bottom-width: 2px;
            transition: all 0.3s ease;
        }

        .content form .user-details .input-box input:focus,
        .content form .user-details .input-box input:valid{
            border-color: #9b59b6;
        }

        .content form .category .category label .dot{
            height: 18px;
            width: 18px;
            border-radius: 50%;
            margin-right: 10px;
            background: #d9d9d9;
            border: 5px solid transparent;
            transition: all 0.3s ease;
        }

        .content form .category #dot-1:checked ~ .category label .one,
        .content form .category #dot-2:checked ~ .category label .two,
        .content form .category #dot-3:checked ~ .category label .three{
            background: #9b59b6;
            border-color: #d9d9d9;
        }

        .content form input[type="radio"]{
            display: none;
        }

        .content form .button{
            height: 45px;
            margin: 35px 0;
        }

        .content form .button input{
            height: 100%;
            width: 100%;
            border-radius: 5px;
            border: none;
            color: #fff;
            font-size: 18px;
            font-weight: 500;
            letter-spacing: 1px;
            cursor: pointer;
            transition: all 0.3s ease;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }

        .content form .button input:hover{
            background: linear-gradient(-135deg, #71b7e6, #9b59b6);
        }

        .content form .links{
            position: relative;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 20px;
        }

        .content form .links a {
            color: #fff;
            text-decoration: none;
        }

        @media(max-width: 584px){
            .container{
                max-width: 100%;
            }

            .content form .user-details .input-box{
                margin-bottom: 15px;
                width: 100%;
            }

            .content form .category{
                width: 100%;
            }

            .content .user-details{
                max-height: 300px;
                overflow-y: scroll;
            }

            .content .user-details::-webkit-scrollbar{
                width: 5px;
            }
        }

        @media(max-width: 459px){
            .container .content .category{
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <%@ include file="navbar.jsp" %>
    <div class="container">
        <div class="title">Manager Login</div>
        <div class="content">
            <form method="post" action="checkmanagerlogin">
                <div class="user-details">
                    <div class="input-box">
                        <span class="details">Email</span>
                        <input type="text" name="email" placeholder="Enter your Email" required>
                    </div>
                    <div class="input-box">
                        <span class="details">Password</span>
                        <input type="password" name="pwd" placeholder="Enter your password" required>
                    </div>
                </div>
                <div class="button">
                    <input type="submit" value="Login">
                </div>
            </form>
            <div class="register-link">
                Don't have an account? <a href="managersignup">Register here</a>
            </div>
            <c:if test="${not empty message}">
                <div class="alert alert-danger" role="alert">
                    <i class="fas fa-exclamation-triangle"></i> ${message}
                </div>
            </c:if>
        </div>
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
