<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head>
<script>
function c1()
{
document.form1.emi_no.value=document.form1.emi_no.value+1;
}
</script>

</head>
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


</pre>
<%

String loan_id=request.getParameter("loan_id");
String status="";
String fine="";
String emi_date="";
String emi_no="";
String emi_amount="";
String payed_amount="";
//int total;
int i=1;
//String total_no_emi="";
 ResultSet rs=null;
 ResultSet rs1=null;
Connection cn;
Statement stmt;
Statement stmt1;
try
{
      Class.forName("oracle.jdbc.OracleDriver");
       cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
       System.out.println("2");
	    stmt=cn.createStatement();
		String query;
		String query1;
query="select max(emi_no)+1 as Total from emi_payment where loan_id="+loan_id;
rs=stmt.executeQuery(query);

rs.next();
	int n=rs.getInt(1);
	%>
<%	    stmt1=cn.createStatement();
query1="Select emi_amount from loan where loan_id='"+loan_id+"'";
rs1=stmt1.executeQuery(query1);

//out.println(query1);
//out.println();
rs1.next();
	//String str =(rs1.getInt("emi_amount")).toString();

	int k=rs1.getInt(1);
	//out.println(rs.getInt("emi_amount"));
	session.setAttribute("loan_id",loan_id);
	//session.setAttribute("emi_amount",emi_amount);
//out.println(query1);
	%>
<%String a=session.getAttribute("loan_id").toString();
	%>
<form action="emi.jsp" method="post">
<table border="0">
<tr>
<td><font color="red">EMI No :</font></td>
<td><input type="text" name="emi_no" value="<%out.print(n);%>" id="emi_no"/>
</td>
</tr>

<tr>
<td>Loan id :</td>
<td><input type="text" name="loan_id" value="<%out.println(a);%>" id="loan_id"/>
</td>
</tr>

<tr>
<td>Payed amount:</td>
<td><input type="text" name="payed_amount" value="<%out.println(k);%>" id="payed_amount"/>
</td>
</tr>
<tr>
<td>EMI Date :</td>
	<td><input type="text" name="emi_date" value="" id="emi_date"/><td>yyyy/mm/dd</td>
</td>
</tr>
<tr>
<td>Status :</td>
<td><input type="text" name="status" value="" id="status"/>
</td>
</tr>

<tr>
<td>Fine :</td>
<td><input type="text" name="fine" value="" id="fine"/>
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
out.println("PLease Enter valid Id  !"+e);
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