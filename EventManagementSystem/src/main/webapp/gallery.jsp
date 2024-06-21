<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Gallery</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">

    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #111;
            color: #fff;
            text-align: center;
        }

        .navbar {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 50px;
            background-color: #333;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown button {
            font-size: 20px;
            cursor: pointer;
            color: #fff;
            background-color: #333;
            padding: 10px;
            border: none;
            border-radius: 5px;
            outline: none;
            transition: background-color 0.3s ease-in-out;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #333;
            min-width: 160px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            text-align: left;
        }

        .dropdown-content a {
            color: #fff;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            cursor: pointer;
        }

        .dropdown-content a:hover {
            background-color: #555;
        }

        .gallery {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 60px;
            margin-top: 100px;
            margin-right: 20px;
        }

        .image-container {
            margin: 5px;
            overflow: hidden;
            cursor: pointer;
            position: relative;
            border-radius: 8px;
            max-width: 300px;
        }

        .image-container img {
            width: 100%;
            height: auto;
            border-radius: 8px;
            transition: transform 0.3s ease-in-out;
        }

        .image-container:hover img {
            transform: scale(1.1);
        }

        .overlay {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            border-radius: 8px;
            opacity: 0;
            transition: opacity 0.3s ease-in-out;
        }

        .image-container:hover .overlay {
            opacity: 1;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            padding-top: 60px;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.9);
        }

        .modal-content {
            margin: auto;
            display: block;
            max-width: 80%;
            max-height: 80vh;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            position: relative;
        }

        .close {
            position: absolute;
            top: 65px;
            right: 35px;
            font-size: 30px;
            color: #fff;
            cursor: pointer;
        }

        .close:hover {
            color: #bbb;
        }
    </style>

    <!-- Include navbar.jsp in the head section -->
    <%@ include file="navbar.jsp" %>
</head>
<body>
    <div class="gallery">
        <div class="image-container" data-category="nature" onclick="openModal('https://i.postimg.cc/dQnQP3G0/img1.jpg')">
            <img src="https://i.postimg.cc/dQnQP3G0/img1.jpg" alt="Event Image 1">
            <div class="overlay"></div>
        </div>
        <div class="image-container" data-category="events" onclick="openModal('https://i.postimg.cc/WbH2zyWL/img2.jpg')">
            <img src="https://i.postimg.cc/WbH2zyWL/img2.jpg" alt="Event Image 2">
            <div class="overlay"></div>
        </div>
        <!-- Add more images with data-category attribute -->
        <div class="image-container" data-category="nature" onclick="openModal('https://i.postimg.cc/kgR7byzV/img3.jpg')">
            <img src="https://i.postimg.cc/kgR7byzV/img3.jpg" alt="Event Image 3">
            <div class="overlay"></div>
        </div>
        <div class="image-container" data-category="events" onclick="openModal('https://i.postimg.cc/zfm8SgYx/img4.jpg')">
            <img src="https://i.postimg.cc/zfm8SgYx/img4.jpg" alt="Event Image 4">
            <div class="overlay"></div>
        </div>
        <div class="image-container" data-category="nature" onclick="openModal('https://i.postimg.cc/k4qCLP48/img5.jpg')">
            <img src="https://i.postimg.cc/k4qCLP48/img5.jpg" alt="Event Image 5">
            <div class="overlay"></div>
        </div>
        <div class="image-container" data-category="events" onclick="openModal('https://cdn.calendar.visitsaudi.com/cms-media/assets/Soundstorm_event_c99a0902be.jpg')">
            <img src="https://cdn.calendar.visitsaudi.com/cms-media/assets/Soundstorm_event_c99a0902be.jpg" alt="Event Image 6">
            <div class="overlay"></div>
        </div>
        <div class="image-container" data-category="nature" onclick="openModal('https://res.cloudinary.com/devex/image/fetch/https://lh4.googleusercontent.com/VQyrPPyh-FGdV2BJtlcwDphesnxERD6SLWvGtARygLDVNSsXhFF0kzG_yXvLyiARZbKIG3VYF_CIbF4_B-Wy3Eu7kKhHKKR3pq_2ob2pdZgxt_Wz_uqXjRMrhIBKREQnJo--Ui9b')">
            <img src="https://res.cloudinary.com/devex/image/fetch/https://lh4.googleusercontent.com/VQyrPPyh-FGdV2BJtlcwDphesnxERD6SLWvGtARygLDVNSsXhFF0kzG_yXvLyiARZbKIG3VYF_CIbF4_B-Wy3Eu7kKhHKKR3pq_2ob2pdZgxt_Wz_uqXjRMrhIBKREQnJo--Ui9b" alt="Event Image 7">
            <div class="overlay"></div>
        </div>
        <div class="image-container" data-category="events" onclick="openModal('https://cdn.wizeline.com/uploads/2021/04/design-main-banner-1.png')">
            <img src="https://cdn.wizeline.com/uploads/2021/04/design-main-banner-1.png" alt="Event Image 8">
            <div class="overlay"></div>
        </div>
        <div class="image-container" data-category="events" onclick="openModal('https://www.birthdayorganizers.com/images/birthday-celebration-ideas-for-kids.jpeg')">
            <img src="https://www.birthdayorganizers.com/images/birthday-celebration-ideas-for-kids.jpeg" alt="Event Image 8">
            <div class="overlay"></div>
        </div>
        <div class="image-container" data-category="events" onclick="openModal('https://www.dreamzkraft.com/admin/decorImage/5ba21eb80254a__Wedding%20Stage%20Decoration.jpg')">
            <img src="https://www.dreamzkraft.com/admin/decorImage/5ba21eb80254a__Wedding%20Stage%20Decoration.jpg" alt="Event Image 8">
            <div class="overlay"></div>
        </div>
        <div class="image-container" data-category="events" onclick="openModal('https://jolevents.in/cdn/shop/collections/Wedding_Stage_Decoration_by_JOL_EVENTS_PUNE_29.png?v=1676538849')">
            <img src="https://jolevents.in/cdn/shop/collections/Wedding_Stage_Decoration_by_JOL_EVENTS_PUNE_29.png?v=1676538849" alt="Event Image 8">
            <div class="overlay"></div>
        </div>
        <div class="image-container" data-category="events" onclick="openModal('https://www.partydoctors.co.uk/images/content/case-studies/apres-ski-birthday-5.jpg')">
            <img src="https://www.partydoctors.co.uk/images/content/case-studies/apres-ski-birthday-5.jpg" alt="Event Image 8">
            <div class="overlay"></div>
        </div>
    </div>

    <!-- Modal for larger images -->
    <div id="myModal" class="modal">
        <span class="close" onclick="closeModal()">&times;</span>
        <img class="modal-content" id="modalImage">
    </div>

    <script>
    let isTouchDevice = 'ontouchstart' in document.documentElement;

    function openModal(imageSrc) {
        document.getElementById('myModal').style.display = 'block';
        document.getElementById('modalImage').src = imageSrc;

        if (isTouchDevice) {
            setTimeout(() => {
                closeModal();
            }, 5000); // Auto close after 5 seconds
        }

        // Hide the navbar when the modal is open
        document.querySelector('.navbar').style.display = 'none';
    }

    function closeModal() {
        document.getElementById('myModal').style.display = 'none';

        // Show the navbar when the modal is closed
        document.querySelector('.navbar').style.display = 'flex';
    }
    </script>

</body>
</html>
