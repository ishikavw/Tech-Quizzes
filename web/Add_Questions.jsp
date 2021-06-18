
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>addd</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    </head>
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
clip-path: polygon(0 0, 100% 0, 98% 69%, 86% 94%, 53% 95%, 28% 93%, 18% 89%, 6% 98%);


}
.topnav {
   overflow: hidden;
  padding: 18px 50px 10px 10px;
  background: white;

}
.para {

 background-color: red; 
 font-weight: bold;
 
}
.para a{
  color: white;
  text-align: center;
  padding: 5px 20px;
  font-size: 20px;
  border-radius: 25px;
  align-items: center;
  text-decoration:none;
  background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);

} 
.para a:hover{
    background: linear-gradient(70deg, #840A47 34%, #DD4545 3%);

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
        box-shadow: 10px 5px 5px pink;
      }
      .Btn1:hover{
        background: linear-gradient(70deg, #7D7DF1 3%, #C4556C 60%);
        color: Black;
        
      }
      .c{
      	align-items: center;
        box-shadow: 10px 5px 5px pink;
        border:3px solid;
         border-image-source: linear-gradient(to left, #743ad5, #d53a9d);
         border-image-slice: 1;

      }
      .c:hover{
      	border:none;
      }
        
        
    </style>
    <body>
        <div class="topnav" id="myTopnav">
            <img class="logo" src="images/lgg.jpg"> 
  	</div>
  	<div class="container-fluid p-0 m-0">
        <div class="jumbotron " style="  background-color: #fff;">
            <div class="container rounded float-end" style="  background-color: white;">
                <form method="post" action="ques_insert.jsp" >
                    <div class="form-row ">
                        <div class="col-lg-8  "> 
                            <textarea   name="question" required type = "text" class="form-control my-3 p-2 c" placeholder="Enter Your Question"></textarea> 
                        </div>    
                    </div>
                    <div class="form-row">
                        <div class="col-lg-8 "> 
                            <input required type = "text" class="form-control my-3 p-2 c" name="option1" placeholder="Enter Your option 1"/>
                        </div>    
                    </div>
                    <div class="form-row">
                        <div class="col-lg-8 "> 
                            <input required type = "text" class="c form-control my-3 p-2" name= "option2" placeholder="Enter Your option2"/> 
                        </div>    
                    </div>
                    <div class="form-row">
                    	<div class="col-lg-8 "> 
                           	<input required type = "text" class="c form-control my-3 p-2" name= "option3" placeholder="Enter Your option3"> 
                        </div>    
                    </div>
                    <div class="form-row">
                        <div class="col-lg-8 "> 
                            <input required type = "text" class="c form-control my-3 p-2" name= "option4" placeholder="Enter Your option4 "/> 
                        </div>    
                    </div>
                    <div class="form-row">
                        <div class="col-lg-8 "> 
                            <input required type = "text" class="c form-control my-3 p-2" name= "answer" placeholder="Enter Your answer "/> 
                        </div>    
                    </div>
                    <div class="form-row">
                        <div class="col-lg-8 "> 
                            <input type ="submit" class="Btn1 mt-2 my-3 p-2 " name="submit" value="next"> 
                        </div>    
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
