<%-- 
    Document   : result
    Created on : 23 May, 2021, 11:13:24 PM
    Author     : Adminpc

	
s_no
q_no
subject
question
option1
option2
option3
option4
answer
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Package.helper.ConnectionProvider"%>

<%! static int count1=0; %>

<%
        
        if(session.getAttribute("count")!=null )
        {
            if(session.getAttribute("subject")!=null )
            {
                
                String s = (String)session.getAttribute("subject");
                Integer count = (Integer)session.getAttribute("count");
                Integer results = (Integer)session.getAttribute("result");
                count1 = count ;
                String ans = (String)request.getParameter("radio");
                if(ans !=null)
                {
                    

                PreparedStatement ps= ConnectionProvider.getConnection().prepareStatement( "select * from quiz where subject ='"+s+"' AND q_no ='"+count1+"' ");
                ResultSet rs = ps.executeQuery();
                if(rs.next())
                {
                    String answer = rs.getString("answer");
                    if(ans.equals(answer))
                    {
                        results++;
                        session.setAttribute("result",results);
                    }
                }
                if(session.getAttribute("maxSerial")!=null)
                { 
                    Integer max=(Integer)session.getAttribute("maxSerial");
                    if(max.equals(count1))
                    {
                        
                    %>
                        <jsp:forward page="resulttotal.jsp"></jsp:forward>
                
                    <% 
                    }
                }
            }
        }
    }
        

    %>
    
<jsp:forward page="put_question.jsp"></jsp:forward>
