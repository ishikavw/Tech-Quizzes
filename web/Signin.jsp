<%@page import="Package.entites.User"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
 
    <title>Register</title>

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
      }
      .Btn1{
        border: none;
        outline: none;
        height: 50px;
        width: 100%;
        justify-content: center;
         background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
        color: white;
        border-radius: 4px;
        font-weight: bolder;
      }
      .Btn1:hover{
        background: linear-gradient(70deg, #7D7DF1 3%, #C4556C 60%);
        color: Black;
      }
      .logo{
        margin-right: 50px;
         margin-left: 50px;
         }
         a{
          text-decoration:none;
          color: Black;
          font-weight: bolder;
          margin-left: 80px; 

         }
         h1{
          margin-left: 10px; 
          font-weight: bolder;

         }
    </style>
  </head>
  <body>
    <section class="Form my-4 mx-5 ">
      <div class="container py-4" >
                    <div class="row ">
                      <div class="col-lg-6 image">
                        <img src="images/4.jpg" class="img-fluid">
                      </div>
                      <div class="col-lg-6 px-2 pt-5 part">
                         <h1>Create Account..!</h1>
                            <form action="RegisterServlet"  method="post" id="reg-form">
                              <div class="form-row">
                                <div class="col-lg-8"> 
                                  <input required type = "text" class="form-control my-3 p-2 " name="first_name" placeholder="Enter Your first name"/>
                                </div>    
                              </div>
                              <div class="form-row">
                                <div class="col-lg-8"> 
                                  <input required type = "text" class="form-control my-3 p-2" name="last_name" placeholder="Enter Your last name"/>
                                </div>    
                              </div>
                               <div class="form-row">
                                <div class="col-lg-8"> 
                                  <input required type = "text" class="form-control my-3 p-2" name="user_name" placeholder="Enter Your User name"/> 
                                </div>    
                              </div>
                              <div class="form-row">
                                <div class="col-lg-8"> 
                                    <p id="demo" ></p>
                                  <input required type = "password" class="form-control my-2 p-2" name="user_password" id="pass" onkeyup="passcheck()"  placeholder="Enter Your Password"/>
                                 </div>    
                              </div>
                              <div class="form-row">
                                <div class="col-lg-8"> 
                                    <p id="demoEmail"></p>
                                  <input required type = "email"  class="form-control my-2 p-2"  name="user_email" id="emails" onkeyup="emailcheck()" placeholder="Enter Your email"/>
                                 </div>    
                              </div>
                              <div class="form-row">
                                <div class="col-lg-8"> 
                                  <input type ="submit" class="Btn1 mt-2 my-3 p-2" name="submit" value="Register"> 
                                </div>    
                              </div>
                              <a href="index.jsp">Already on Tech Quizzes?</a>
                            </form>
                          </div>
                        </div>
                      </div>     
      </section>
    
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
       <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script>
        
        var emailcheck = function()
        {
            var str = document.getElementById('emails').value;
            var pattern =  /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
            if(str.match(pattern))
            {
                document.getElementById('demoEmail').innerHTML="";
                document.getElementById('demoEmail').style.color="white";
                return true;
            }
            else
            {
                document.getElementById('demoEmail').innerHTML="Invalid Email Address";
                document.getElementById('demoEmail').style.color="Red";
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
            {   document.getElementById('demo').innerHTML="";
                document.getElementById('demo').style.color="white";
                return true;
            }
        }
        
        $(document).ready(function() {
            console.log("loaded....")
            
            $('#reg-form').on('submit',function(event){
                event.preventDefault();
                let form = new FormData(this);
                $.ajax({
                    url: "RegisterServlet",
                    type: 'POST',
                    data: form,  
                    success:function (data ,textStatus , jqXHR){
                         console.log(data)
                         if(data.trim() === 'InvalidPassword' )
                         {
                            Swal.fire({
                            icon: 'error',
                            title: 'Oops...',
                            text: 'Password did not meet the given criteria'
                            
                            });
                             
                         }
                         else if(data.trim() === 'usererror' || data.trim() === 'error' )
                         {
                            Swal.fire({
                            icon: 'error',
                            title: 'Oops...',
                            text: 'User name already exist' 
                            
                            });
                         }
                     
                         else if(data.trim() === 'emailerror' )
                         {
                            Swal.fire({
                            icon: 'error',
                            title: 'Oops...',
                            text: 'Your email seems wrong..! or Already exist' 
                            
                            });
                         }
                         else if(data.trim() === 'SaveError' )
                         {
                            Swal.fire({
                            icon: 'error',
                            title: 'Oh..',
                            text:  'Something went wrong!'
                               
                             });
                        }
                        else
                        {
                            var v =data.trim(); 
                            Swal.fire(
                                '',
                                'Successfully Created! \n\
                                Your Unique Code (Save This Code) is:'+v,
                                'success'
                                
                            )
                            .then((value) => {
                                window.location = "indexHome.jsp"
                            });
                         }
                            
                    },
                    error:function (jqXHR ,textStatus , errorThrown){
                         console.log(jqXHR)
                         Swal.fire({
                            icon: 'error',
                            title: 'Oops..',
                            text: 'Something went wrong!'
                            })
                            .then((value) => {
                                window.location = "error.jsp"
                            });
                    },
                    processData:false,
                    contentType:false
                });
            });
        });
    
    </script>  
  </body>
</html>