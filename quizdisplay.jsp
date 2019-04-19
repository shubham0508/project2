<%@page import="java.sql.*"%>
<html>
</head>
<body>

 <% quizresultbean.quizresultbean qrb = new quizresultbean.quizresultbean(); %>
<% 
      String answer=request.getParameter("answer");
	   String quenumber=qrb.getQuenumber();
	   int q=Integer.parseInt(quenumber);
	  q++;
			String x=Integer.toString(q);
			qrb.setQuenumber(x);
           try
			{
				 
	               
				Class.forName("com.mysql.jdbc.Driver");
	        String url="jdbc:mysql://localhost:3306/placementtyari";
		    Connection conn=DriverManager.getConnection(url,"root","");
		    
			PreparedStatement stmt=conn.prepareStatement(" insert into studentans values(?,?);");
			stmt.setString(1,answer);
			stmt.setString(2,quenumber);
			
		    int i=stmt.executeUpdate();
			
			
			conn.close();
			} 
			catch(Exception e)
			{
				 out.println(e);
		    }
			
%>

<%
    String redirectURL ="http://localhost:8080/examples/project2/quiz.jsp";
    response.sendRedirect(redirectURL);
%>

</body>
</html>