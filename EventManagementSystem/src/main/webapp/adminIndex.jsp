<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<link rel="website icon" type="png"
  href="https://i.postimg.cc/yYh4JkMT/favicon-32x32.png">
<title>EMS</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel='stylesheet'
  href='https://fonts.googleapis.com/css?family=Squada+One'>
<link rel='stylesheet'
  href='https://fonts.googleapis.com/css?family=Montserrat:500,600'>
<head>
<meta charset="utf-8">
<meta name="viewport"
  content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="css/style2.css">
<style>
.card {
  width: 190px;
  height: 254px;
  background-image: linear-gradient(163deg, #00ff75 0%, #3700ff 100%);
  border-radius: 20px;
  transition: all 0.3s;
}

.card2 {
  width: 190px;
  height: 254px;
  background-color: #413543;
  border-radius: 20px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  transition: all 0.2s;
}

h3 {
  color: white; /* Add this line to set the <h3> element font color to white */
}

.card2 p#anotherStatCount {
  font-size: 24px;
  color: white; /* Add this line to set the font color to white */
}

.card2:hover {
  transform: scale(0.98);
  border-radius: 20px;
}

.card:hover {
  box-shadow: 0px 0px 30px 1px rgba(0, 255, 117, 0.30);
}

  .centered-cards {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 29vh;
  }
  
  .card-container {
    margin: 0 20px; /* Adjust the margin value to control the space between cards */
  }
  
</style>
<body>
  <%@ include file="adminNav.jsp"%>
  <p>Welcome ADMIN</p>
  <h1>Event Management System</h1>
  <p>Admin here can add the organizers and see customers available</p>
  <br>
<div class="centered-cards">
  <div class="card-container">
    <div class="card">
      <div class="card2">
        <h3>Total Managers</h3>
        <p id="anotherStatCount">${mcount}</p>
      </div>
    </div>
  </div>
  <div class="card-container">
    <div class="card">
      <div class="card2">
        <h3>Total Customers</h3>
        <p id="anotherStatCount">${ccount}</p>
      </div>
    </div>
  </div>
</div>
</body>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
  src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script
  src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</html>