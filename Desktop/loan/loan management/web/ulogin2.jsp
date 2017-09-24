<html>
<body>
<%@ page import="java.sql.*" %>
<%
String cust_id=request.getParameter("cust_id");

String ac_no=request.getParameter("ac_no");
String dob=request.getParameter("dob");
Connection cn;
Statement stmt;
Statement stmt1;
ResultSet rs=null;
ResultSet rs1=null;
try
{
    System.out.println("hi");
   Class.forName("oracle.jdbc.OracleDriver");
       System.out.println("1"); 
       cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brijesh","brijesh");
stmt=cn.createStatement();
stmt1=cn.createStatement();
//String query;
rs=stmt.executeQuery("select distinct account.cust_id,account.ac_no,customer.dob from account,customer where customer.cust_id='"+cust_id+"' and account.ac_no='"+ac_no+"' and customer.dob='"+dob+"' and customer.cust_id=account.cust_id");

 if (rs.next()) {
        session.setAttribute("cust_id",cust_id);
		session.setAttribute("ac_no",ac_no);
		 
        //out.println("welcome " + cust_id);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("user_home.jsp");
    }//if(u_name.equals(rs.getString("cust_id")) && u_pass.equals(rs.getString("dob")))
//response.sendRedirect("user_home.html");
else
{%>
<center> <h2> LOGIN FAIL<h2><br>
<a href="no.html">BACK </a>
</center>
<%}
//rs1=stmt.executeQuery("select loan.loan_id from loan,account where loan.loan_id=account.loan_id and account.ac_no="+ac_no);
//if(rs1.next()){
  //   session.setAttribute("loan_id",loan_id);
//}

}
catch(ClassNotFoundException e)
{
out.println("Class not found");
}
catch(java.sql.SQLException ex)
{
out.println("SQL Exception"+ex);
}
%>
</body>
</html>