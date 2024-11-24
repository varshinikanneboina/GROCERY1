<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vegetables</title>
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
      height: 350px; /* Smaller card height */
      display: flex;
      flex-direction: column;
      justify-content: space-between; /* Ensures button stays at the bottom */
    }

    .product-card img {
      width: 100%;
      height: 180px; /* Adjusted image height */
      object-fit: cover;
      margin-bottom: 1em;
    }

    .product-card h2 {
      font-size: 1.2rem; /* Adjusted font size */
      color: #333;
      margin-bottom: 0.5em;
    }

    .product-card p {
      font-size: 0.9rem; /* Adjusted font size */
      color: #555;
      margin-bottom: 1em;
      height: 60px; /* Fixed description height */
      overflow: hidden;
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
    <h1>Fruits & Vegetables</h1>
    <p>Explore fresh and healthy fruits and vegetables</p>
  </header>

  <main class="products">
  
    <!-- Product Cards (12 items) -->
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732184674/apple_qx4psl.jpg" alt="Fresh Apples">
      <h2>Fresh Apples</h2>
      <p>Delicious and crunchy apples from local farms.</p>
      <div class="price">₹180 / kg</div>
      <button>Add to Cart</button>
      
    </div>
    <div class="product-card">
   
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732184698/banana_dv3rlh.webp" alt="Fresh Bananas">
      <h2>Fresh Bananas</h2>
      <p>Perfectly ripe bananas for snacking or smoothies.</p>
      <div class="price">₹149 / bunch</div>
      <button>Add to Cart</button>
     
    </div>
    <div class="product-card">
    
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732184735/carrot_wl1fhg.jpg" alt="Fresh Carrots">
      <h2>Fresh Carrots</h2>
      <p>Sweet and crunchy carrots, perfect for salads or snacking.</p>
      <div class="price">₹199 / bunch</div>
      <button>Add to Cart</button>
     
    </div>
    <div class="product-card">
    
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732184776/tomato_ymlwkp.png" alt="Fresh Tomatoes">
      <h2>Fresh Tomatoes</h2>
      <p>Ripe and juicy tomatoes for all your cooking needs.</p>
      <div class="price">₹219 / kg</div>
      <button>Add to Cart</button>
     
    </div>
    <div class="product-card">
   
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732184829/spinach_h8elu0.jpg" alt="Fresh Spinach">
      <h2>Fresh Spinach</h2>
      <p>Fresh and tender spinach leaves for healthy meals.</p>
      <div class="price">₹149 / bunch</div>
      <button>Add to Cart</button>
      
    </div>
    <div class="product-card">
 
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732184864/avacado_ur0qop.webp" alt="Fresh Avocados">
      <h2>Fresh Avocados</h2>
      <p>Perfectly ripe avocados, creamy and rich.</p>
      <div class="price">₹199 / each</div>
      <button>Add to Cart</button>
    </div>

    <!-- Additional 6 Products -->
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732184935/grapes_sp8jyv.jpg" alt="Fresh Grapes">
      <h2>Fresh Grapes</h2>
      <p>Sweet and juicy grapes for snacking or desserts.</p>
      <div class="price">₹399 / kg</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732184985/brocoli_qswkpn.jpg" alt="Fresh Broccoli">
      <h2>Fresh Broccoli</h2>
      <p>Nutritious broccoli perfect for salads or stir-fries.</p>
      <div class="price">₹249 / bunch</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732185036/peppers_dkchju.jpg" alt="Fresh Bell Peppers">
      <h2>Fresh Bell Peppers</h2>
      <p>Crunchy and colorful peppers for your recipes.</p>
      <div class="price">₹249 / kg</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732185078/cucumber_bcdjkk.jpg" alt="Fresh Cucumbers" >
      <h2>Fresh Cucumbers</h2>
      <p>Cool and crisp cucumbers for salads and snacks.</p>
      <div class="price">₹99 / each</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732185126/Lemon_eb4x3t.jpg" alt="Fresh Lemons">
      <h2>Fresh Lemons</h2>
      <p>Tangy and juicy lemons for your beverages and dishes.</p>
      <div class="price">₹119 / each</div>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732185177/strawberry_zmmd6z.jpg" alt="Fresh Strawberries">
      <h2>Fresh Strawberries</h2>
      <p>Sweet and ripe strawberries for desserts or snacking.</p>
      <div class="price">₹349 / kg</div>
      <button>Add to Cart</button>
    </div>
  </main>

  <footer>
    <p>&copy; 2024 Online Grocery Store</p>
  </footer>
</body>
</html>