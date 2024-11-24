<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
    }
    .navbar {
        height: 90px;
        background-color: black;
        overflow: hidden;
    }
    .navbar a {
        float: right;
        display: block;
        color: white;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
        text-align: center;
        padding-top: 30px;
    }
    .navbar a:hover {
        background-color: white;
        color: black;
    }
    .nav-logo {
        background-image: url('logo.png');
        background-size: cover;
        height: 100px;
        width: 100px;
    }

    /* About Us Section */
    .about-us {
        background-color: white;
        padding: 60px 20px;
    }

    .about-us .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 15px;
    }

    .about-us h1 {
    	padding-top:40px;
        text-align: center;
        font-size: 36px;
        color: #2c3e50;
        margin-bottom: 30px;
    }

    .about-us p {
        font-size: 18px;
        line-height: 1.8;
        margin-bottom: 30px;
        color: #555;
    }

    .about-us h2 {
        font-size: 28px;
        color: #16a085;
        margin-bottom: 15px;
    }

    .about-us ul {
        padding-left: 20px;
        font-size: 18px;
    }

    .about-us ul li {
        margin-bottom: 10px;
        color: #555;
    }

    /* Styling for the Links */
    a {
        color: #16a085;
        text-decoration: none;
        transition: color 0.3s ease;
    }

    a:hover {
        color: #2c3e50;
    }

    /* Footer Section */
  /* Footer Styles */
footer {
    background-color: #2c3e50;
    color: white;
    padding: 30px 0;
    text-align: center;
}

footer .container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 15px;
}

/* Aligning the Footer Links, Customer Service, and Social Media */
footer p {
    font-size: 14px;
    margin-bottom: 20px;
}

footer .footer-links,
footer .customer-service,
footer .social-media {
    margin: 10px 0;
}

/* List Style for Footer Sections */
footer ul {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
}

footer ul li {
    margin: 0 15px;
    display: inline-block;
}

/* Styling Links */
footer ul li a {
    color: white;
    text-decoration: none;
    font-size: 14px;
    transition: color 0.3s ease;
}

footer ul li a:hover {
    color: #1abc9c;
}

/* Responsive Design for Footer */
@media (max-width: 768px) {
    footer ul {
        flex-direction: column;
        align-items: center;
    }
    footer ul li {
        margin-bottom: 10px;
    }
}


</style>
</head>
<body>
<%@include file="includes/navbar.jsp" %>
<!-- About Us Section -->
<section class="about-us">
    <div class="container">
        <h1>About Us</h1>
        <p>Welcome to <strong>GRAB N GO-Online Grocery Store</strong>, where convenience meets quality. Our mission is to provide fresh and high-quality groceries delivered directly to your doorstep, saving you time and effort.</p>
                    
        <h2>Our Values</h2>
        <ul>
            <li><strong>Freshness</strong> - We believe in delivering only the freshest products to our customers.</li>
            <li><strong>Convenience</strong> - Enjoy shopping for all your grocery needs from the comfort of your home.</li>
            <li><strong>Customer Satisfaction</strong> - Your satisfaction is our priority. We strive to make every shopping experience pleasant and hassle-free.</li>
            <li><strong>Sustainability</strong> - We are committed to supporting sustainable practices, from sourcing locally to eco-friendly packaging.</li>
        </ul>
        
        <h2>Why Choose Us?</h2>
        <p>We offer a wide range of grocery items, including fresh fruits and vegetables, dairy, meats, pantry staples, snacks, and more. With same-day delivery options and a simple online shopping experience, we aim to make grocery shopping as convenient as possible.</p>

        <h2>Customer Service</h2>
        <p>If you have any questions or concerns, our customer service team is here to help. You can reach us at <a href="mailto:support@grabngo.com">support@grabngo.com</a> or call us at (123) 456-7890.</p>
    </div>
</section>
<!-- Footer Section -->
<footer>
    <div class="container">
        <!-- Main Footer Content -->
        <p>&copy; 2024 GRAB N GO-Online Store. All rights reserved.</p>

        <!-- Quick Links Section -->
        <div class="footer-links">
            <ul>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="#">Terms of Service</a></li>
                <li><a href="#">Return & Refund Policy</a></li>
                <li><a href="#">FAQ</a></li>
            </ul>
        </div>

        <!-- Customer Service Section -->
        <div class="customer-service">
            <ul>
                <li><a href="mailto:support@grabngo.com">Contact Us</a></li>
                <li><a href="#">Shipping Information</a></li>
                <li><a href="#">Track Your Order</a></li>
                <li><a href="#">Returns</a></li>
                <li><a href="#">Order Support</a></li>
            </ul>
        </div>

        <!-- Social Media Section -->
        <div class="social-media">
            <ul>
                <li><a href="https://www.facebook.com" target="_blank">Facebook</a></li>
                <li><a href="https://twitter.com" target="_blank">Twitter</a></li>
                <li><a href="https://www.instagram.com" target="_blank">Instagram</a></li>
                <li><a href="https://www.linkedin.com" target="_blank">LinkedIn</a></li>
            </ul>
        </div>
    </div>
</footer>


</body>
</html>