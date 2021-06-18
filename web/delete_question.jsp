<%@page import="java.sql.Statement"%>
<%@page import="Package.helper.ConnectionProvider"%>
<%
Integer us = Integer.parseInt(request.getParameter("d"));
Statement st =(ConnectionProvider.getConnection()).createStatement();
st.executeUpdate("delete from quiz where q_no = '" +us+ "'");
response.sendRedirect("viewQuestion.jsp");





%>
