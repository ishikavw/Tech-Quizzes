<!DOCTYPE html>
<html>
<head>
  <title></title>
</head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<style type="text/css">
  body{
     background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
  }
    a{	
        display: block;
    }

    
    .bt0{
	 background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
	width:200px;
	font-size:25px;
	color:white;
	border-radius:10px;
	height: 50px;
	text-align:center;
	text-decoration:none;
	display: inline-block;
        margin: 5px; /* space between buttons */
	}
	.bt0:hover{
	background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
	color:white;
	cursor:pointer;
	transform: translateY(-20px);
}
h1{
	margin-right: 20px;
}
.image{
    width:450px;
    height:400px;
}
  
</style>
<body>
  <div class="container-fluid p-0 m-0" style="  background-color: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);">
      <div class="jumbotron " style="  background-color:white">
      	<div class="container py-4 banner-background ">
            <br><br><br><br>
        	<div class="row ">
          		<div class="col-lg-6 image">
            		<img src="images/chose.jpg" class="img-fluid image">
          		</div>
          		<div class="col-lg-6 px-2 pt-5 part">
            		<h1>What You Wanna do?</h1>
 					<br><br>
                   <a href="Add_Questions.jsp"class="bt0" > Add Question </a> <a href="viewQuestion.jsp"class="bt0 " > View Question </a>
            	</div>
          	</div>
        </div>     
      </div>
  </div>

</body>
</html>
