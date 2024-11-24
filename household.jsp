<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
      gap: 1.2em;
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
      padding: 0.8em;
      height: 350px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }

    .product-card img {
      width: 100%;
      height: 150px;
      object-fit: cover;
      margin-bottom: 1em;
    }

    .product-card h2 {
      font-size: 1rem;
      color: #333;
      margin-bottom: 0.5em;
    }

    .product-card p {
      font-size: 0.9rem;
      color: #555;
      margin-bottom: 1em;
    }

    .product-card .price {
      font-size: 1.2rem;
      color: #4CAF50;
      margin-bottom: 1em;
    }

    .product-card button {
      padding: 0.6em 1em;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 5px;
      font-size: 0.9rem;
      cursor: pointer;
      transition: background-color 0.3s;
      margin-top: auto;
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
    <h1>Household Essentials</h1>
    <p>Essentials that bring comfort, convenience, and care to your home</p>
  </header>

  <main class="products">
    <!-- Product Cards -->
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732188179/clean_uyns8q.jpg" alt="Cleaning Items">
      <h2>Cleaning Items</h2>
      <div class="price">₹499</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732188210/cooking_w8ak1t.jpg" alt="Cooking Tools">
      <h2>Cooking Tools</h2>
      <div class="price">₹399</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732188293/laundry_rvzgjo.webp" alt="Laundry Items">
      <h2>Laundry Items</h2>
      <div class="price">₹199</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732188329/furniture_fvglxd.webp" alt="Furniture and Furnishings">
      <h2>Furniture and Furnishings</h2>
      <div class="price">₹249</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732188374/lighting_iviafu.jpg" alt="Lighting">
      <h2>Lighting</h2>
      <div class="price">₹799</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732188411/storage_is3xij.jpg" alt="Storage Supplies ">
      <h2>Storage Supplies </h2>
      <div class="price">₹149</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732188455/bathroom_cjgxdz.jpg" alt="Bathroom Needs">
      <h2>Bathroom Needs</h2>
      <div class="price">₹299</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732188516/emergency_vfkqmw.jpg" alt="Emergency Items">
      <h2>Emergency Items</h2>
      <div class="price">₹249</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732188557/eating_fbukn8.jpg" alt="Eating Essentials">
      <h2>Eating Essentials</h2>
      <div class="price">₹179</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732188596/decor_rq84yg.jpg" alt="Decor and Ambience">
      <h2>Decor and Ambience</h2>
      <div class="price">₹599</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732188643/tools_t7fjc1.jpg" alt="Miscellaneous Tools">
      <h2>Miscellaneous Tools</h2>
      <div class="price">₹129</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732188683/pet_ggmojp.jpg" alt="Pet Supplies">
      <h2>Pet Supplies</h2>
      <div class="price">₹99</div>
      <button>Add to Cart</button>
    </div>
  </main>

  <footer>
    <p>&copy; 2024 Online Grocery Store</p>
  </footer>
</body>
</html>