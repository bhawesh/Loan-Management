<html>
<body>
<%@ page import="java.sql.*" %>
<%
String cust_id=request.getParameter("cust_id");
String dob=request.getParameter("dob");
Connection cn;
Statement stmt;
ResultSet rs=null;
try
{
    System.out.println("hi");
   Class.forName("oracle.jdbc.OracleDriver");
       System.out.println("1"); 
       cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
stmt=cn.createStatement();
//String query;
rs=stmt.executeQuery("select *from customer where cust_id='" + cust_id + "' and dob='" + dob + "'");
    if (rs.next()) {
        session.setAttribute("cust_id", cust_id);
        //out.println("welcome " + cust_id);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("user_home.jsp");
    }//if(u_name.equals(rs.getString("cust_id")) && u_pass.equals(rs.getString("dob")))
//response.sendRedirect("user_home.html");
else
{%>
<center> <h2> LOGIN FAIL<h2><br>
<a href="user.html">BACK </a>
</center>
<%}
}
catch(ClassNotFoundException e)
{
out.println("Class not found");
}
catch(java.sql.SQLException ex)
{
out.println("SQL Exception"+ex);
}
%>
</body>
</html>