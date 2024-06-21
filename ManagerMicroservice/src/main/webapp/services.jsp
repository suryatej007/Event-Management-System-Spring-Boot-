<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <link rel="website icon" type="png" href="https://i.postimg.cc/yYh4JkMT/favicon-32x32.png">
  <title>Services</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
   </head>
</head>
<style>
    
    /* ==========================Font========================== */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap');

@font-face {
  font-family: 'robotoregular';
  src: url(../fonts/roboto-regular-webfont.woff) format('woff');
  font-weight: normal;
  font-style: normal;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", "robotoregular", sans-serif;
}

body {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}

.container {
  position: relative;
  width: 1150px;
  padding: 20px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
}

.container .card {
  position: relative;
  width: 300px;
  height: 420px;
  background-color: #fff;
  margin: 20px;
  border-radius: 20px;
  overflow: hidden;
  box-shadow: 0 15px 25px rgba(0, 0, 0, .2);
  transition: .5s ease-in-out;
}

.container:hover .card {
  filter: blur(20px);
  transform: scale(.9);
  opacity: .5;
}

.container .card:hover {
  filter: blur(0);
  transform: scale(1);
  opacity: 1;
}

.container .card:hover .circle {
  clip-path: circle(600px);
}

.container .card:hover .content p {
  color: #fff;
}

.container .card:hover .content a {
  box-shadow: 1px 1px 2px rgba(0, 0, 0, .2),
              -1px -1px 2px rgba(255, 255, 255, .4);
}

.container .card .content a:active {
  box-shadow: inset 1px 1px 1px rgba(0, 0, 0, .1),
              inset 5px 5px 5px rgba(0, 0, 0, .04),
              inset -5px -5px 5px rgba(255, 255, 255, .07),
              inset -1px -1px 2px rgba(255, 255, 255, .4);
}

.container .card .circle {
  position: absolute;
  width: 100%;
  height: 100%;
  background: #000;
  clip-path: circle(155px at center 0);
  text-align: center;
  transition: 1s ease-in-out;
}

.container .card h2 {
  color: #fff;
  font-size: 1.4em;
  padding: 30px 0;
}

.container .card .content {
  position: absolute;
  bottom: 10px;
  padding: 20px;
  text-align: center;
}

.container .card .content p {
  color: #666;
  transition: .5s ease-in-out;
}

.container .card .content a {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  background: #000;
  color: #fff;
  border-radius: 40px;
  text-decoration: none;
  margin-top: 20px;
  transition: .8s ease-in-out;
}
.back-button {
    position: absolute;
    top: 20px;
    left: 20px;
    color: #fff;
    text-decoration: none;
    font-size: 16px;
 }

.container .card:nth-child(1) .circle,
.container .card:nth-child(1) .content a {
  background: #000000;
}

.container .card:nth-child(2) .circle,
.container .card:nth-child(2) .content a {
  background:  #000000;
}

.container .card:nth-child(3) .circle,
.container .card:nth-child(3) .content a {
  background: #000000;
}

@keyframes colorChange {
  0% {
    color: #fff;
  }

  50% {
    color: #b1b493;
  }

  80% {
    color: #4f8a8b;
  }

  100% {
    color: #fff;
  }
}

/* =======================Responsive Breakpoint ========================== */

@media only screen and (max-width: 992px) {
  /* Add responsive styles for max-width 992px */
}

@media only screen and (max-width: 768px) {
  /* Add responsive styles for max-width 768px */
}
</style>
<body>
<%@ include file="navbar.jsp" %>
<div class="container">
    <div class="card">
        <div class="circle">
            <h2>Event Planning and Coordination</h2>
        </div>
        <div class="content">
            <p>This involves creating a comprehensive plan for the event, including setting goals, determining the event's format, selecting the venue, managing the budget, scheduling activities.</p>
        </div>
    </div>
    <div class="card">
        <div class="circle">
            <h2>Event Production and Execution</h2>
        </div>
        <div class="content">
            <p> On the day of the event, the focus shifts to transforming the plans into reality. This includes managing the setup of the venue, arranging decorations, coordinating technical aspects.</p>
        </div>
    </div>
    <div class="card">
        <div class="circle">
            <h2>Event Marketing and Promotion</h2>
        </div>
        <div class="content">
            <p>To ensure a successful turnout and maximize the impact of an event, event managers often offer marketing and promotion services.</p>
        </div>
    </div>
</div>
<!-- partial -->
</body>
</html>
