<%@ page import ="java.sql.*" %>
<html>
<title></title>
<head></head>
<body bgcolor="#C0DFFD">
<table width="100%" height="100">
<tr bgcolor="#3366CC">
<td height="65" colspan="3" rowspan="3" id="logo" nowrap="nowrap"> <center>Well come TO National Bank</center></td>

</tr>
<tr></tr>
<tr bgcolor="">
</tr>
<tr bgcolor="#CCFF66">
<td width="100%" height="75%"><div align="left"><a href="home.jsp"><font color="red">HOME</font></a></div><center>Enter Required Details</center></td>
</tr>
</table>
<center>
<pre>



</pre>
<%
try
{
    String user_name=request.getParameter("user_name");   
    String pass=request.getParameter("pass");
   Class.forName("oracle.jdbc.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
    Statement st=con.createStatement();
    ResultSet rs;
    rs=st.executeQuery("select *from registration where user_name='" + user_name + "' and pass='" + pass + "'");
    if (rs.next()) {
        session.setAttribute("user_name",user_name);
        //out.println("welcome " + user_name);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("home.jsp");
    } 
else 
{
        out.println("Invalid password <a href='emp_login.html'>try again</a>");
    }
}
catch(SQLException e)
{
out.println("SQL ERROR!");
}
catch(ClassNotFoundException e)
{
out.println("CLASS NOT FOUND ERROR");
}
%>

</body>
</html>
