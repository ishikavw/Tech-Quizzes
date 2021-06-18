<%@page import="java.sql.Statement"%>
<%@page import="Package.helper.ConnectionProvider"%>
<%
String us = request.getParameter("d");
Statement st =(ConnectionProvider.getConnection()).createStatement();
st.executeUpdate("delete from form where Username = '" +us+ "'");
response.sendRedirect("Administrator.jsp");





%>
