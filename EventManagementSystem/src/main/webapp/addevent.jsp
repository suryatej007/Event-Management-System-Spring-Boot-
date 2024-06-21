<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add Event Page</title>
      <link rel="website icon" type="png" href="https://i.postimg.cc/yYh4JkMT/favicon-32x32.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<style>
        body {
  width: 500px;
  margin: 0 auto;
  padding: 50px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}

div.elem-group {
  margin: 20px 0;
}

div.elem-group.inlined {
  width: 49%;
  display: inline-block;
  margin-left: 1%;
}

label {
  display: block;
  font-family: 'Nanum Gothic';
  padding-bottom: 10px;
  font-size: 1.25em;
}

input, select, textarea {
  border-radius: 2px;
  border: 2px solid #000000;
  box-sizing: border-box;
  font-size: 1.25em;
  font-family: 'Nanum Gothic';
  width: 100%;
  padding: 10px;
}

div.elem-group.inlined input {
  width: 95%;
  display: inline-block;
}

textarea {
  height: 250px;
}

hr {
  border: 1px dotted #ccc;
}

button[type="submit"] {
  display: block;
  width: 100%;
  height: 50px;
  background-color: #ffcc00;
  border: none;
  border-radius: 8px;
  font-size: 1.2em;
  font-weight: bold;
  color: #333;
  cursor: pointer;
}

button[type="submit"]:hover {
  background-color: #ffdb4d;
}
 form {
    width: 500px;
    margin: 40 auto;
    padding: 40px;
    background: rgba(255, 255, 255, 0.95);
    border-radius: 20px;
    box-shadow: 10 20 600px rgba(0, 0, 0, 0.1);
  }

  h2 {
    font-size: 24px;
    margin-bottom: 20px;
  }

  label {
    font-size: 18px;
    margin-bottom: 5px;
  }

  input[type="text"],
  input[type="date"],
  textarea {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 8px;
    background: #f2f2f2;
    font-size: 16px;
    margin-bottom: 15px;
  }

  textarea {
    height: 40px;
  }

  hr {
    border: none;
    border-top: 1px solid #ddd;
    margin: 20px 0;
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
    </style>
<title>Booking Form</title>
</head>
<body>
  <%@ include file="managerNav.jsp" %>
  <br><br>
<form action="insertevent" method="POST">
    <center><h2>ADD EVENTS</h2></center>

    <div class="elem-group">
        <label for="event-name">Event Name</label>
        <input type="text" name="eventname" placeholder="Enter event name" required>
    </div>

    <div class="elem-group">
        <label for="event-category">Event Category</label>
        <select name="eventcategory" required>
            <option value="" disabled selected>Select category</option>
            <option value="">Select</option>
            <option value="technical">Technical</option>
            <option value="fest">Fest</option>
            <option value="music">Music</option>
            <option value="parties">Parties</option>
        </select>
    </div>

    <div class="elem-group">
        <label for="event-cost">Event Cost</label>
        <input type="text" name="eventcost" placeholder="Enter event cost" required>
    </div>

    <div class="elem-group">
        <label for="event-date">Event Date</label>
        <input type="date" name="eventdate" required>
    </div>

    <div class="elem-group">
        <label for="event-location">Event Location</label>
        <input type="text" name="eventlocation" placeholder="Enter event location" required>
    </div>

    <div class="elem-group">
        <label for="event-photo">Event Photo</label>
        <input type="text" name="eventphoto" placeholder="Enter event phtoto link">
    </div>

    <div class="elem-group">
        <label for="event-description">Event Description</label>
        <textarea name="eventdescription" placeholder="Enter event description" required></textarea>
    </div>

    <h1 align="center"><button type="submit">Add</button></h1>
</form>
</body>
</html>
