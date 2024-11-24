<%@page import="project.connectionprovider"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
    // Check if user is logged in
    String email = (String) session.getAttribute("email");
    String productId = request.getParameter("product_id");
    String productQuantityStr = request.getParameter("product_quantity");

    if (email == null) {
        // User not logged in
        response.sendRedirect("signin.jsp");  // Redirect to login page
        return;
    }

    if (productId == null || productQuantityStr == null || productQuantityStr.isEmpty()) {
        // Missing product ID or quantity
        out.println("You need to provide valid product details.");
        return;
    }

    int productQuantity = 0;
    try {
        productQuantity = Integer.parseInt(productQuantityStr);
    } catch (NumberFormatException e) {
        out.println("Invalid quantity!");
        return;
    }

    // Add product to cart
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        con = connectionprovider.getCon();

        // Check if the product is already in the cart for the logged-in user
        String checkQuery = "SELECT * FROM cart WHERE product_id = ? AND email = ? AND address IS NULL";
        ps = con.prepareStatement(checkQuery);
        ps.setString(1, productId);
        ps.setString(2, email);
        rs = ps.executeQuery();

        if (rs.next()) {
            // Product already exists in the cart, update quantity
            int currentQuantity = rs.getInt("product_quantity");
            int newQuantity = currentQuantity + productQuantity;

            // Update the quantity in the cart
            String updateQuery = "UPDATE cart SET product_quantity = ? WHERE product_id = ? AND email = ?";
            ps = con.prepareStatement(updateQuery);
            ps.setInt(1, newQuantity);
            ps.setString(2, productId);
            ps.setString(3, email);
            ps.executeUpdate();

            // Redirect to cart with success message
            response.sendRedirect("cart1.jsp?msg=added");
        } else {
            // Product not found in the cart, insert new product
            String insertQuery = "INSERT INTO cart (product_id, product_quantity, email) VALUES (?, ?, ?)";
            ps = con.prepareStatement(insertQuery);
            ps.setString(1, productId);
            ps.setInt(2, productQuantity);
            ps.setString(3, email);
            ps.executeUpdate();

            // Redirect to cart with success message
            response.sendRedirect("cart1.jsp?msg=added");
        }

    } catch (Exception e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    } finally {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>
