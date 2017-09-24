<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
   <body bgcolor="#C0DFFD">
<table width="100%" height="100">
<tr bgcolor="#3366CC">
<td height="65" colspan="3" rowspan="3" id="logo" nowrap="nowrap"> <center>Well come TO National Bank</center></td>

</tr>
<tr></tr>
<tr bgcolor="">
</tr>
<tr bgcolor="#CCFF66">
<td width="100%" height="75%"><div align="left"><a href=""><font color="red"></font></a></div><center>Enter Required Details</center></td>
</tr>
</table>
<center>
<pre>
</pre>
        <form method="post" action="registration.jsp">
            <marquee behavior="alternate"><font color="#cc0066"><h3>Enter Information Here:</h3></font>
			</marquee>
			<center>
            <table border="0" width="50%" cellpadding="5">
                </thead>
                <tbody>
                    <tr>
                        <td><b>Employee Id:</b></td>
                        <td><input type="text" name="eid" id="eid" /></td>
                    </tr>
                    
                    <tr>
					<td> Email id:</td>
                       <td> <input type="text" name="email_id" id="email_id">
                          </td>
                    </tr>



                    <tr>
                        <td>User Name: </td>
                        <td> <input type="text" name="user_name" id="user_name" /> 
                          </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" id="pass" /></td>       
             </tr>
    </tr>
                                        <tr>
                        <td>Choose your question:</td>
                        <td>
<select name="question" id="question">
<option  id="question">Select one question</option>
<option  id="question">What is your pet Name?</option>
<option id="question">What is favorate color?</option>
<option id="question">What is your library card number?</option>
<option id="question">What is your favorate number?</option>

                            </td>
                    </tr>



 <tr>
                        <td>Type Your Answer:</td>
                        <td><input type="text" name="answer" id="answer" /></td>       
             </tr>

<tr>
</tr>
                  <tr>
                        <td> </td>
                       <td><input type="submit" value="Submit" />
                            <input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="emp_login.html">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>