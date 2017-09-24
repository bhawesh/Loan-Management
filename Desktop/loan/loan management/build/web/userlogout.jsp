<%
session.setAttribute("cust_id", null);
session.invalidate();
response.sendRedirect("no.html");
%>