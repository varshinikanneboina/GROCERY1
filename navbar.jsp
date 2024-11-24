<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body, html {
            width: 100%;
            height: 100%;
            font-family: 'Arial', sans-serif;
        }

        /* Navigation Bar */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 50px;
            background-color: rgba(47, 62, 47, 0.9); /* Semi-transparent green navbar */
            color: #fff;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }
             .navbar .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 1.8rem;
            font-weight: bold;
        }

        .navbar .logo img {
            width: 40px;
            height: 40px;
            border-radius: 50%; /* Circular logo image */
        }
        

        /* Navigation Links */
        .navbar ul {
            list-style: none;
            display: flex;
            gap: 25px;
        }

        .navbar ul li {
            display: inline;
        }

        .navbar ul li a {
            text-decoration: none;
            color: #fff;
            font-size: 1rem;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .navbar ul li a:hover {
            color: #468750; /* Highlight effect on hover */
        }

        /* Buttons */
        .navbar .buttons {
            display: flex;
            gap: 15px;
        }

        .navbar .buttons a {
            text-decoration: none;
            color: #fff;
            background-color: #5dc672;
            padding: 8px 20px;
            border-radius: 20px;
            font-weight: bold;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .navbar .buttons a:hover {
            background-color: #fff;
            color: #2f3e2f;
        }

        /* Full Page Background Image */
        .image-full-page {
            background-image: url('https://res.cloudinary.com/dwloxkgqa/image/upload/v1732027718/front_converted_jpnk1j.png'); /* Replace 'front.jpeg' with your image path */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh; /* Full viewport height */
            width: 100vw; /* Full viewport width */
            position: relative;
            z-index: -1;
        }
        .hero {
    position: absolute;
    top: 50%;
    left: 10%; /* Adjust this value to control how far left you want it */
    transform: translate(0, -50%); /* Remove the horizontal centering */
    text-align: left; /* Align the text to the left */
    color: #fff;
    padding-left: 30px;
    border-radius: 10px;
}
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <div class="navbar">
        <!-- Logo Section -->
        <div class="logo">
            <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732018321/logo_cfvl6x.png" alt="Logo"> <!-- Replace 'logo.png' with your actual logo path -->
            Grocery
        </div>

        <!-- Navigation Links -->
        <ul>
            <li><a href="signin.jsp">Sign in</a></li>
            <li><a href="categories.jsp">Categories</a></li>
             <li><a href="cart1.jsp">Cart</a></li>
            <li><a href="aboutus.jsp">About Us</a></li>
        </ul>

        <!-- Buttons Section -->
        <div class="buttons">
            <a href="signup.jsp">Sign Up</a>
        </div>
    </div>
</body>

</html>