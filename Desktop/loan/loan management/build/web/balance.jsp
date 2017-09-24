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
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<%
String ac_no=request.getParameter("ac_no");
String balance="";
ResultSet rs=null;
Connection cn;
Statement stmt;
try
{
      Class.forName("oracle.jdbc.OracleDriver");
       cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
       System.out.println("2");
	    stmt=cn.createStatement();
		String query;
query="select ac_no,balance from account where ac_no="+ac_no;
rs=stmt.executeQuery(query);
out.print("Balance Details :");
rs.next();%>
<table> <tr>
  <marquee><h3><font color="red">Balance Details</font></h3></marquee>
</tr>

<table border="0">
<tr>
<td><font color="red"><b>Account Number :</font></td><pre></pre>
<td><%out.print(rs.getInt("ac_no"));%>
</td>
</tr>

<tr>
<td><font color="red"><b>Balance :</font><pre></pre></td>
<td><% out.print(rs.getInt("balance"));%>
</td>
</tr>


</table>

<%

}
catch(SQLException e)
{
out.println("SQL ERROR!"+ e);
}
catch(ClassNotFoundException e)
{
out.println("CLASS NOT FOUND ERROR");
}
%>
</form>
</div>
</center>
</body>
</html>