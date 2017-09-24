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
<td width="100%" height="75%"><div align="left"><a href="home.jsp"><font color="red">HOME</font></a></div><center>Enter Required Details</center></td>
</tr>
</table>
<center>
<pre>


</pre>
<%
try
{
int ac_no=Integer.parseInt(request.getParameter("ac_no"));
int balance=Integer.parseInt(request.getParameter("balance"));




Connection cn;
Statement stmt;
Statement stmt1;


    
   Class.forName("oracle.jdbc.OracleDriver");
    
       cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
       //stmt=cn.createStatement();
	 // String query;
//query="insert into emi_payment(emi_no,loan_id,payed_amount,emi_date,status,fine) values('"+ emi_no +"', '"+ loan_id +"','"+ payed_amount +"',TO_DATE('"+ emi_date +"','yyyy/mm/dd'),'"+ status +"','"+ fine +"')";

//stmt.executeUpdate(query);
//out.println("Emi payment Succesfully submitted");
	   
       stmt1=cn.createStatement();

String query1;
query1="update account set balance=balance+'"+balance+"' where ac_no='"+ac_no+"'";
stmt1.executeUpdate(query1);
out.println(" Account balance will be updated soon...");


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
Go Back<a href="home.jsp">Click here</a>

</body>
</html>