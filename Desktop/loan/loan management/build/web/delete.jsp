<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*;" %>
<html>
<title>Deleted</title>
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
String id = request.getParameter("id");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int cust_id= Integer.parseInt(id);
try
{
    System.out.println("hi");
   Class.forName("oracle.jdbc.OracleDriver");
       System.out.println("1"); 
       con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
       System.out.println("2");
String sql = "DELETE FROM customer WHERE cust_id="+cust_id;
ps = con.prepareStatement(sql);
int i = ps.executeUpdate();
if(i > 0)
{
out.println("Your data deleted succesfully");

}
else
out.println("please try to insert the data");
}
catch(SQLException e)
{
out.println("SQL Error.!! Or The Data Used to another Record So Kindly Request to Delete The Child Record Then Do it....");
}
}
%>
</center>
</body>
</html>
