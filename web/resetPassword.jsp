<%@page import="Package.entites.message"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
 
    <title>Reset</title>

    <style type="text/css">
      
      *{
        padding: 0;
        margin: 0;
        box-sizing: border-box;
      }
     body{
          background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);

          display: flex;
          justify-content: center;
        }

      .banner-background{
      clip-path: polygon(0 0, 71% 0, 100% 0, 95% 76%, 89% 91%, 69% 95%, 0 98%);
      }

      .row{

        background-color:white;
        align-items: center;
        border-radius: 30px; 
        box-shadow: 12px 12px 22px 5px;
      }
      img{
        border-top-left-radius: 50px;
        border-top-right-radius: 50px;
        border-bottom-left-radius:50px;
         width: 600px;
      }
      .Btn1{
        border: none;
        outline: none;
        height: 50px;
        width: 50%;
        justify-content: center;
         background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
        color: white;
        border-radius: 15px;
        font-weight: bolder;
      }
      .Btn1:hover{
        background: linear-gradient(70deg, #7D7DF1 3%, #C4556C 60%);
        color: Black;
      }
         h1{
          
          font-weight: bolder;

         }
    </style>
  </head>
  <body>
    <section class="Form my-4 mx-5 ">
      <div class="container py-4" >
        <div class="row ">
          <div class="col-lg-6 image">
            <img src="images/f1.jpg" class="img-fluid">
          </div>
          <div class="col-lg-6 px-2 pt-5 part">
            <h1>Reset Your Password..</h1>
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
            <form action="resetPasswordServlet" method="POST" >
                <div class="form-row">
                  <div class="col-lg-8"> 
                   <p id="demo" ></p>
                  <input required type = "password" class="form-control my-4 p-2" name="user_password" id="pass" onkeyup="passcheck()" placeholder="Enter Your Password"/>
                  </div> 
                   <div class="col-lg-8"> 
                       <p id="demo1" ></p>
                  <input required type = "password" class="form-control my-4 p-2" name="user_password1" id="pass1" onkeyup="passworkcheck()" placeholder="Confirm Your Password"/>
                  </div> 
                   <input type ="submit" class="Btn1 mt-2 my-3 p-2" name="submit" value="Reset"> 
                </div>   
              </form>
            </div>
          </div>
        </div>     
      </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script>
         var passworkcheck = function()
        {
            var str = document.getElementById('pass').value;
            var str2 = document.getElementById('pass1').value;
            if(str === str2)
            {
                document.getElementById('demo1').innerHTML="";
                document.getElementById('demo1').style.color="white" 
                return true;
                
            }
            else
            {
                document.getElementById('demo1').innerHTML="Your Password Doesn't Match";
                document.getElementById('demo1').style.color="red" 
                return false;
                
            }
            
        }
        
        
         var passcheck = function()
        {
            var str = document.getElementById('pass').value;
            
            if(str.length < 6)
            {
                document.getElementById('demo').innerHTML="Password Is Too Short";
                document.getElementById('demo').style.color="Red" 
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
            {   document.getElementById('demo').innerHTML="Strong ";
                document.getElementById('demo').style.color="white";
                return true;
            }
        }

       </script>
  </body>
</html>