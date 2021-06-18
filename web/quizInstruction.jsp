<%-- 
    Document   : quizInstruction
    Created on : 1 Jun, 2021, 6:37:31 PM
    Author     : Adminpc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="en">
<head>
	<meta charset = "UTF-8">
	<meta name ="viewPort" content = "width = decice-width, initial - scale = 1.0">
	<title>Quize Website</title>
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
 
<style>
	
	 body{
          background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
      }
      .banner-background{
clip-path: polygon(50% 0%, 100% 0, 98% 35%, 95% 88%, 79% 91%, 51% 100%, 21% 91%, 4% 89%, 2% 35%, 0 0);


      }

	li{

		font-size:25px;
		color: black;
		
		
	}
	a{	
	display: block;
  	margin-left: auto;
  	margin-right: auto;
	}
    
    .bt0{
	 background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
	width:380px;
	font-size:25px;
	color:white;
	border-radius:50px;
	height: 50px;
	text-align:center;
	text-decoration:none;
	}
	.bt0:hover{
		 background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
		color:white;
	cursor:pointer;
	transform: translateY(-20px);
	background-color : #510b84;
}
.head{
	text-align: center;
	margin-top:10px;
	font-weight: bolder;
}
img{
	display: block;
  	margin-left: auto;
  	margin-right: auto;
  	padding-top: 40px;
  
}
h2{
	font-size:40px;
}
	
</style>
</style>
</head>

<body>
	<div class="banner-background container-fluid p-0 m-0">
    <div class="jumbotron " style="  background-color: #fff;">
	<div class="container " style="">
		<img class="logo skill " src="images/lgg.jpg"> 
		<div class="head">
			
			
			<h1>Welcome In Tech Quiz</h1>
		</div>
		
		<h2>Instruction:-</h2><br><br>
		<ul>
			<li>Total No of Question: 30</li>
			<li>Time alloted : 30 Minutes.</li>
			<li>1 Marks for each correct answer.</li>
			<li>Click on button to select your answer.</li>
			<li>After completed test, click on Submit.</li>
			<li>DO NOT refresh the page. </li>
		</ul>
			 <a href="put_question.jsp" class="bt0">  Start  Quiz </a>
			 <br><br>
	</div>
</div>
</div>
		
			

</body>
