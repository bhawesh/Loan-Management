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
String id1=(request.getParameter("eid"));
int eid=Integer.parseInt(id1);
String ename=request.getParameter("ename");
int bcode=Integer.parseInt(request.getParameter("bcode"));
int esalary=Integer.parseInt(request.getParameter("esalary"));
String epost=request.getParameter("epost");
String eaddress=request.getParameter("eaddress");

int x;

Connection cn;
PreparedStatement psmt;


    System.out.println("hi");
   Class.forName("oracle.jdbc.OracleDriver");
       System.out.println("1"); 
       cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
       System.out.println("2");
psmt=cn.prepareStatement("update employee set ename=?,bcode=?,esalary=?,epost=?,eaddress=? where eid=?");
psmt.setString(1,ename);
psmt.setInt(2,bcode);
psmt.setInt(3,esalary);
psmt.setString(4,epost);
psmt.setString(5,eaddress);
psmt.setInt(6,eid);
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
Go Back<a href="home.jsp">Click here</a>
</center>
</body>
</html>