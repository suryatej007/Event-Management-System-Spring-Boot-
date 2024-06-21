<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<link rel="website icon" type="png"
	href="https://i.postimg.cc/yYh4JkMT/favicon-32x32.png">
<meta charset="utf-8">
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
<style>
body {
	font-family: Arial, sans-serif;
	background: linear-gradient(135deg, #71b7e6, #9b59b6);
	background-size: 300%;
}

table {
	width: 80%;
	margin: 20px auto;
	border-collapse: collapse;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
	animation: fadeIn 1s ease-in-out;
}

th, td {
	padding: 16px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #ddd;
}

button {
	background-color: #ffcc00;
	border: none;
	color: #333;
	padding: 8px 12px;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

button:hover {
	background-color: #ffdb4d;
}

h2 {
	text-align: center;
	color: #fff;
	margin-bottom: 20px;
}

@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}
}
</style>
<title>View Users</title>
</head>
<%@ include file="adminNav.jsp"%>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<center>
		<h2>View the Users</h2>
	</center>
	<table>
		<thead>
			<tr>
				<th>Id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Date of Birth</th>
				<th>Contact Number</th>
				<th>Email</th>
				<th>Gender</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${cdata}" var="c">
				<tr>
					<td>${c.id}</td>
					<td>${c.fname}</td>
					<td>${c.lname}</td>
					<td>${c.dateofbirth}</td>
					<td>${c.contactno}</td>
					<td>${c.email}</td>
					<td>${c.gender}</td>
					<td>
						<button>
							<a href='<c:url value="delete/${c.id}"></c:url>'>Delete</a>
						</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
