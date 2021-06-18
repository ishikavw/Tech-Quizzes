<%@page import="Package.entites.quiz"%>
<%@page import="Package.helper.ConnectionProvider"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="com.sun.org.apache.bcel.internal.generic.Select"%>
<%! static int count=0; %>
<%! static int count1=0; %>
<!-- quizques
s_no
subject
question
option1
option2
option3
option4
answer

s_no
subject
question
option1
option2
option3
option4
answer
1
tech
A program attempts to generate as many permutation...
cabd
abcd
dcba
cabd
cabd

-->
<%
try{
    
    
    if( ConnectionProvider.getConnection() == null  )
    {
        response.sendRedirect("errorPage.jsp");
    }
    else
    {
        if(count==0)
        {
            String query1 = "select min(s_no) from quizques where subject = 'tech' ";
            PreparedStatement ps1= (ConnectionProvider.getConnection()).prepareStatement(query1);
            String query2 = "select max(s_no) from quizques where subject = 'tech' ";
            PreparedStatement ps2 = (ConnectionProvider.getConnection()).prepareStatement(query2);
            ResultSet rs1= ps1.executeQuery();
            ResultSet rs2=ps2.executeQuery();
            if(rs2.next())
            {
                count1=rs2.getInt(1);
                session.setAttribute("max",count1);
            }
            if(rs1.next())
            {
                count=rs1.getInt(1);
                session.setAttribute("min",count);
            }
        }
        if(count > 0)
        {
            PreparedStatement ps=(ConnectionProvider.getConnection()).prepareStatement("select * from quizques where subject = 'tech' and s_no='"+count+"' ");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
               quiz q = new quiz();
               String question = rs.getString("question");
               q.setQuestion(question);
               
               q.setOption1(rs.getString("option1"));
               q.setOption2(rs.getString("option2"));
               q.setOption3(rs.getString("option3"));
               q.setOption4(rs.getString("option4"));
               q.setAnswer(rs.getString("answer"));
               
            }
        }
        System.out.print(count);
        count++;
        session.setAttribute("count",count);
        if(count>(Integer)session.getAttribute("max"))
        {
            count=0;
            session.setAttribute("ans",null);
        }
       


    }
}
catch(Exception e)
{
    e.printStackTrace();
}


%>
<jsp:forward page="put_question.jsp"></jsp:forward>