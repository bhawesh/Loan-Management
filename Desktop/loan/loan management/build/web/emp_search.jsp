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
String eid=request.getParameter("eid");
//String eid=request.getParameter("eid");
String ename="";
String bcode="";
String esalary="";
String epost="";
String eaddress="";

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
query="select *from employee where eid="+eid;
rs=stmt.executeQuery(query);
//out.println(query);

out.print("Employee Details :");
rs.next();%>
<form name="form1" action="update_emp.jsp" method="post">
<table>
<div align="right">
</div>
<tr>
<td>eid :</td>
<td><input type="text" name="eid" value="<%out.print(rs.getInt("eid"));%>" id="eid"/>
</td>
</tr>

<tr>
<td>Employee Name :</td>
<td><input type="text" name="ename" value="<% out.print(rs.getString("ename"));%>" id="ename"/>
</td>
</tr>
<tr>
<td>B code :</td>
<td><input type="text" name="bcode" value="<% out.print(rs.getInt("bcode"));%>" id="bcode"/>
</td>
</tr>
<tr>
<td>esalry:</td>
<td><input type="text" name="esalary" value="<% out.print(rs.getInt("esalary"));%>" id="mother_name"/>
</td>
</tr>
<tr>
<td>E post :</td>
<td><input type="text" name="epost" value="<%out.print(rs.getString("epost"));%>" id="epost"/>
</td>
</tr>
<tr>
<td>E Address:</td>
<td><input type="text" name="eaddress" value="<% out.print(rs.getString("eaddress"));%>" id="eaddress"/>
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
out.println("SQL ERROR!"+e);
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