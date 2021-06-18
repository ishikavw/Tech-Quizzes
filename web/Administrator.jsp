<%-- 
    Document   : indexHome
    Created on : 1 May, 2021, 6:34:29 PM
    Author     : AdminpcAdmin admin = new Admin();
--%>
<%@page import="java.sql.Statement"%>
<%@page import="Package.entites.Mark"%>
<%@page import="Package.entites.quiz"%>
<%@page import="Package.helper.ConnectionProvider"%>
<%@page import="Package.dao.UserDao"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Package.entites.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Package.entites.Admin"%>
<% Admin admin  =(Admin)session.getAttribute("Administrator");
if(admin == null)
{
    response.sendRedirect("errorPage.jsp");
}
else
{
%>


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
      <a href="LogoutServlet">Log out</a>
      <a class="">Administrator</a>
     
      <a href="Administrator_Subjects.jsp" > Subjects </a>
  </div>
    <div class="ontainer-fluid p-0 m-0">
        <div class="jumbotron " style="  background-color: #fff;">

          <div class="container">
            <div class="para "> 
                <table>
                     <h4 style= "font-weight:bold; " > Candidate Details:</h4>
                <thead>
                    <tr> 
                        <th>Id</th>
                        <th>USERNAME</th>
                        <th>FIRST NAME</th>
                        <th>LAST NAME</th>                        
                        <th>EMAIL</th>
                        <th>C</th>
                        <th>C++</th>
                        <th>JAVA</th>
                        <th>PYTHON</th>
                        <th>ACTION</th>
                    </tr> 
                </thead>
                <tbody>
            <%
            User user = null;
            Mark mark = null;
            try {
            
            String query = "select * from form ";
            String query1 = "select max(result) from marks where subject = 'c' AND user_fk = ? ";
            String query2 = "select max(result) from marks where subject = 'java' AND user_fk = ? ";
            String query3 = "select max(result) from marks where subject = 'c++' AND user_fk = ? ";
            String query4 = "select max(result) from marks where subject = 'python' AND user_fk = ? ";
            PreparedStatement ps= (ConnectionProvider.getConnection()).prepareStatement(query);
            PreparedStatement ptst =  (ConnectionProvider.getConnection()).prepareStatement(query1);
            PreparedStatement ptst2 =  (ConnectionProvider.getConnection()).prepareStatement(query2);
            PreparedStatement ptst3 =  (ConnectionProvider.getConnection()).prepareStatement(query3);
            PreparedStatement ptst4 =  (ConnectionProvider.getConnection()).prepareStatement(query4);
            ResultSet rs = ps.executeQuery();
            user = new User();
            mark = new Mark() ;
            while(rs.next())
            {   %>
                
                <tr>
                    <td><% int ids = rs.getInt("id"); 
                            user.setId(ids) ;
                    %> 
                        <%= user.getId()%>
                    </td>
                    <td><% String  unames = rs.getString("Username"); 
                            user.setUsername(unames) ;
                    %> 
                        <%=user.getUsername()%>
                    </td>
                    <td><% String fnames = rs.getString("Firstname");
                            user.setEmail(fnames) ;
                    %> 
                        <%= user.getEmail()%>
                    </td>  
                    <td><% String lnames = rs.getString("Lastname"); 
                            user.setLastname(lnames) ;
                    %> 
                        <%=user.getLastname()%>
                    </td>
                    <td><% String email = rs.getString("email"); 
                            user.setEmail(email) ;
                    %> 
                        <%=user.getEmail()%>
                    </td>
                    <% 
                        
                            ptst.setInt(1,user.getId());
                            ResultSet rs2 = ptst.executeQuery();
                            if(rs2.next())
                            {
                                int c_mark = rs2.getInt(1);
                                mark.setC_result(c_mark);
                               
                            }
                            ptst2.setInt(1,user.getId());
                            ResultSet rs3 = ptst2.executeQuery();
                            if(rs3.next())
                            {
                                int cz_mark = rs3.getInt(1);
                                mark.setCz_result(cz_mark);
                               
                            }
                            ptst3.setInt(1,user.getId());
                            ResultSet rs4 = ptst3.executeQuery();
                            if(rs4.next())
                            {
                                int java_mark = rs4.getInt(1);
                                mark.setJava_result(java_mark);
                               
                            }
                            ptst4.setInt(1,user.getId());
                            ResultSet rs5 = ptst4.executeQuery();
                            if(rs5.next())
                            {
                                int p_mark = rs5.getInt(1);
                                mark.setPy_result(p_mark);
                               
                            }
                    %>
                    
                            <td>
                                <%= mark.getC_result()%>
                     
                            </td>
                            <td>
                                 <%= mark.getCz_result()%>
                            </td>
                            <td>
                                 <%= mark.getJava_result()%>
                            </td>
                            <td>
                                 <%= mark.getPy_result()%>
                            </td>
                                
             
                    <td>
                        <a class="but" href='delete.jsp?d=<%=rs.getString("Username")%>'>DELETE</a> 
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

<%}
    
%> 
</body>
</html>

