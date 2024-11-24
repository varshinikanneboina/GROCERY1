<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bakery</title>
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

    /* Product Grid */
    .products {
      display: grid;
      grid-template-columns: repeat(4, 1fr); /* 4 items per row */
      gap: 1.5em;
      padding: 2em;
      max-width: 1200px;
      margin: 0 auto;
    }

    .product-card {
      background: white;
      border: 1px solid #ddd;
      border-radius: 8px;
      overflow: hidden;
      text-align: center;
      transition: transform 0.3s, box-shadow 0.3s;
      padding: 1em;
      height: 300px; /* Smaller card height */
      display: flex;
      flex-direction: column;
      justify-content: space-between; /* Ensures button stays at the bottom */
    }

    .product-card img {
      width: 100%;
      height: 150px; /* Adjusted image height */
      object-fit: cover;
      margin-bottom: 1em;
    }

    .product-card h2 {
      font-size: 1.2rem; /* Adjusted font size */
      color: #333;
      margin-bottom: 0.5em;
    }

    .product-card .price {
      font-size: 1.1rem; /* Adjusted price font size */
      color: #4CAF50;
      margin-bottom: 1em;
    }

    .product-card button {
      padding: 0.5em 0.8em; /* Smaller button padding */
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 5px;
      font-size: 0.9rem; /* Smaller button text */
      cursor: pointer;
      transition: background-color 0.3s;
      margin-top: auto; /* Pushes button to the bottom */
    }

    .product-card button:hover {
      background-color: #45a049;
    }

    .product-card:hover {
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
    <h1>Bakery Items</h1>
    <p>Freshly baked goods straight from the oven</p>
  </header>

  <main class="products">
    <!-- Bakery Product Cards -->
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732187700/bread_kj8lik.jpg" alt="Fresh Bread">
      <h2>Fresh Bread</h2>
      <div class="price">₹40 / loaf</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732187743/croistant_df3rig.webp" alt="Croissant">
      <h2>Croissant</h2>
      <div class="price">₹80 / piece</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732187771/muffin_ev52ce.jpg" alt="Muffin">
      <h2>Muffin</h2>
      <div class="price">₹60 / piece</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732187810/cupcake_iliqst.jpg" alt="Cupcake">
      <h2>Cupcake</h2>
      <div class="price">₹120 / piece</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732187866/donut_vcgouz.jpg" alt="Donut">
      <h2>Donut</h2>
      <div class="price">₹50 / piece</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732187897/cookies_bis_nvvxvx.jpg" alt="Cookies">
      <h2>Cookies</h2>
      <div class="price">₹70 / pack</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732187924/bagel_k2sdpn.jpg" alt="Bagel">
      <h2>Bagel</h2>
      <div class="price">₹40 / piece</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732187953/brown_bread_eipvys.jpg" alt="Brown Bread">
      <h2>Brown Bread</h2>
      <div class="price">₹45 / loaf</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732187989/cheese_bread_swkjel.jpg" alt="Cheese Bread">
      <h2>Cheese Bread</h2>
      <div class="price">₹120 / loaf</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732188022/icecream_vsthaw.jpg" alt="Icecream">
      <h2>Ice Cream</h2>
      <div class="price">₹80 / piece</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732188048/brownie_orcixq.jpg" alt="Brownie">
      <h2>Brownie</h2>
      <div class="price">₹100 / piece</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732188077/puff_zwzdu3.jpg" alt="Puff Pastry">
      <h2>Puff Pastry</h2>
      <div class="price">₹60 / piece</div>
      <button>Add to Cart</button>
    </div>
  </main>

  <footer>
    <p>&copy; 2024 Bakery Fresh</p>
  </footer>
</body>
</html>