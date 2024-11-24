<%@page import="project.connectionprovider"%>
<%@page import="java.sql.*"%>
<%
    String productId = request.getParameter("id");
    String quantity = request.getParameter("quantity");
    String email = (String) session.getAttribute("email");  // Assuming email is stored in session

    if (email != null && productId != null && quantity != null) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int newQuantity = 0;

        try {
            con = connectionprovider.getCon();

            // Get current quantity from cart
            String query = "SELECT product_quantity FROM cart WHERE product_id = ? AND email = ? AND address IS NULL";
            ps = con.prepareStatement(query);
            ps.setString(1, productId);
            ps.setString(2, email);
            rs = ps.executeQuery();

            if (rs.next()) {  // Ensure a row exists before accessing data
                int currentQuantity = rs.getInt("product_quantity");

                // Determine new quantity based on whether we are increasing or decreasing
                if ("inc".equals(quantity)) {
                    newQuantity = currentQuantity + 1;
                } else if ("dec".equals(quantity) && currentQuantity > 1) {
                    newQuantity = currentQuantity - 1;
                } else if ("dec".equals(quantity) && currentQuantity == 1) {
                    // Redirect if decrement is not possible
                    response.sendRedirect("cart1.jsp?msg=notPossible");
                    return;
                }

                // Update quantity in cart
                String updateQuery = "UPDATE cart SET product_quantity = ? WHERE product_id = ? AND email = ?";
                ps = con.prepareStatement(updateQuery);
                ps.setInt(1, newQuantity);
                ps.setString(2, productId);
                ps.setString(3, email);
                ps.executeUpdate();

                // Redirect to cart with success message
                response.sendRedirect("cart1.jsp?msg=" + (newQuantity > currentQuantity ? "inc" : "dec"));
            } else {
                out.println("Product not found in the cart.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    } else {
        out.println("Invalid request or session expired.");
    }
%>
