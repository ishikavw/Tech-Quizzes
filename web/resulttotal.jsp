<%@page import="Package.dao.UserDao"%>
<%@page import="Package.entites.User"%>
<%@page import="Package.entites.Mark"%>
<%@page import="Package.dao.MarksDao"%>
<%@page import="Package.helper.ConnectionProvider"%>
<%@page import="Package.helper.ConnectionProvider"%>
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
    align-items:center;
    margin-left: 150px;

}
.banner-background{
clip-path: polygon(20% 0%, 80% 0%, 100% 100%, 0% 100%);
}
h1{
    text-align: center;
}
.content {
  max-width: 500px;
  margin: auto;
}

    .bt0{
	background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
	width:200px;
	font-size:25px;
	color:white;
	border-radius:10px;
	height: 50px;
	text-align:center;
        align-items:center;
	text-decoration:none;        
	}
	.bt0:hover{
	background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
	color:white;
	cursor:pointer;
	transform: translateY(-20px);
}
.image{

    align-content: center;
    margin-left: 30px;
    width: 600px;
    height:400px;
}
  
</style>
<body>
     <%
           Integer result = (Integer)session.getAttribute("result");
           String subjects = (String)session.getAttribute("subject");
           Integer total = (Integer)session.getAttribute("totalQues");
           UserDao dao = new UserDao(ConnectionProvider.getConnection()); 
           MarksDao daos = new MarksDao(ConnectionProvider.getConnection()); 
           User user =(User)session.getAttribute("CurrentUser");
           user = dao.getbyUserName(user.getUsername());     
           
           
     %>
  <div class="banner-background container-fluid p-0 m-0">
    <div class="jumbotron " style="  background-color: #fff;">
      <div class="container py-4 ">
        <div class="content">
           
            <% if(daos.saveMarks(result,subjects ,user.getId()))
            {
                if ( ( 0.6 * total ) <= result )
                { 
                %>
                    <img src="images/a1.jpg" class="img-fluid">
                    <h1>Congratulation</h1>
                    <h1>Your score: <%= result %> / <%= total %></h1>
                <%
                }
                else 
                {
                %>
                    <img class="image" src="images/sad_1.jpg" class="img-fluid">
                    <h1>Do more better</h1>
                    <h1>Your score: <%= result %> / <%= total %> </h1>
                <%
                }
                 
            }
            %>
            <a href="indexHome.jsp"class="bt0" > Home </a> 
            <br>
        </div>     
      </div>
  </div>
  </div>

</body>
</html>