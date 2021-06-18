<%@page import="Package.entites.quiz"%>
<%@page import="Package.entites.quiz"%>
<%@page import="Package.helper.ConnectionProvider"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page errorPage = "errorPage.jsp" %>
<%! static int count1 = 0; %>
<%! static int totalsQ = 0; %>
<!-- quizques
s_no
subject
question
option1 
option2
option3
option4
answer
-->
<!DOCTYPE html>
<html lang="en">
  <head>
      <title>Quiz</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

 	 <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>
  	<!-- Font Awesome CSS -->
  	<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.3.1/css/all.css'>
  	<!---modal-> login.css-->
 
    
    <style>

     html
     {
    font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
    }
*{
  margin:0px;
  padding: 0px;
} 
body{
background: linear-gradient(70deg, #7D7DF1 3%, #C4357C 60%);
}

.banner-background{
clip-path: polygon(0 0, 71% 0, 100% 0, 95% 76%, 89% 91%, 69% 95%, 0 98%);


}
.topnav{
  overflow: hidden;
  padding: 18px 20px 0px 10px;
  background-color: white;
}
.topnav .icon {
  display: none;
}
.topnav .logo
  {
    margin-left:1px;
  }
 .para {

 background-color: white; 
}
.bt {
	background: white;
	border: 5px solid transparent;
	border-image: linear-gradient(to right, #7D7DF1 0%, #C4357C 100%);
	border-image-slice: 20;
  	border-radius: 20px; 
  	width: 100px;
  	height: 50px;
  	font-size:20px;
  	
}

.bt:hover{
  background: linear-gradient(70deg, #7D7DF1 0%, #C4357C 100%);
  color: white;
  border:none;

}
.time
{
    text-align: center;
    color : palevioletred;
    font-size : 20px;
}
    </style>
</head>
<body>
	<div class="topnav" id="myTopnav">
    	<img class="logo" src="images/lgg.jpg"> 
  	</div>
  	<div class="banner-background container-fluid p-0 m-0">
    <div class="jumbotron " style="  background-color: #fff;">
      <div class="container">
          <div class="para ">  

          
                    
<%
     String question = null;
     String option1 = null;
     String option2 = null;
     String option3 = null;
     String option4 = null;
try{
    
    
    if( ConnectionProvider.getConnection() == null  )
    {
        response.sendRedirect("errorPage.jsp");
    }
    else
    {
        Integer count = (Integer)session.getAttribute("count");
        if(session.getAttribute("subject")!=null)
        {
            
            String s = (String)session.getAttribute("subject");
            if(count == 0)
            {
                PreparedStatement ps= (ConnectionProvider.getConnection()).prepareStatement( "select max(q_no) from quiz where subject ='"+s+"' ");
                ResultSet rs=ps.executeQuery();
                if(rs.next())
                {
                    count1=rs.getInt(1);
                    session.setAttribute("maxSerial",count1);
                }
                PreparedStatement ps1 = (ConnectionProvider.getConnection()).prepareStatement( "select count(q_no) from quiz where subject ='"+s+"' ");
                ResultSet rs1 = ps1.executeQuery();
                if(rs1.next())
                {
                    totalsQ = rs1.getInt(1);
                    session.setAttribute("totalQues",totalsQ);
                }
                
            }
            
            count++;
            session.setAttribute("count",count);
            PreparedStatement ps= (ConnectionProvider.getConnection()).prepareStatement( "select * from quiz where subject ='"+s+"' and q_no ='"+count+"' ");
            ResultSet rs=ps.executeQuery();
            quiz q = new quiz();
            if(rs!=null)
            {
                while(rs.next())
                {
%>
                <div class="time">
                   <h4 id="countTime"> </h4> 
                </div>
                <br>
                <form action="result.jsp" method="POST">
                
               <% int s_no = rs.getInt("s_no");
                    q.setQ_no(s_no) ;
                question = rs.getString("question");
                    q.setQuestion(question); %>
               
               <h3>QUES : <%= q.getQuestion() %> </h3> 
               <h5>
                   <br>
               <% option1 = rs.getString("option1");
                     q.setOption1(option1);
               %>
               <input required type="radio" name="radio" value="<%= q.getOption1() %>"> <label><%= q.getOption1() %></label> <br>
               <%  option2 = rs.getString("option2");
                     q.setOption2(option2);
               %>
               <input required type="radio" name="radio" value="<%= q.getOption2() %>"> <label><%= q.getOption2() %></label> <br>
               <%  option3 = rs.getString("option3");
                     q.setOption3(option3);
               %>
               <input required type="radio" name="radio" value="<%= q.getOption3() %>"> <label><%= q.getOption3() %></label> <br>
               <%  option4 = rs.getString("option4");
                     q.setOption4(option4);
               %>
               <input required type="radio" name="radio"  value="<%= q.getOption4() %>"> <label><%= q.getOption4()%></label> <br><br>
               
               </h5>             
                   <%
                    }

            }
            

        }
        else
            {%>
            <jsp:forward page="errorPage.jsp"></jsp:forward>
            <%}
    }
    
               
    
}

catch(Exception e)
{
    e.printStackTrace();
}
finally
{
    
     if(question == null || option1 == null || option2 == null || option3 == null || option4 == null )
        {
               %>
<jsp:forward page="put_question.jsp"></jsp:forward>
<%
    }
}
Integer count = (Integer)session.getAttribute("count");%>  
    <input type="submit" class="bt" name="submit" value="Next">
          	</form>
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
    var countdown = 2 * 60 * 1000;
    var timerId = setInterval(function()
    {
  	countdown -= 1000;
  	var min = Math.floor(countdown / (60 * 1000));
        var sec = Math.floor((countdown - (min * 60 * 1000)) / 1000);
        if (countdown <= 0) 
        {
            alert("Your Time Ended");
            clearInterval(timerId);
            window.location.href="result.jsp"
           
          
        }
        else 
        {
            $("#countTime").html("Time left:  "+ min + " : " + sec);
        }	
    }, 1000);
</script>
</body>
</html>

