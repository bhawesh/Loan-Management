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
<td width="100%" height="75%"><div align="left"><a href="home.jsp"><font color="red">HOME</font></a></div><center>Enter Required Details</center></td>
</tr>
</table>
<center>
<pre>


</pre>

<%
try
{
int bcode=Integer.parseInt(request.getParameter("bcode"));
int cust_id=Integer.parseInt(request.getParameter("cust_id"));

String ac_type=request.getParameter("ac_type");
int balance=Integer.parseInt(request.getParameter("balance"));

int x;

Connection cn;
PreparedStatement psmt;


    System.out.println("hi");
   Class.forName("oracle.jdbc.OracleDriver");
       System.out.println("1"); 
       cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
       System.out.println("2");
psmt=cn.prepareStatement("insert into account(bcode,cust_id,ac_type,balance) values(?,?,?,?)");
psmt.setInt(1,bcode);
psmt.setInt(2,cust_id);
psmt.setString(3,ac_type);
psmt.setInt(4,balance);
x=psmt.executeUpdate();
if(x>0)
{
out.println("Data successfully inserted into ur database");
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
<p>Go to HOME page </p><a href="home.jsp"><font color="#ff0033"> Click Here</a>
</body>
</html>