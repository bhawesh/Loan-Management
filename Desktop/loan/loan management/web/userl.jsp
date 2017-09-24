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
<td width="100%" height="75%"><div align="left"><a href="user_home.jsp"><font color="red">HOME</font></a></div><center>Well come </center></td>
</tr>
</table>
<center>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<%
String ac_no=session.getAttribute("ac_no").toString();
//String ac_no=request.getParameter("ac_no");
String loan_id="";
String status="";
String sanction_amount="";
String delay_balance="";
String emi_amount="";
String emi_day="";
ResultSet rs = null;
Connection cn;
Statement stmt;
try
{
      Class.forName("oracle.jdbc.OracleDriver");
       cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
       System.out.println("2");
	    stmt=cn.createStatement();
		String query;
query="select ac_no,loan_id,status,sanction_amount,delay_balance,emi_amount,emi_day from loan where ac_no="+ac_no;
rs=stmt.executeQuery(query);

out.print("Loan Details :");
rs.next();%>
<form action="" method="post">
 <tr>
  <marquee><h3><font color="red"></font></h3></marquee>
</tr>

<table border="2">
<tr>
<td><font color="red">ac_no :</font></td>
<td><%out.print(rs.getInt("ac_no"));%>
</td>
</tr>

<tr>
<td>loan_id :</td>
<td><% out.print(rs.getInt("loan_id"));%></td>
</tr>

<tr>
<td>status :</td>
<td><%out.print(rs.getString("status"));%>
</td>
</tr>
<tr>
<td>Sanction Amount:</td>
<td><% out.print(rs.getInt("sanction_amount"));%>
</td>
</tr>
<tr>
<td>Delay balance :</td>
	<td><% out.print(rs.getInt("delay_balance"));%>
</td>
</tr>

<tr>
<td>Emi Amount :</td>
<td><% out.print(rs.getInt("emi_amount"));%>
</td>
</tr>
<tr>
<td>Emi Day :</td>
<td><%out.print(rs.getString("emi_day"));%>
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