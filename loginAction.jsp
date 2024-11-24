<%@page import="project.connectionprovider"%>
<%@page import="java.sql.*"%>
<%
session = request.getSession();
String email = request.getParameter("email");
String password = request.getParameter("password");
if ("admin@gamil.com".equals(email) && "admin".equals(password)) {
    session.setAttribute("email", email);
    response.sendRedirect("admin/adminHome.jsp");
    return;
} else {
    int z = 0;
    try {
        Connection con = connectionprovider.getCon();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE email = ? AND password = ?");
        ps.setString(1, email);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            z = 1;
            session.setAttribute("email", email);
            response.sendRedirect("categories.jsp");
            return;
        }
        if (z == 0) {
            response.sendRedirect("signin.jsp?msg=notexist");
            return;
        }
    } catch (Exception e) {
        response.sendRedirect("signin.jsp?msg=invalid");
        return;
    }
}
%>

