<%@ page language="java" import="java.sql.*"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<style type="text/css">
    #navigation { 
	
	font-size:0.75em; width:200px; 
	width: 200px;
	border-style:solid solid none solid;
	border-color:#94AA74;
	border-size:1px;
	border-width:1px;
	}
#navigation tr { margin:0px; padding:0px; }
#navigation td { list-style: none; }
 
tr.top-level { background:skyblue; }
 
tr.top-level td {
 border-bottom: #fff solid;
 border-top: #fff solid;
 border-width: 1px;
}
 
#navigation a {
 color: #fff;
 cursor: pointer;
 display:block;
 height:25px;
 line-height: 25px;
 text-indent: 10px;                   
 text-decoration:none;
 width:100%;
}
 
#navigation a:hover{
 text-decoration:underline;
}
</style>

<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Home Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_travel2.css" type="text/css" />
<script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array
("January","February","March","April","May","June","July","August","September","October","November","December");
//Ensure correct for language. English is "January 1, 2004"
var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();
//---------------   END LOCALIZEABLE   ---------------
</script>
<style type="text/css">
<!--
.style6 {
	font-size: 24px;
	color: #FF0000;
}
.style8 {font-size: 16px}
-->
</style>
</head>
<body bgcolor="#C0DFFD">
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#3366CC">
    <td colspan="3" rowspan="2"></td>
    <td height="35" colspan="3" id="logo" valign="bottom" align="center" nowrap="nowrap">NATIONAL BANK OF INDIA</td>
    <td width="5">&nbsp;</td>
  </tr>

  <tr bgcolor="#3366CC">
    <td height="45" colspan="3" id="tagline" valign="top" align="center">The Banking Solution </td>
	<td width="5">
 </td>
  </tr>

 </td>
  </tr>

  <tr bgcolor="#CCFF99">
  	<td colspan="7" id="dateformat" height="25">&nbsp;
	<span class="style8">HOME PAGE </span>
  	  <div align="center">
  	    <script language="JavaScript" type="text/javascript">
      document.write(TODAY);	</script> 
    <span class=""><marquee direction="alternate"><font color="#990000"> ONLINE LOAN MANAGEMENT SYSTEM </font></marquee> 
</span> </div></td>
  </tr>
 <tr>
    <td colspan="7" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

 <tr>
    <td width="151" height="783" valign="top" bgcolor="#E6F3FF">
	<table width="212" height="490" border="0" cellpadding="0" cellspacing="0" id="navigation">
        <tr class="top-level">
        
          <td width="200" id="my"><a href="customer.html"><font color="#FF0000"> <h3>Enter Customer Details </h3></font></a></td>
        </tr>
        <tr class="top-level">
          <td width="200"><a href="cust_search.html"><font color="#FF0000"><h3>Customer enquiry</h3></font></a></td>
        </tr>
        <tr class="top-level">
          <td width="200"><a href="emi_pay.html"><font color="#FF0000"><h3>Deposit </h3></font></a></td>
        </tr>
        <tr class="top-level">
          <td width="200"><a href="loan.html"><font color="#FF0000"><h3> loan</h3></font></a></td>
        </tr>
        <tr class="top-level">
          <td width="200" ><a href="account.html"><font color="#FF0000"><h3>Balance enquiry</h3></font></a></td>
		</tr>
			<tr class="top-level">
			<td width="200">
		<h3><a href="emi_pay.html"><font color="#FF0000">Edit Account </font></a></h3>        </tr>
		
		<tr class="top-level">
			<td width="200" height="45"><a href="dreport.html"><font color="#FF0000"><h3>Deposit 
Report</h3></font></a></td>
        </tr>
		<tr class="top-level">
			<td width="200"><a href="wreport.html"><font color="#FF0000"><h3>Withdraw Report</h3></font></a></td>
        </tr>
      </table>
 	  <td colspan="2" valign="top"><p>&nbsp;</p>
      <table width="686" height="200" border="0" cellpadding="0" cellspacing="0">
	  <tr>
        <td width="586" class="pageName style3 style6"> <div align="center">
          <h4>MESSAGE FROM NATIONAL BANK</h4>
          
          </div></td>
	    </tr>
	  <tr>
        <td height="50" class="bodytext"><strong>  
		        <div align="center">
		          <p>Welcome to STATE BANK ,We provide our customer on line banking. Through the on line system customer can open new accounts. 
		             
                  Customer can make enquiry about personal details and balance. Customer can also make transaction like deposit and withdraw.	       </p>
		          <p>&nbsp;</p>
		           <p>&nbsp;</p>
		           <p>&nbsp;</p>
		           <p>&nbsp;</p>
		           <p>&nbsp;       </p>
	        </div>
			</strong></p>
			
          
		  <p>
            <ul>
            <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p></td>
	    </tr>
      </table>
     <br />	  </td>
<td width="389" valign="top"><p><img src="banking.jpg" width="279" height="489"  /><a href="online-banking.jpg"></a></p>  </td>
	<td width="5">&nbsp;</td>
  </tr>
</table>
</body>
</html>
