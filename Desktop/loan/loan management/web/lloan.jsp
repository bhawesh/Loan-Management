<html>
<head>
<title>Using GET Method to Read Form Data</title>
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
<td width="100%" height="75%"><div align="left"><a href="newcustomer.html"><font color="red">HOME</font></a></div><center>Enter Required Details</center></td>
</tr>
</table>
<center>
<pre>


</pre>

<center>
<h3>Take Printout and submit to bank:</h3>
<table border="2">
<tr>
<td>
<b>Account Number:</b><td>
<%=request.getParameter("ac_no")%></td>

</td>
</tr>
<tr>
<td>
<p><b>Customer Id:</b><td>
<%=request.getParameter("cust_id")%></td>
</p>
</td>
</tr>

<tr>
<td>
<p><b>First Name:</b><td>
<%=request.getParameter("first_name")%></td>
</p>
</td>
</tr>
<tr>
<td>
<p><b>Last Name:</b>
<td><%=request.getParameter("last_name")%></td>
</p>
</td>
</tr>
<tr>
<td>
<p><b>Father Name:</b><td>
<%=request.getParameter("Father_name")%></td>
</p>
</td>
</tr>
<tr>
<td>
<p><b>Mother Name:</b><td>
<%=request.getParameter("mother_name")%></td>
</p>
</td>
</tr>
<tr>
<td>
<p><b>Date of Birth:</b><td>
<%=request.getParameter("Dob")%></td>
</p>
</td>
</tr>
<tr>
<td>
<p><b>Customer Gender:</b><td>
<%=request.getParameter("cust_gender")%></td>
</p>
</td>
</tr>
<tr>
<td>
<p><b>Email:</b><td>
<%=request.getParameter("email")%></td>
</p>
</td>
</tr>
<tr>
<td>
<p><b>Address:</b><td>
<%=request.getParameter("address")%></td>
</p>
</td>
</tr>
<tr>
<td>
<p><b>Contact:</b><td>
<%=request.getParameter("contact")%><td>
</p>
</td>

</tr>
<tr>
<td>
<p><b>Loan Type:</b><td>
<%=request.getParameter("loan_type")%><td>
</p>
</td>

</tr>


<tr>
<td>
<p><b>Purpose:</b><td>
<%=request.getParameter("purpose")%>
</td></p>
</td>
</tr>
<tr>
<td>
<p><b>Required loan amount:</b><td>
<%=request.getParameter("lamount")%>
</td></p>
</td>
</tr>
<tr>
<td>
<p><b>Expectes Loan Amount:</b><td>
<%=request.getParameter("eamount")%>
</td></p>
</td>
</tr>
<tr>
<td>
<p><b>Surity Details:</b><td>
<%=request.getParameter("details")%>
</td></p>
</td>
</tr>

<tr>
<td>
<p><b>Identity:</b><td>
<%=request.getParameter("identity")%>
</td></p>
</td>
</tr>

</table>
</body>
</html>