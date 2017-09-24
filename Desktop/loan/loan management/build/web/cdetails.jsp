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
<td width="100%" height="75%"><center>Enter Required Details</center></td>
</tr>
</table>
<center>
<%
String cust_id=session.getAttribute("cust_id").toString();
String cust_name="";
String father_name="";
String mother_name="";
String age="";
String email_id="";
String gauranteed_id="";
String cust_address="";
String contact="";
String cust_gender="";
//String cust_id=request.getParameter("cust_id");

Connection cn;
Statement stmt;
ResultSet rs=null;
try
{
    System.out.println("hi");
   Class.forName("oracle.jdbc.OracleDriver");
       System.out.println("1"); 
       cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
stmt=cn.createStatement();
String query;
query="select *from customer where cust_id="+ cust_id ;
rs=stmt.executeQuery(query);
out.println(query);
out.print("Customer Details :");
rs.next();%>
<form name="form1" action="update_customer.jsp" method="post">
<table>
<div align="right">
<img src="<%out.print(rs.getString("cust_id"));%>.jpg" height="15%" width="15%">
</div>
<tr>
<td>Cust_id :</td>
<td><input type="text" name="cust_id" value="<%out.print(rs.getString("cust_id"));%>" id="cust_id"/>
</td>
</tr>

<tr>
<td>cust_Name :</td>
<td><input type="text" name="cust_name" value="<% out.print(rs.getString("cust_name"));%>" id="cust_name"/>
</td>
</tr>
<tr>
<td>Father Name :</td>
<td><input type="text" name="father_name" value="<% out.print(rs.getString("father_name"));%>" id="father_name"/>
</td>
</tr>
<tr>
<td>Mother Name:</td>
<td><input type="text" name="mother_name" value="<% out.print(rs.getString("mother_name"));%>" id="mother_name"/>
</td>
</tr>
<tr>
<td>age :</td>
<td><input type="text" name="age" value="<%out.print(rs.getInt("age"));%>" id="age"/>
</td>
</tr>
<tr>
<td>email id :</td>
<td><input type="text" name="email_id" value="<% out.print(rs.getString("email_id"));%>" id="email_id"/>
</td>
</tr>
<tr>
<td>Gauranteed id :</td>
<td><input type="text" name="gauranteed_id" value="<% out.print(rs.getInt("gauranteed_id"));%>" id="gauranteed_id"/>
</td>
</tr>
<tr>
<td>customer address :</td>
<td><input type="text" name="cust_address" value="<% out.print(rs.getString("cust_address"));%>" id="cust_address"/>
</td>
</tr>
<tr>
<td>Contact :</td>
<td><input type="text" name="contact" value="<%out.print(rs.getInt("contact"));%>" id="contact"/>
</td>
</tr>
<tr>
<td>Gender :</td>
<td><input type="text" name="cust_gender" value="<% out.print(rs.getString("cust_gender"));%>" id="gender"/>
</td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" name="btn1" value="Update"></td>
</tr>
</table>
<%

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
</form>
</div>
</body>
</html>