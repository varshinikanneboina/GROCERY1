<%@page import="project.connectionprovider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<style>
h3 {
    color: yellow;
    text-align: center;
}
</style>
</head>
<body>
<div style="color:white; text-align:center; font-size:30px;">My Cart
<%
String msg = request.getParameter("msg");
if ("notPossible".equals(msg)) { %>
<h3 class="alert">There is only one quantity! So click on remove!</h3>
<% } else if ("inc".equals(msg)) { %>
<h3 class="alert">Quantity increased successfully</h3>
<% } else if ("dec".equals(msg)) { %>
<h3 class="alert">Quantity decreased successfully</h3>
<% } else if ("removed".equals(msg)) { %>
<h3 class="alert">Product successfully removed!</h3>
<% } %>

<table>
<thead>
<%
String email = request.getParameter("email");
int total = 0;
int sno = 0;

// Declare resources outside the try block
Connection con = null;
Statement st = null;
ResultSet rs1 = null;
ResultSet rs = null;

try {
    if (email != null) {
        // Initialize the connection and statement
        con = connectionprovider.getCon();
        st = con.createStatement();
        
        // Get total
        rs1 = st.executeQuery("select sum(total) from cart where email='" + email + "' and address is NULL");
        if (rs1.next()) {
            total = rs1.getInt(1);
        }
    } else {
        out.println("Error: email is required");
    }
%>
    <tr>
        <th scope="col" style="background-color:yellow;">Total:<i class="fa fa-inr"></i><%= total %></th>
        <% if (total > 0) { %>
            <th scope="col"><a href="">Proceed to order</a></th>
        <% } %>
    </tr>
</thead>
<thead>
    <tr>
        <th scope="col">S.No</th>
        <th scope="col">Product Name</th>
        <th scope="col">Category</th>
        <th scope="col"><i class="fa fa-inr"></i>Price</th>
        <th scope="col">Sub Total</th>
        <th scope="col">Remove</th>
    </tr>
</thead>
<tbody>
<%
    if (email != null) {
        rs = st.executeQuery("select * from product inner join cart on product.id=cart.product_id and cart.email='" + email + "' and cart.address is NULL");
        while (rs.next()) {
            sno++;
%>
    <tr>
        <td><%= sno %></td>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><i class="fa fa-inr"></i><%= rs.getString(4) %></td>
        <td>
            <a href="incQuantityAction.jsp?id=<%= rs.getString(1) %>&quantity=inc"><i class="fa fa-plus-circle"></i></a>
            <%= rs.getString(8) %>
            <a href="incQuantityAction.jsp?id=<%= rs.getString(1) %>&quantity=dec"><i class="fa fa-minus-circle"></i></a>
        </td>
        <td><i class="fa fa-inr"></i><%= rs.getString(10) %></td>
        <td><a href="removefromcart.jsp?id=<%= rs.getString(1) %>">Remove <i class="fa fa-trash-alt"></i></a></td>
    </tr>
<%
        }
    }
} catch (Exception e) {
    out.println("Error: " + e.getMessage());
} finally {
    // Cleanup resources
    try {
        if (rs != null) rs.close();
        if (rs1 != null) rs1.close();
        if (st != null) st.close();
        if (con != null) con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
}
%>
</tbody>				
</table>
</div>
</body>
</html>