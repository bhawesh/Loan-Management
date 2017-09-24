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
 String email_id=request.getParameter("email_id");
 String user_name=request.getParameter("user_name");
String pass=request.getParameter("pass");
String question=request.getParameter("question");   
String answer=request.getParameter("answer");
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
query="insert into REGISTRATION(eid,email_id,user_name,pass,question,answer) values('"+ eid +"','"+ email_id +"','"+ user_name +"','"+ pass +"','"+ question +"','" + answer +"')";
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

</body>
</html>