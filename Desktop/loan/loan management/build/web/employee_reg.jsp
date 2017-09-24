<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
<h3><marquee behavior="left">Employee Registration:</marquee></h3>
    <body bgcolor="skyblue">

        <form method="post" action="registration.jsp">
            <center>
            <table border="1" width="50%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Employee Id:</td>
                        <td><input type="text" name="" value="" id="emp_id" /></td>
                    </tr>
                    
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>       
             </tr>
                    <tr>
                        <td>Choose your question:</td>
                        <td>
<select name="options">
<option value="q1">Select one question</option>
<option value="q1">What is your pet Name?</option>
<option value="q2">What is favorate color?</option>
<option value="q3">What is your library card number?</option>
<option value="q1">What is your favorate number?</option>

                            </td>
                    </tr>
 <tr>
                        <td>Type Your Answer:</td>
                        <td><input type="text" name="answer" value="" id="answer" /></td>       
             </tr>

<tr>
</tr>
                  <tr>
                        <td> </td>
                       <td><input type="submit" value="Submit" />
                            <input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="login.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>