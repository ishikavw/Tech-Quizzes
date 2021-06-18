<%-- 
    Document   : indexHome
    Created on : 1 May, 2021, 6:34:29 PM
    Author     : AdminpcAdmin admin = new Admin();
--%>
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

}

.banner-background{


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
  .column {
      
  float: left;
  width: 250px;
  padding-left: 20px;
}

.row {
    
  margin-left: 100px;
  margin-right: 100px;
}

.row:after {
     background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
  content: "";
  display: table;
  clear: both;
}
.card {
   
  box-shadow: 0 10px 18px 0 rgba(0, 0, 0, 0.2); 
  padding: 6px;
  text-align: center;
  background-color: white;
}
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
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
        <% Admin admin  =(Admin)session.getAttribute("Administrator");
if(admin == null)
{
    response.sendRedirect("index.jsp");
    out.print("<font size='2' color='red' m>");
    out.print("login first");
    out.print("</font>");
}
    
%> 

 <div class="topnav" id="myTopnav">
     
    <img class="logo" src="images/lgg.jpg"> 
      <a href="LogoutServlet">Log out</a>
      <a class="">Administrator</a>
     
      <a href="Administrator.jsp" > User Details </a>
  <div class="banner-background" >
        <br><br><br> <br><br><br><br>
        <div class="row">
        <div class="column sm-4">
            <div class="card"> <a  href="cRedirect.jsp"> <img src="images/c.jpg" style="width: 200px; height: 200px;"> </a></div>
        </div>
        <div class="column">
          <div class="card"><a  href="cZRedirect.jsp"><img src="images/c+.jpg" style="width: 200px; height: 200px;"></a></div>
        </div>
        <div class="column">
          <div class="card"><a  href="javaRedirect.jsp"><img src="images/java.jpg" style="width: 200px; height: 200px;"></a></div>
        </div>
        <div class="column">
          <div class="card"><a  href="pRedirect.jsp"><img src="images/py.jpg" style="width: 200px; height: 200px;"></a></div>
        </div>
    </div>
   
</div>
            
    </div>
</body>
</html>

