<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Events</title>
    <!-- Your existing head content -->

    <!-- Bootstrap and Font Awesome -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

        <style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f8f9fa;
        color: #343a40;
        margin: 0;
        padding: 0;
    }

    .card-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        margin: 20px;
        gap: 20px;
    }

    .card {
        width: 300px;
        margin: 20px;
        padding: 15px;
        background: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s, box-shadow 0.3s;
        cursor: pointer;
        
    }

    .card:hover {
        transform: scale(1.05);
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    .card img {
        width: 100%;
        height: 150px;
        object-fit: cover;
        border-radius: 8px;
    }

    .card h3 {
        margin-top: 10px;
        font-size: 1.5em;
        color: #343a40; /* Text color for card title */
    }

    .card p {
        margin-top: 5px;
        color: #868e96; /* Text color for card details */
    }

    .card-description {
        height: 100px;
        overflow: hidden;
        color: #495057; /* Text color for card description */
    }

  /* Center the pagination container */
.pagination-container {
    text-align: center;
    display: flex;
    justify-content: center;
}


    .pagination li {
        display: inline;
        margin: 5px;
        cursor: pointer;
        padding: 5px 10px;
        background-color: black;
        color: #fff;
        border-radius: 5px;
        font-weight: bold;
    }

    .pagination .current {
        background-color: #0056b3;
        border-radius: 5px;
    }

    .pagination a {
        border-radius: 5px;
    }

    .pagination a.active {
        border-radius: 5px;
    }
</style>
</head>
<body>
    <%@ include file="userNav.jsp" %>
    <br><br>

    <!-- Loop through events and create cards -->
    <div class="card-container">
        <c:forEach items="${book}" var="b">
            <div class="card">
                <img src="${b.event_id.ephoto}" alt="Event Photo">
                <h3>${b.event_id.ename}</h3>
                <p><strong>Category:</strong> ${b.event_id.ecategory}</p>
                <p><strong>Date:</strong> ${b.event_id.edate}</p>
                <p><strong>Location:</strong> ${b.event_id.elocation}</p>
                <div class="card-description">
                    <p>${b.event_id.edesc}</p>
                </div>
            </div>
        </c:forEach>
        
    </div>

    <!-- Pagination container with page numbers -->
    <div class="pagination-container">
        <ul class="pagination" id="pagination">
            <!-- Page numbers will be dynamically added here -->
        </ul>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>

    <script>
    $(document).ready(function () {
        // Number of items to display per page
        var itemsPerPage = 3;

        // Get the total number of items
        var totalItems = $(".card-container .card").length;

        // Calculate the number of pages needed
        var totalPages = Math.ceil(totalItems / itemsPerPage);

        // Initialize the current page
        var currentPage = 1;

        // Function to create page numbers
        function createPageNumbers() {
            var pagination = $("#pagination");
            pagination.empty();

            for (var i = 1; i <= totalPages; i++) {
                var pageLink = $("<li><a href='#' class='page-number'>" + i + "</a></li>");
                pagination.append(pageLink);
            }

            $(".page-number").on("click", function () {
                currentPage = parseInt($(this).text());
                showPage(currentPage);
            });
        }

        createPageNumbers();

        // Function to show items for the given page
        function showPage(page) {
            $(".card-container .card").hide();

            var startIndex = (page - 1) * itemsPerPage;
            var endIndex = startIndex + itemsPerPage;

            $(".card-container .card").slice(startIndex, endIndex).show();
        }

        // Call showPage to display the first page initially
        showPage(currentPage);
    });
</script>

</body>
</html>
