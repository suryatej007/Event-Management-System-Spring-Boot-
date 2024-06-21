<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

    <style>
        @import url('https://fonts.googleapis.com/css?family=Open+Sans:400,600,700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Open Sans', sans-serif;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: #111;
        }

        .square {
            position: relative;
            width: 500px;
            height: 500px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .square i {
            position: absolute;
            inset: 0;
            border: 2px solid #fff;
            transition: 0.5s;
        }

        .square i:nth-child(1) {
            border-radius: 38% 62% 63% 37% / 41% 44% 56% 59%;
            animation: animate 6s linear infinite;
        }

        .square i:nth-child(2) {
            border-radius: 41% 44% 56% 59%/38% 62% 63% 37%;
            animation: animate 4s linear infinite;
        }

        .square:hover i {
            border: 6px solid var(--clr);
            filter: drop-shadow(0 0 20px var(--clr));
        }

        @keyframes animate {
            0% {
                transform: rotate(0deg);
            }
            100% {
                transform: rotate(360deg);
            }
        }

        .login {
            position: absolute;
            width: 300px;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            gap: 20px;
        }

        .login h2 {
            font-size: 2em;
            color: #fff;
        }

        .login .inputBx {
            position: relative;
            width: 100%;
        }

        .login .inputBx a {
            text-decoration: none;
            width: 100%;
        }

        .login .inputBx button {
            width: 100%;
            background: linear-gradient(45deg, #ff357a, #71b7e6);
            border: none;
            padding: 12px 20px;
            font-size: 1.2em;
            cursor: pointer;
            color: #fff;
            transition: background 0.3s ease; /* Added transition for smooth hover effect */
        }

        .login .inputBx button:hover {
            background: linear-gradient(45deg, #ff357a, #9b59b6); /* Updated hover background */
        }

        .login .inputBx input::placeholder {
            color: rgba(255, 255, 255, 0.75);
        }

        .login .links {
            position: relative;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 20px;
        }

        .login .links a {
            color: #fff;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <%@ include file="navbar.jsp" %>
    <div class="square">
        <i style="--clr:#71b7e6;"></i>
        <i style="--clr:#9b59b6;"></i>
        <div class="login">
            <h2>Login</h2>
            <div class="inputBx">
                <a href="/customer/customerlogin"><button>Customer Login</button></a>
            </div>
            <div class="inputBx">
                <a href="/manager/managerlogin"><button>Event Manager Login</button></a>
            </div>
        </div>
    </div>
</body>
</html>
