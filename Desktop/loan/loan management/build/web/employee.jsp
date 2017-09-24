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
int eid=Integer.parseInt(request.getParameter("eid"));
String ename=request.getParameter("ename");
int bcode=Integer.parseInt(request.getParameter("bcode"));
int esalary=Integer.parseInt(request.getParameter("esalary"));
String epost=request.getParameter("epost");
String eaddress=request.getParameter("eaddress");
Connection cn;
Statement stmt;
try
{
    System.out.println("hi");
   Class.forName("oracle.jdbc.OracleDriver");
       System.out.println("1"); 
       cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
       System.out.println("2");
	    stmt=cn.createStatement();
		System.out.println("3");
String query;
query="insert into employee(eid,ename,bcode,esalary,epost,eaddress) values('"+ eid +"','"+ ename +"','"+ bcode +"','"+ esalary +"','"+ epost +"','"+
eaddress+"')";
stmt.executeUpdate(query);
out.println("Record Saved");
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
<h4>Add Another Record <a href="http://localhost:4040/jsp/employee.html"> Click here</h4>
<center>
</body>
</html>