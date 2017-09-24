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
String cust_name=request.getParameter("cust_name");
String father_name=request.getParameter("father_name");
String mother_name=request.getParameter("mother_name");
int age=Integer.parseInt(request.getParameter("age"));
String email_id=request.getParameter("email_id");
int gauranteed_id=Integer.parseInt(request.getParameter("gauranteed_id"));
String cust_address=request.getParameter("cust_address");
String contact=request.getParameter("contact");
String cust_gender=request.getParameter("cust_gender");
String dob=request.getParameter("dob");
String photo=request.getParameter("photo");
String sign=request.getParameter("sign");
String cust_id="";
Connection cn;
Statement stmt;
Statement stmt1;
int i;
ResultSet rs=null;
try
{
    System.out.println("hi");
   Class.forName("oracle.jdbc.OracleDriver");
       System.out.println("1"); 
       cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
       System.out.println("2");
	    stmt=cn.createStatement();
		stmt1=cn.createStatement();
		System.out.println("3");
String query;
String query1;
query="insert into customer(cust_name,father_name,mother_name,age,email_id,gauranteed_id,cust_address,contact,cust_gender,dob,photo,sign) values('"+ cust_name +"','"+ father_name +"','"+ mother_name +"','"+ age +"','"+ email_id+"','"+ gauranteed_id +"','"+ cust_address+"','"+ contact +"','"+ cust_gender+"',TO_DATE('"+ dob +"','yyyy/mm/dd'),'"+photo+"','"+sign+"')";
i=stmt.executeUpdate(query);
if(i>0)
	{
	query1="select cust_id from customer where cust_name='"+cust_name+"'";
	rs=stmt1.executeQuery(query1);
rs.next();
out.println(query1);
out.println("Record Saved and customer id"+cust_id);
out.println(rs.getInt("cust_id"));
}
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
<h4>Add Another Record <a href="customer.html"> Click here</h4>
</center>
</body>
</html>