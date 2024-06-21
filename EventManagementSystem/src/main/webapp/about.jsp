<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="website icon" type="png" href="https://i.postimg.cc/yYh4JkMT/favicon-32x32.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
</head>
  <style>
    body {
      font-family: 'Open Sans', sans-serif;
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      background-color: #333; /* Dark background color */
      color: #fff; /* White text color */
    }

    h1, h2, h3 {
      color: #fff; /* White text color */
    }

    p {
      color: #ddd; /* Light gray text color */
      line-height: 1.6;
    }

    .about-section {
      background: linear-gradient(135deg, #71b7e6, #9b59b6);
      overflow: hidden;
      padding: 100px 0;
      animation: gradientAnimation 10s infinite alternate;
      display: flex;
      justify-content: center;
      align-items: center; /* Center vertically */
      min-height: 80vh;
    }

    @keyframes gradientAnimation {
      0% {
        background-position: 0% 50%;
      }
      100% {
        background-position: 100% 50%;
      }
    }

    .inner-container {
      width: 55%;
      background-color: #222; /* Dark container color */
      padding: 50px;
      border-radius: 10px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
      transition: transform 0.5s ease, opacity 0.5s ease;
      max-width: 800px; /* Set a maximum width */
    }

    .inner-container:hover {
      transform: scale(1.05);
      opacity: 0.9;
    }

    .inner-container h1 {
      font-size: 36px;
      font-weight: 900;
      margin-bottom: 20px;
      opacity: 0;
      animation: fadeInUp 1s forwards;
    }

    .text {
      font-size: 18px;
      text-align: justify;
      color: #ddd; /* Light gray text color */
      margin-bottom: 20px;
      opacity: 0;
      animation: fadeInUp 1s forwards;
    }

    .skills {
      display: flex;
      justify-content: space-between;
      font-weight: 700;
      font-size: 16px;
      opacity: 0;
      animation: fadeInUp 1s forwards;
    }

    .skills span {
      flex: 1;
      text-align: center;
      padding: 10px;
      margin: 0 10px;
      background-color: #007bff;
      color: #fff;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease, transform 0.3s ease;
    }

    .skills span:hover {
      background-color: #0056b3;
      transform: translateY(-5px);
    }

    @media screen and (max-width: 1200px) {
      .inner-container {
        padding: 30px;
      }
    }

    @media screen and (max-width: 1000px) {
      .about-section {
        padding: 80px 40px;
      }

      .inner-container {
        width: 100%;
      }
    }

    @media screen and (max-width: 768px) {
      .inner-container {
        padding: 40px;
      }
    }

    @keyframes fadeInUp {
      from {
        transform: translateY(20px);
        opacity: 0;
      }
      to {
        transform: translateY(0);
        opacity: 1;
      }
    }
  </style>
</head>
<body>
  <%@ include file="navbar.jsp" %>
  <br>
  <br>
  <div class="about-section">
    <div class="inner-container">
      <h1>About Us</h1>
      <p class="txt">
        Our project is about Event Management System. This is a kind software in which you can book and manage your event, food, costumes, DJ nights, and venue all at the same time. The main objectives of our project are to provide a platform that is useful to book any sorts of entertainment events like marriages, birthday parties, DJ nights, and so on. This is a very big platform in which food, photography, any special stalls, and many like this are available to conduct an event. This helps to make every little thing available on a single website. The user can simply visit this website when planning for an event. We are here to help you all in providing entertainment in your respective events. You can find everything here that is very useful for you to conduct the events. Here we provide food, photography, some special events, and so on. U can find everything that is useful for you to conduct the event.
      </p>
      <div class="skills">
        <span>DANCING</span>
        <span>SINGING</span>
        <span>FUN ACTIVITIES</span>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS (Optional, if you need to use Bootstrap JS features) -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
