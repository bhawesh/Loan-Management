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
int loan_id=Integer.parseInt(request.getParameter("loan_id"));
String status=request.getParameter("status");
int sanction_amount=Integer.parseInt(request.getParameter("sanction_amount"));
int delay_balance=Integer.parseInt(request.getParameter("delay_balance"));
int emi_amount=Integer.parseInt(request.getParameter("emi_amount"));
String emi_day=request.getParameter("plan_name");
//int total_no_emi=Integer.parseInt(request.getParameter("total_no_emi"));
int x;

Connection cn;
PreparedStatement psmt;


    System.out.println("hi");
   Class.forName("oracle.jdbc.OracleDriver");
       System.out.println("1"); 
       cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
       System.out.println("2");
psmt=cn.prepareStatement("update loan set ac_no=?,status=?,sanction_amount=?,delay_balance=?,emi_amount=?,emi_day=? where loan_id=?");
psmt.setInt(1,ac_no);
psmt.setString(2,status);
psmt.setInt(3,sanction_amount);
psmt.setInt(4,delay_balance);
psmt.setInt(5,emi_amount);
psmt.setString(6,emi_day);
//psmt.setInt(7,total_no_emi);
psmt.setInt(7,loan_id);
x=psmt.executeUpdate();
if(x>0)
{
out.println("Data successfully updated into ur database");
}
	
}
catch(SQLException e)
{
out.println("SQL ERROR!");
}
catch(ClassNotFoundException e)
{
out.println("CLASS NOT FOUND ERROR"+e);
}
%>
<pre>

</pre>
Go Back<a href="emi_pay.html">Click here</a>
</body>
</html>