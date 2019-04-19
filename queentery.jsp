<%@page import="java.sql.*"%>
<%! static int quenumber=1;%>
<html>
<body>
<% 
      String question=request.getParameter("question");
	  String option1=request.getParameter("option1");
	  String option2=request.getParameter("option2");
	  String option3=request.getParameter("option3");
	  String option4=request.getParameter("option4");
	  String answer=request.getParameter("answer");
     
           
		   try
			{
			
				Class.forName("com.mysql.jdbc.Driver");
	        String url="jdbc:mysql://localhost:3306/placementtyari";
		    Connection conn=DriverManager.getConnection(url,"root","");
		   
		    PreparedStatement stmt=conn.prepareStatement(" insert into aptitudeque values(?,?,?,?,?,?,?);");
			stmt.setString(1,question);
			stmt.setString(2,option1);
			stmt.setString(3,option2);
			stmt.setString(4,option3);
			stmt.setString(5,option4);
			stmt.setString(6,answer);
			stmt.setInt(7,quenumber);
			
			int i=stmt.executeUpdate();
			quenumber++;
			
			conn.close();
			
			} 
			catch(Exception e)
			{
				 out.println(e);
		    }
%>

<%
    String redirectURL = "http://localhost:8080/examples/project2/quiz1.jsp";
    response.sendRedirect(redirectURL);
%>
</body>
</html>