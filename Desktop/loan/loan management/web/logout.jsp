<%
session.setAttribute("user_id", null);
session.invalidate();
response.sendRedirect("no.html");
%>