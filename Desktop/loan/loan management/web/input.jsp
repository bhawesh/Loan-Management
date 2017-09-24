<%@ page language="java" import="java.sql.*"  %>
<%@ page import="java.io.*" %>
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
int num=78;//Integer.parseInt(request.getParameter("id"));
 //String photo=request.getParameter("photo");
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

File imgfile=new File("122106181.jpg");
FileInputStream fin=new FileInputStream(imgfile);
PreparedStatement pre=con.prepareStatement("insert into imaget values(?,?)");
pre.setInt(1,num);
pre.setBinaryStream(2,fin,(int)imgfile.length());
ResultSet rs=pre.executeUpdate();
if(rs>0)
	{
	out.println("Record saved");
	}

pre.close();
}catch(Exception E){ out.println("the eror is  "+ E);}


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

</body>
</html>