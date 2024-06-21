<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="website icon" type="png" href="https://i.postimg.cc/yYh4JkMT/favicon-32x32.png">
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <title>EMS</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="#">Event Management System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarNav" aria-controls="navbarNav"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a href="userIndex" class="nav-link"><i class="fa-sharp fa-solid fa-house fa-sm"></i> Home</a></li>
                <li class="nav-item"><a class="nav-link" href="userEvents"><i class="fa-solid fa-calendar-days fa-sm"></i> View Events</a></li>
                <!-- <li class="nav-item"><a class="nav-link" href=""><i class="fa-solid fa-location-dot fa-sm"></i> View Venues</a></li> -->
                <li class="nav-item"><a class="nav-link" href="eventsregistered"><i class="fas fa-edit "></i>Bookings</a></li>
                <li class="nav-item"><a href="userProfile" class="nav-link"><i class="fa-solid fa-user fa-sm"></i> Profile</a></li>
                <li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li> <!-- Add non-breaking space here -->
                <li class="nav-item"><a class="nav-link" href="/"><i class="fa-solid fa-right-from-bracket" style="color: #8e3939;"></i>Logout</a></li>
            </ul>
        </div>
    </nav>
</body>
</html>
