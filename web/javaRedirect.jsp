<%@page import="Package.entites.Admin"%>
<%@page import="Package.entites.User"%>
<%! static int count = 0; %>
<%! static int results = 0 ;%>

<% 
    String s = "java" ;
    session.setAttribute("subject", s) ;
    session.setAttribute("count", count) ;
    session.setAttribute("result",results);
    User user =(User)session.getAttribute("CurrentUser");
    Admin admin  =(Admin)session.getAttribute("Administrator");
    if(user == null )
    {
        if(admin != null)
        {
    %>
        <jsp:forward page="Admin_choose.jsp"></jsp:forward>
   <% 
        }
    }
    else
    {
    %>
        <jsp:forward page="quizInstruction.jsp"></jsp:forward>
   <%

    }


%>
