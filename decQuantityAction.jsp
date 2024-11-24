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
        int currentQuantity = 0;

        try {
            con = connectionprovider.getCon();
            
            // Get current quantity from cart
            String query = "SELECT product_quantity FROM cart WHERE product_id = ? AND email = ? AND address IS NULL";
            ps = con.prepareStatement(query);
            ps.setString(1, productId);
            ps.setString(2, email);
            rs = ps.executeQuery();

            if (rs.next()) {
                currentQuantity = rs.getInt("product_quantity");

                // Update the quantity based on "inc" or "dec"
                if ("inc".equals(quantity)) {
                    newQuantity = currentQuantity + 1;
                } else if ("dec".equals(quantity) && currentQuantity > 1) {
                    newQuantity = currentQuantity - 1;
                } else if ("dec".equals(quantity) && currentQuantity == 1) {
                    response.sendRedirect("cart1.jsp?msg=notPossible");
                    return;
                }

                // Update the quantity in the cart
                String updateQuery = "UPDATE cart SET product_quantity = ? WHERE product_id = ? AND email = ?";
                PreparedStatement updatePs = con.prepareStatement(updateQuery);
                updatePs.setInt(1, newQuantity);
                updatePs.setString(2, productId);
                updatePs.setString(3, email);
                updatePs.executeUpdate();
                updatePs.close();

                // Redirect with a success message
                response.sendRedirect("cart1.jsp?msg=" + ("inc".equals(quantity) ? "inc" : "dec"));
            } else {
                response.sendRedirect("cart1.jsp?msg=notFound");
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
