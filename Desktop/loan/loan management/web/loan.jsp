<%@ page language="java" import="java.sql.*"%>
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
<div align="center">
<%
int ac_no=Integer.parseInt(request.getParameter("ac_no"));
String plan_name=request.getParameter("plan_name");
String issue_date=request.getParameter("issue_date");
String status=request.getParameter("status");
String sanction_amount=request.getParameter("sanction_amount");
int delay_balance=Integer.parseInt(request.getParameter("delay_balance"));
int interest_rate=Integer.parseInt(request.getParameter("interest_rate"));
int tenure_in_months=Integer.parseInt(request.getParameter("tenure_in_months"));
//int emi_amount=Integer.parseInt(request.getParameter("emi_amount"));
int emi_amount=Integer.parseInt(request.getParameter("emi_amount"));
String emi_day=request.getParameter("emi_day");
String property_details=request.getParameter("property_details");
int total_amount_to_be_payed=Integer.parseInt(request.getParameter("total_amount_to_be_payed"));

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
query="insert into loan(ac_no,plan_name,issue_date,status,sanction_amount,delay_balance,interest_rate,tenure_in_months,emi_amount,emi_day,total_amount_to_be_payed,property_details) values('"+ ac_no +"','"+ plan_name +"',TO_DATE('"+ issue_date +"','yyyy/mm/dd'),'"+ status +"','"+ sanction_amount+"','"+ delay_balance +"','"+ interest_rate+"','"+ tenure_in_months +"','"+ emi_amount+"','"+ emi_day +"','"+ total_amount_to_be_payed +"','"+ property_details+"')";

stmt.executeUpdate(query);
out.println("Record Saved");
}
catch(SQLException e)
{
out.println("SQL ERROR!"+e);
}
catch(ClassNotFoundException e)
{
out.println("CLASS NOT FOUND ERROR");
}
%>
<h4>Add Another Record <a href="loan1.html"> Click here</h4>
</center>
</body>

</html>