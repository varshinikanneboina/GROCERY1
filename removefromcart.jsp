<%@page import="project.connectionprovider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
try{
Connection con=connectionprovider.getCon();
Statement st=con.createStatement();
st.executeUpdate("delete from cart where email='"+email+"' and product_id='"+id+"' and address is NULL");
response.sendRedirect("Cart.jsp?msg=removed");
}
catch(Exception e){
	System.out.println(e);
}

%>