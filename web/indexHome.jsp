<%-- 
    Document   : indexHome
    Created on : 1 May, 2021, 6:34:29 PM
    Author     : Adminpc
--%>
<%@page import="Package.entites.message"%>
<%@page import="Package.entites.User"%>
<% User user =(User)session.getAttribute("CurrentUser");
if(user == null)
{
    response.sendRedirect("errorPage.jsp");
}
else
{
      
%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <title></title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>
  <!-- Font Awesome CSS -->
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.3.1/css/all.css'>
  
  <style type="text/css">
    html{
    font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
  }
*{
  margin:0px;
  padding: 0px;
  box-sizing: border-box;
} 
body{
background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
}

.banner-background{
clip-path: polygon(0 0, 100% 0, 98% 69%, 86% 94%, 53% 95%, 28% 93%, 18% 89%, 6% 98%);
}

.topnav {
   overflow: hidden;
  padding: 18px 50px 10px 10px;
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
  border-radius: 25px;
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
  content: "";
  display: table;
  clear: both;
}
.card {
  box-shadow: 0 5px 15px 0 rgba(0, 0, 0, 0.2); 
  padding: 6px;
  text-align: center;
  background-color: white;
}
.card:hover{
  box-shadow: 0 20px 25px 0 rgba(0, 0, 0, 0.2); 
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
.start{
  color: white;
  text-align: center;
  padding: 5px 20px;
  font-size: 20px;
  border-radius: 25px;
  align-items: center;
  text-decoration:none;
  border:none;
  background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);

}
.start:hover{
  text-decoration:none;
   border:none;
   color: black;
   background: linear-gradient(7deg, #7D7DF1 3%, #C4357C 55%);
   
}

.title
{
  background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
  color: white;
}
input[type = "submit"]
    {  
      height: 40px;
      color: white;
      background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
      font-size:18px;
      border-radius: 20px;
      width:100px;
      height:40px;
      margin-left:180px; 
      border:none;
    }
    input[type = "submit"]:hover
    {
      background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
      cursor: pointer;
      background: pink;
      
    }

</style>
</head>
<body>
    
  <div class="topnav" id="myTopnav">
    <img class="logo" src="images/lgg.jpg"> 
      <a href="LogoutServlet">Log out</a>
      <a href="#myModal" class="trigger-btn" data-toggle="modal"><%=  user.getUsername() %></a>
  </div>
                <%
                    message mssg = (message) session.getAttribute("msg");
                    if( mssg!=null)
                    {
                 %>
                   <div class="alert <%=  mssg.getCssClass() %>" role="alert">
                    <%=  mssg.getContent() %>
                    </div>
                  <%
                      session.removeAttribute("msg");
                    }
                   %>
      <div class="banner-background" style="  background-color: #fff;">
        <br><br><br>
        <div class="row">
        <div class="column sm-4">
            <div class="card"> <a href="cRedirect.jsp"> <img src="images/c.jpg" style="width: 200px; height: 200px;"></a></div>
        </div>
        <div class="column">
          <div class="card"><a  href="cZRedirect.jsp"><img src="images/c+.jpg" style="width: 200px; height: 200px;"></a></div>
        </div>
        <div class="column">
          <div class="card"><a href="javaRedirect.jsp"><img src="images/java.jpg" style="width: 200px; height: 200px;"></a></div>
        </div>
        <div class="column">
          <div class="card"><a href="pRedirect.jsp"><img src="images/py.jpg" style="width: 200px; height: 200px;"></a></div>
        </div>
    </div>
    <br><br><br><br>
</div>

<div id="myModal" class="modal fade">
  <div class="modal-dialog modal-login modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header title">   
        <h5 class="modal-title "> PROFILE </h5> 
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
      </div>
      <div class="modal-body ">
       <div class="container">
         <h5 class="modal-title " style="text-align: center;"><%=  (user.getUsername()).toUpperCase() %></h5> 
         <br>
         <div id="profile-details">
         <table class="table">
           <tr>
             <th>First name :</th>
             <td><%=  user.getFirstname() %></td>
             
           </tr>
            <tr>
             <th>Last name :</th>
             <td><%=  user.getLastname() %></td>
             
           </tr>
            <tr>
             <th>Email :</th>
             <td><%=  user.getEmail() %></td>
           </tr>
           
         </table>
         </div>
          <div id="profile-edit" style="display:none; ">
            <form action="updateServlet" method="post" id="editprofile">
              <table class="table">
                <tr>
                  <th>First name :</th>
                  <td> <input required type = "text" class="form-control" name="first_name" value="<%=  user.getFirstname() %>"/></td>
                </tr>
                <tr>
                  <th>Last name :</th>
                  <td> <input required type = "text" class="form-control" name="last_name" value="<%=  user.getLastname() %>"/></td>
                </tr>
                <tr>
                   <th>Password :</th>
                    <td> <input required type = "Password" class="form-control" id="pass" onkeyup="passcheck()"  name="user_password" value=""/></td>
                    <p id="demo"></p>
                </tr>
              </table>
                <input type ="submit" name="submit" class="update" value="update">
           </form>
         </div>
       </div>
       </div>
       <div class="modal-footer">
        <button type="button" id="edit-profile-btn" class="start" >Edit</button>
      </div>
      </div>
    </div>
  </div>
</div>     

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>

<script src='https://code.jquery.com/jquery-3.3.1.slim.min.js'></script>
<!-- Popper JS -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js'></script>
<!-- Bootstrap JS -->
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js'></script>
 <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript">

   var passcheck = function()
        {
            var str = document.getElementById('pass').value;
            
            if(str.length < 6)
            {
                document.getElementById('demo').innerHTML="Password Is Too Short";
                document.getElementById('demo').style.color="Red";
                return false;
            }
            else if(str.search(/[0-9]/) === -1)
            {
                document.getElementById('demo').innerHTML="Password should contains one numeric value ";
                document.getElementById('demo').style.color="Red";
                return false;
            }
            else if(str.search(/[a-z]/) === -1)
            {
                document.getElementById('demo').innerHTML="Password should contains lower case letter value ";
                document.getElementById('demo').style.color="Red";
                return false;
            }
            else if(str.search(/[A-Z]/) === -1)
            {
                document.getElementById('demo').innerHTML="Password should contains upper case letter value ";
                document.getElementById('demo').style.color="Red";
                return false;
            }
            else if(str.search(/[!\@\#\$\%\^\&\*\_\?\:\;\,\.]/) === -1)
            {
                document.getElementById('demo').innerHTML="Password should contains special characters letter value ";
                document.getElementById('demo').style.color="Red";
                return false;
            }
            else 
            {
                document.getElementById('demo').innerHTML="Strong ";
                document.getElementById('demo').style.color="Blue";
                return true;
            }
        }
  
  $(document).ready(function () {
    let edit =false;

    $('#edit-profile-btn').click(function () 
    {
      if(edit == false)
      {
        $('#profile-details').hide()
        $('#profile-edit').show();
        edit = true;
        $(this).text("back")

      }
      else
      {
        $('#profile-details').show()
        $('#profile-edit').hide();
        edit = false;
         $(this).text("edit")

      }

    });
  });

</script>
<%}
    
%> 
</body>
</html>
