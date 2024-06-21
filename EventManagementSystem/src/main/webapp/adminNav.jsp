<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <a class="navbar-brand" href="#">
            <img src="https://i.postimg.cc/yYh4JkMT/favicon-32x32.png" width="30" height="30" class="d-inline-block align-top" alt="EMS Icon">
            Event Management System
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarNav" aria-controls="navbarNav"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a href="adminIndex" class="nav-link"><i class="fas fa-home fa-sm"></i> Home</a></li>
                <li class="nav-item">
                    <a class="nav-link" href="viewallmanagers"> View Managers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewallcustomers"> View Customers</a>
                </li>
                <li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li> <!-- Add non-breaking space here -->
                <li class="nav-item"><a class="nav-link" href="/"><i class="fas fa-sign-out-alt" style="color: #8e3939;"></i> Logout</a></li>
            </ul>
        </div>
    </nav>
</body>
</html>
