<%@page import="java.sql.ResultSet"%>
<%@page import="Package.helper.ConnectionProvider"%>
<%@page import="java.sql.PreparedStatement"%>
<!-- quizques
s_no
subject
question
option1
option2
option3
option4
answer +
-->
<html>
<head>
  <title></title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>
  <!-- Font Awesome CSS -->
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.3.1/css/all.css'>
  <!---modal-> login.css-->

</head>
<%
    

 String s = (String)session.getAttribute("subject"); 
 int o = '\0';
 if(s != null)
 {
    try {
        String question = request.getParameter("question");
        String option1= request.getParameter("option1");
        String option2= request.getParameter("option2");
        String option3= request.getParameter("option3");
        String option4= request.getParameter("option4");
        String answer=request.getParameter("answer");
        
        PreparedStatement ps1 = ConnectionProvider.getConnection().prepareStatement("select max(q_no) from quiz");
        ResultSet rs = ps1.executeQuery();
        while(rs.next())
        {
            int q_no = rs.getInt(1);
            PreparedStatement ps= ConnectionProvider.getConnection().prepareStatement( "insert into quiz(q_no,subject,question,option1,option2,option3,option4,answer) values(?,?,?,?,?,?,?,?)");
            ps.setInt(1,q_no+1);
            ps.setString(2,s); 
            ps.setString(3,question);
            ps.setString(4,option1);
            ps.setString(5,option2);
            ps.setString(6,option3);
            ps.setString(7,option4);
            ps.setString(8,answer);
            o = ps.executeUpdate();
        }
}
catch(Exception e){
    e.printStackTrace();
}

}
if( o != '\0')
{
    %>
    <body> 
    <jsp:forward page="temp2.jsp"></jsp:forward>
     </body>
     
    <%
    }
%>


