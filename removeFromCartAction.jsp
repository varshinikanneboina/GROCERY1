<%@page import="project.connectionprovider"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
    String productId = request.getParameter("id");
    String email = (String) session.getAttribute("email");  // Assuming email is stored in session

    if (email != null && productId != null) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = connectionprovider.getCon();
            
            // Remove the product from the cart
            String deleteQuery = "DELETE FROM cart WHERE product_id = ? AND email = ?";
            ps = con.prepareStatement(deleteQuery);
            ps.setString(1, productId);
            ps.setString(2, email);
            ps.executeUpdate();

            // Redirect to cart with success message
            response.sendRedirect("cart1.jsp?msg=removed");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
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
