<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="website icon" type="png" href="https://i.postimg.cc/yYh4JkMT/favicon-32x32.png">
    <meta charset="UTF-8">
    <title>Message</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .alert-container {
            text-align: center;
        }

        .center-button {
            margin-top: 20px; 
        }
    </style>
</head>
<body>
    <div class="alert-container">
        <div class="alert alert-primary" role="alert">
            <font color="red">${message}</font>
        </div>
        <div class="center-button">
            <a href="signup" class="btn btn-primary">Back</a>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
