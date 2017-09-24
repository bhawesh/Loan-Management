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
<td width="100%" height="75%"><div align="left"><a href="user_home.html"><font color="red">HOME</font></a></div><center>Well come </center></td>
</tr>
</table>
<center>

<%
try
{
	String loan_id=session.getAttribute("loan_id").toString();
String emi_no="";//Integer.parseInt(request.getParameter("emi_no"));
String payed_amount="";//Integer.parseInt(request.getParameter("payed_amount"));
String emi_date="";//request.getParameter("emi_date");
String status="";//request.getParameter("status");
String fine="";//Integer.parseInt(request.getParameter("fine"));
ResultSet rs = null;


Connection cn;
Statement stmt;
//Statement stmt1;


    
   Class.forName("oracle.jdbc.OracleDriver");
    
       cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
       stmt=cn.createStatement();
	  String query;
query="select *from emi_payment where loan_id="+loan_id;//('"+ emi_no +"', '"+ loan_id +"','"+ payed_amount +"',TO_DATE('"+ emi_date +"','yyyy/mm/dd'),'"+ status +"','"+ fine +"')";

rs=stmt.executeQuery(query);
while(rs.next())
	{

	
//out.println("Emi payment Succesfully submitted");
	   
     //  stmt1=cn.createStatement();

//String query1;
//query1="update loan set sanction_amount=sanction_amount-'"+payed_amount+"' where loan_id='"+loan_id+"'";
//stmt1.executeUpdate(query1);
//out.println("loan Amount will be updated soon...");
%>
<form action="" method="post">
 <tr>
  <marquee><h3><font color="red"></font></h3></marquee>
</tr>

<table border="2">
<tr>
<td><font color="red">Emi no :</font></td>
<td><%out.print(rs.getInt("emi_no"));%>
</td>
</tr>

<tr>
<td>loan_id :</td>
<td><% out.print(rs.getInt("loan_id"));%></td>
</tr>

<tr>
<td>payed amount :</td>
<td><%out.print(rs.getInt("payed_amount"));%>
</td>
</tr>
<tr>
<td>Emi date:</td>
<td><% out.print(rs.getString("emi_date"));%>
</td>
</tr>
<tr>
<td>Status:</td>
	<td><% out.print(rs.getString("status"));%>
</td>
</tr>

<tr>
<td>Fine:</td>
<td><% out.print(rs.getInt("fine"));%>
</td>
</tr>
<!--<tr>
<td></td>
<td><input type="Submit" name="submit" value="Submit"/>
</td>
</tr> -->

</table>




	<%
	}
}
catch(SQLException e)
{
out.println("SQL ERROR!"+e);
}
catch(ClassNotFoundException e)
{
out.println("CLASS NOT FOUND ERROR"+e);
}
%>
<pre>

</pre>
Go Back<a href="user.html">Click here</a>

</body>
</html>