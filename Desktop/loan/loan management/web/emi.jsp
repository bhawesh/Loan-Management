<%@ page language="java" import="java.sql.*"  %>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<html>
<div align="center">
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


</pre><%
try
{
int loan_id=Integer.parseInt(request.getParameter("loan_id"));
int emi_no=Integer.parseInt(request.getParameter("emi_no"));
int payed_amount=Integer.parseInt(request.getParameter("payed_amount"));
String emi_date=request.getParameter("emi_date");
String status=request.getParameter("status");
int fine=Integer.parseInt(request.getParameter("fine"));




Connection cn;
Statement stmt;
Statement stmt1;
Statement stmt2;

    
   Class.forName("oracle.jdbc.OracleDriver");
    
       cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
       stmt=cn.createStatement();
	  String query;
query="insert into emi_payment(emi_no,loan_id,payed_amount,emi_date,status,fine) values('"+ emi_no +"', '"+ loan_id +"','"+ payed_amount +"',TO_DATE('"+ emi_date +"','yyyy/mm/dd'),'"+ status +"','"+ fine +"')";

stmt.executeUpdate(query);
out.println("Emi payment Succesfully submitted");
	   
       stmt1=cn.createStatement();

String query1;
query1="update loan set total_amount_to_be_payed=total_amount_to_be_payed-'"+payed_amount+"' where loan_id='"+loan_id+"'";
stmt1.executeUpdate(query1);
out.println("loan Amount will be updated soon...");
stmt2=cn.createStatement();

String query2;
query2="update account set balance=balance+'"+fine+"' where ac_no=1001120";
stmt2.executeUpdate(query2);
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
Go Back<a href="emi.html">Click here</a>

</body>
</html>