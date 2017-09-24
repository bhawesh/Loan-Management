<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<body bgcolor="#C0DFFD">
<center>

<%
String loan_id=request.getParameter("laon_id");
String ac_no="";
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
query="select ac_no,loan_id,status,sanction_amount,delay_balance,emi_amount,emi_day from loan where loan_id="+loan_id;
rs=stmt.executeQuery(query);
out.print("Loan Details :");
rs.next();%>
<form action="emi_update.jsp" method="post">
<marquee><h3><font color="red">Enter Updated Details</font></h3></marquee>
<hr></hr>
<table border="2">
<tr>
<td><font color="red">ac_no :</font></td>
<td><input type="text" name="ac_no" value="<%out.print(rs.getInt("ac_no"));%>" id="ac_no"/>
</td>
</tr>

<tr>
<td>loan_id :</td>
<td><input type="text" name="loan_id" value="<% out.print(rs.getInt("loan_id"));%>" id="loan_id"/>
</td>
</tr>

<tr>
<td>status :</td>
<td><input type="text" name="status" value="<%out.print(rs.getString("status"));%>" id="status"/>
</td>
</tr>
<tr>
<td>Sanction Amount:</td>
<td><input type="text" name="sanction_amount" value="<% out.print(rs.getInt("sanction_amount"));%>" id="sanction_amount"/>
</td>
</tr>
<tr>
<td>Delay balance :</td>
	<td><input type="text" name="delay_balance" value="<% out.print(rs.getInt("delay_balance"));%>" id="delay_balance"/>
</td>
</tr>

<tr>
<td>Emi Amount :</td>
<td><input type="text" name="emi_amount" value="<% out.print(rs.getInt("emi_amount"));%>" id="emi_amount"/>
</td>
</tr>
<tr>
<td>Emi Day :</td>
<td><input type="text" name="emi_day" value="<%out.print(rs.getString("emi_day"));%>" id="emi_day"/>
</td>
</tr>
<tr>
<td></td>
<td><input type="Submit" name="submit" value="Submit"/>
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