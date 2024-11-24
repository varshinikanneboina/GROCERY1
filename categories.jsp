<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Grocery Categories</title>
  <style>
    /* General Reset */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      background-color: #f9f9f9;
      color: #333;
    }

    header {
      text-align: center;
      background-color: #4CAF50;
      color: white;
      padding: 1.5em 0;
    }

    header h1 {
      font-size: 2rem;
      margin-bottom: 0.5em;
    }

    header p {
      font-size: 1.2rem;
    }

    /* Categories Grid */
    .categories {
      display: grid;
      grid-template-columns: repeat(3, 1fr); /* 3 items per row */
      gap: 1.5em;
      padding: 2em;
      max-width: 1200px;
      margin: 0 auto;
    }

    .category-card {
      background: white;
      border: 1px solid #ddd;
      border-radius: 8px;
      overflow: hidden;
      text-align: center;
      transition: transform 0.3s, box-shadow 0.3s;
    }

    .category-card img {
      width: 100%;
      height: 200px; /* Adjusted image height */
      object-fit: cover;
    }

    .category-card h2 {
      padding: 1em 0;
      font-size: 1.2rem;
      color: #333;
    }

    .category-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    /* Footer */
    footer {
      text-align: center;
      padding: 1em;
      background: #333;
      color: white;
      margin-top: 2em;
    }
  </style>
</head>
<body>
  <header>
    <h1>Online Grocery Store</h1>
    <p>Select a category to explore products!</p>
  </header>

  <main class="categories">
    <div class="category-card">
     <a href="vegetables.jsp"> <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732184170/fruveg_ek38jc.webp" alt="Farm Fresh"></a>
      <h2>Fruits & Vegetables</h2>
    </div>
    <div class="category-card">
     <a href="kitchen.jsp"> <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732184241/kitchen_hkjxm8.webp" alt="Kitchen Basics"></a>
      <h2>Kitchen Basics</h2>
    </div>
    <div class="category-card">
      <a href="snacks.jsp"><img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732184288/bev_snack_spvnsw.webp" alt="Snacks & Beverages"></a>
      <h2>Snacks & Beverages</h2>
    </div>
    <div class="category-card">
      <a href="bakery.jsp"><img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732184387/bakery_h9lew7.jpg" alt="Bakery items"></a>
      <h2>Bakery Items</h2>
    </div>
    <!-- New Categories: Health & Personal Care, Baby & Kids, Pet Supplies -->
    <div class="category-card">
      <a href="household.jsp"><img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732184545/house_epjwn3.jpg" alt="Household Essentials"></a>
      <h2>Household Essentials</h2>
    </div>
    <div class="category-card">
      <a href="personalcare.jsp"><img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732184597/health_kod6ac.webp" alt="Health and Personal Care"></a>
      <h2>Health & Personal Care</h2>
    </div>
  </main>

  <footer>
    <p>&copy; 2024 Online Grocery Store</p>
  </footer>
</body>

</html>