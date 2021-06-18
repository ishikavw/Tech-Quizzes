<%@page import="Package.entites.message"%>
<!DOCTYPE html>
<html>
<head>
  <title>Tech Quizzes</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>
  <!-- Font Awesome CSS -->
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.3.1/css/all.css'>
  <!---modal-> login.css-->
  <link rel="stylesheet" type="text/css" href="login.css">
  <!--home.css--->
 <link rel="stylesheet" type="text/css" href="home.css">

</head>
<body>
   <div class="topnav" id="myTopnav">
    <img class="logo" src="images/lgg.jpg"> 
    <a href="Signin.jsp">Sign up</a>
    <a href="#myModal" class="trigger-btn" data-toggle="modal"> Log in</a>
    <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
  </div>
                <%
                    message mssg = (message)session.getAttribute("msg");
                    if( mssg != null)
                    {
                 %>
                   <div class="alert <%=  mssg.getCssClass() %>" role="alert">
                     <strong> <%=  mssg.getContent() %> </<strong>
                           
                    </div>
                  <%
                      session.removeAttribute("msg");
                    }
                   %>
  <div class="banner-background container-fluid p-0 m-0">
    <div class="jumbotron " style="  background-color: #fff;">
      <div class="container">
          <div class="para ">  <img class="skill rounded float-end" src="images/skills.jpg"> 
            <h3 class="display-5" style="font-weight: bold; ">Welcome To Tech Quizzes..</h3> 
              <br>
              <p>Programming is the process of creating a set of instructions that <br> tell a computer how to perform a task Programming can be  done <br> using a variety of computer programming languages.</p> 
              <p>We Provide Quizzes on programming languages , So you can practice your skills,<br> learn from your mistakes and prepare a better version of you.</p>
              <p>If you want to make yourself a hot ticket and score awesome coding jobs, So practice, Here</p>
              <a href="Signin.jsp">Lets Get Started -></a>
              <br><br><br><br>
          </div>
        </div>
      </div>
  </div>
<!---ed-->
<!-- Modal -->

<div id="myModal" class="modal fade">
  <div class="modal-dialog modal-login modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">    
       <img class="logo" src="images/lgg.jpg">    
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
      </div>
      <div class="modal-body body">
        <div class="modal-title title">
          <h4>Welcome back</h4>
        </div>
          <div class="d-flex flex-column text-center">
            <form action = "LoginServlet" method="POST" >
              <div class="form">
              <div class="form-group">
                <i class="fa fa-user"></i>
                  <input name="user_name" type="text" class="form-control" placeholder="Username" required="required">
              </div>
              <div class="form-group">
                <i class="fa fa-lock"></i>
                  <input name="user_password" type="password" class="form-control" placeholder="Password" required="required">         
              </div>
              </div>
              <div class="forget">
                <a  href="forgotPassword.jsp"> Forget Your Password ?</a>
              </div>
              <div class="submit">
                <input type="submit" class="bt" name="submit" value="Login">
                </div>
            </form>
          </div>
          <div class="New">
            <a href="Signin.jsp">Not on Tech Quizzes yet? Sign up</a>
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

<script type="text/javascript">
  function myFunction() 
  {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>
</body>
</html>
