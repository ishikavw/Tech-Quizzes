<%-- 
    Document   : indexHome
    Created on : 1 May, 2021, 6:34:29 PM
    Author     : AdminpcAdmin admin = new Admin();
--%>
<%@page import="Package.entites.quiz"%>
<%@page import="Package.helper.ConnectionProvider"%>
<%@page import="Package.dao.UserDao"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Package.entites.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Package.entites.Admin"%>



<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<style> 
 html{
    font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
  }
*{
  margin:0px;
  padding: 0px;
  box-sizing: border-box;
} 
body{
background: white;
}

.banner-background{
clip-path: polygon(0 0, 71% 0, 100% 0, 95% 76%, 89% 91%, 69% 95%, 0 98%);


}
.topnav {
  overflow: hidden;
  padding: 18px 5px 10px 10px;
  background: white;
  

}
.topnav .icon {
  display: none;
}
 .topnav a{
  float: right;
  color: white;
  text-align: center;
  padding: 5px 15px;
  font-size: 15px;
  border-radius: 10px;
  margin-left: 15px;
  margin-top: 3px;
  align-items: center;
  background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
  text-decoration:none;
   font-weight: bolder;

}
.topnav a:hover {
  color: white;
  background: linear-gradient(70deg, #823DC6 3%, #7C0707 60%);
}
 .logo
  {
    margin-left:1px;
  }
table {
    padding: 200px;
    margin-top: 50px;
    box-shadow: 2px 2px 12px rgba(0,0,0,0.2),-1px -1px 8px rgba(0,0,0,0.2);
    background: white;
    
}
tr{
    transition: all .2s ease-in;
    cursor: pointer;
}
th,td{
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}
thead{
    background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
    color: #fff;
}
tr:hover{
    background-color: #f5f5f5;
    transform: scale(1.02);
    box-shadow: 2px 2px 12px rgba(0,0,0,0.2),-1px -1px 8px rgba(0,0,0,0.2);
}
.but{
    color: white;
    background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
    size: 20px;
    display: block;
    border-radius: 5px;
    height: 30px;
    width: 70px;
    text-align: center;
}
.but:hover{
   color: black;
    background: white;
    border: 2px solid black;
}

</style>
<script type="text/javascript">
  function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  }
  else {
    x.className = "topnav";
    
  }
}
</script>
</head>
<body>
    <div>
        <div class="topnav" id="myTopnav">
            <img class="logo" src="images/lgg.jpg"> 
                <a href="Administrator.jsp">Go back</a>
        </div>
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron " style="  background-color: #fff;">
                <div class="container">
                    <div class="para "> 
                        <table>
                            <thead>
                                <tr> 
                                    <th>S_no</th>
                                    <th>Q_no</th>
                                    <th>Question</th>
                                    <th>Answer</th>
                                        <th>Option 1</th>
                                        <th>Option 2</th>
                                        <th>Option 3</th>
                                        <th>Option 4</th>
                                        <th>Action</th>
                                        
                                </tr> 
                            </thead>
                            <tbody>
            <%
            quiz q = null;
            try{
            String s = (String)session.getAttribute("subject"); 
            String query = "select * from quiz where subject = '"+s+"'  ";
            PreparedStatement ps= (ConnectionProvider.getConnection()).prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            q = new quiz();
            while(rs.next())
            {   %>
                
                <tr>
                    <td><% int s_no = rs.getInt("s_no"); 
                            q.setS_no(s_no) ;
                    %> 
                        <%= q.getS_no()%>
                    </td>
                    <td><% int q_no = rs.getInt("q_no"); 
                            q.setQ_no(q_no);
                    %> 
                        <%= q.getQ_no()%>
                    </td>
                    <td><% String  question = rs.getString("question"); 
                            q.setQuestion(question) ;
                    %> 
                        <%=q.getQuestion()%>
                    </td>
                    <td><% String answer = rs.getString("answer");
                            q.setAnswer(answer) ;
                    %> 
                        <%= q.getAnswer()%>
                    </td>  
                    <td><% String option1 = rs.getString("option1"); 
                            q.setOption1(option1) ;
                    %> 
                        <%=q.getOption1()%>
                    </td>
                    <td><% String option2 = rs.getString("option2"); 
                            q.setOption2(option2) ;
                    %> 
                        <%=q.getOption2()%>
                    </td>
                    <td><% String option3 = rs.getString("option3"); 
                            q.setOption3(option3) ;
                    %> 
                        <%=q.getOption1()%>
                    </td>
                    <td><% String option4 = rs.getString("option4"); 
                            q.setOption4(option4) ;
                    %> 
                        <%=q.getOption4()%>
                    </td>
                    <td>
                        <a class="but" href='delete_question.jsp?d=<%= rs.getInt("q_no") %>'>DELETE</a> 
                    </td>
                   
                </tr>
            <%     
            }
        }
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        %>
            </tbody>
            
        </table>
    </div>
            </div>
            </div>
            </div>
            
    </div>
</body>
</html>

