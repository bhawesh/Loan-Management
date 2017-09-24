<%@ page language="java" import="java.sql.*"  %>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<html>
<body bgcolor="#C0DFFD">
<table width="100%" height="100">
<tr bgcolor="#3366CC">
<td height="65" colspan="3" rowspan="3" id="logo" nowrap="nowrap"> <center>Well come TO National Bank</center></td>

</tr>
<tr></tr>
<tr bgcolor="">
</tr>
<tr bgcolor="#CCFF66">
<td width="100%" height="75%"><center>Enter Required Details</center></td>
</tr>
</table>
<center>

<%
try
{
String id1=(request.getParameter("cust_id"));
int cust_id=Integer.parseInt(id1);
String cust_name=request.getParameter("cust_name");
String father_name=request.getParameter("father_name");
String mother_name=request.getParameter("mother_name");
int age=Integer.parseInt(request.getParameter("age"));
String email_id=request.getParameter("email_id");
int gauranteed_id=Integer.parseInt(request.getParameter("gauranteed_id"));
String cust_address=request.getParameter("cust_address");
String contact=request.getParameter("contact");
String cust_gender=request.getParameter("cust_gender");
String photo=request.getParameter("photo");
String sign=request.getParameter("sign");
int x;

Connection cn;
PreparedStatement psmt;


    System.out.println("hi");
   Class.forName("oracle.jdbc.OracleDriver");
       System.out.println("1"); 
       cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
       System.out.println("2");
psmt=cn.prepareStatement("update customer set cust_name=?,father_name=?,mother_name=?,age=?,email_id=?,gauranteed_id=?,cust_address=?,contact=?,cust_gender=? where cust_id=?");
psmt.setString(1,cust_name);
psmt.setString(2,father_name);
psmt.setString(3,mother_name);
psmt.setInt(4,age);
psmt.setString(5,email_id);
psmt.setInt(6,gauranteed_id);
psmt.setString(7,cust_address);
psmt.setString(8,contact);
psmt.setString(9,cust_gender);
psmt.setInt(10,cust_id);
x=psmt.executeUpdate();
if(x>0)
{
out.println("Data successfully updated into ur database");
}
	
}
catch(SQLException e)
{
out.println("SQL ERROR!");
}
catch(ClassNotFoundException e)
{
out.println("CLASS NOT FOUND ERROR"+e);
}
%>
<pre>

</pre>
Go Back<a href="cust_search.html">Click here</a>
</center>
</body>
</html>