<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
/* Scroll-to-top button styles */
/* Scroll-to-top button styles */
.scroll-to-top {
    display: none;
    position: fixed;
    bottom: 20px;
    right: 20px;
    color: white; /* Change the color as needed */
    cursor: pointer;
    font-size: 24px; /* Adjust the font size as needed */
    transition: color 0.3s;
}

/* Adjust the styles when the button is hovered */
.scroll-to-top:hover {
    color: #0056b3; /* Change the hover color as needed */
}



    </style>
</head>
<link type="text/css" rel="stylesheet" href="css/style1.css">
<body>
<%@ include file="navbar.jsp" %>
<div class="header">
    <div class="img-parent">
        <div class="img">
            <img src="https://wallpapercave.com/wp/wp7488230.jpg" alt="">
        </div>
        <div class="img-overlay"></div>
    </div>
    <div class="img-content">
        <h2>Events</h2>
        <span>
            An Event Management System (EMS) is a software platform designed to streamline and automate the process of planning, organizing, promoting, and executing events. It serves as a comprehensive tool for event planners, organizers, and coordinators to handle various aspects of event management.
        </span>
    </div>
</div>

<div class="container event">
    <div class="row justify-content-center text-center">
        <div class="offset-sm-1 col-sm-5">
            <img src="https://media.istockphoto.com/id/497317250/photo/new-year-party.jpg?s=612x612&w=0&k=20&c=ssF8Nl4srRSnNhToYI0GlUznz3xVVJunOnaIe1ukllA=" class="img-fluid" alt="">
            <div class="event-content">
                <h4>Parties</h4>
                <span>Parties are vibrant social gatherings where friends, family, or colleagues come together to celebrate, converse, and have a good time. They often feature music, dancing, food, and drinks, creating an atmosphere of joy and camaraderie. Whether it's a casual house party or an elaborate themed event, parties provide an opportunity to unwind, connect, and create lasting memories.</span>
                <a href="login">join</a>
            </div>
        </div>

        <div class="offset-sm-1 col-sm-5">
            <img src="https://images.unsplash.com/photo-1529636798458-92182e662485?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=869&q=80" class="img-fluid" alt="">
            <div class="event-content">
                <h4>Weddings</h4>
                <span>Weddings are poignant ceremonies uniting two individuals in love and commitment, often celebrated with rituals, vows, and festivities. These events mark the beginning of a new chapter in a couple's life, surrounded by family and friends who share in their joy. From elegant attire to emotional exchanges, weddings encapsulate profound emotions and cherished traditions.</span>
                <br>
                <a href="login">join</a>
            </div>
        </div>
    </div>

    <div class="row justify-content-center text-center">
        <div class="offset-sm-1 col-sm-5">
            <img src="https://www.jesvenues.com/images/services/standup-comedy.jpg" class="img-fluid" alt="">
            <div class="event-content">
                <h4>standup-comedy</h4>
                <span>Comedy shows are uproarious live performances where comedians use wit and humor to entertain audiences. With a blend of clever anecdotes, observational humor, and relatable stories, these shows elicit laughter and offer a delightful escape from everyday life. Comedy shows bring people together in shared laughter, highlighting the power of comedy to unite and uplift.</span>
                <br>
                <a href="login">join</a>
            </div>
        </div>

        <div class="offset-sm-1 col-sm-5">
            <img src="https://hbr.org/resources/images/article_assets/2016/04/apr16-01-184777571.jpg" class="img-fluid" alt="">
            <div class="event-content">
                <h4>Hackathons</h4>
                <span>Hackathons are intense, time-bound events where programmers, designers, and innovators collaborate to develop solutions, often software or apps, to specific challenges. Fueled by creativity and competition, participants work tirelessly to create functional prototypes within a short timeframe, showcasing their problem-solving skills. These events foster rapid innovation and offer a platform for learning, networking, and showcasing technical prowess.</span>
                <br>
                <a href="login">join</a>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>
<div class="scroll-to-top">
    <i class="fas fa-arrow-up"></i>
</div>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        var scrollToTopButton = document.querySelector('.scroll-to-top');
        window.addEventListener('scroll', function () {
            if (window.scrollY > 200) {
                scrollToTopButton.style.display = 'block';
            } else {
                scrollToTopButton.style.display = 'none';
            }
        });
        scrollToTopButton.addEventListener('click', function () {
            window.scrollTo({ top: 0, behavior: 'smooth' });
        });
    });
</script>
</body>
</html>
