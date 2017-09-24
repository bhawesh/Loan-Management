<%@ page language="java" import="java.sql.*"  %>
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
int bcode=Integer.parseInt(request.getParameter("bcode"));
String bname=request.getParameter("bname");
String baddres=request.getParameter("baddres");
int bcontact=Integer.parseInt(request.getParameter("bcontact"));
String bemail=request.getParameter("bemail");
Connection cn;
Statement stmt;
try
{
    System.out.println("hi");
   Class.forName("oracle.jdbc.driver.OracleDriver");
       System.out.println("1"); 
       cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
       System.out.println("2");
	    stmt=cn.createStatement();
		System.out.println("3");
String query;
query="insert into branch(bcode,bname,baddres,bcontact,bemail) values('"+ bcode +"','"+ bname +"','"+ baddres +"','"+ bcontact +"','"+ bemail +"')";
stmt.executeUpdate(query);
out.println("Record Saved");
}
catch(SQLException e)
{
out.println("SQL ERROR!");
}
/*catch(ClassNotFoundException e)
{
out.println("CLASS NOT FOUND ERROR"+e);
}*/
%>
<h4>Add Another Record <a href="branch.html"> Click here</h4>
</body>
</html>