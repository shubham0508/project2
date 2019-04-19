<%@page import="java.sql.*"%>
 

<html>
<head>
</head>
<body>

       <%
	         String firstName=request.getParameter("firstName");
			 String middleName=request.getParameter("middleName");
			 String lastName=request.getParameter("lastName");
	         String dob=request.getParameter("dob");      					 
             String gender=request.getParameter("gender");
	   
             
			 String addressline1=request.getParameter("addressLine1");
			 String addressline2=request.getParameter("addressLine2");
			 String city=request.getParameter("city");
	         String state=request.getParameter("state");      					 
             String pincode=request.getParameter("pinCode");
	   
             
			 String tenBoard=request.getParameter("tenBoard");
			 String tenyPass=request.getParameter("tenyPass");
			 String tenPercentage=request.getParameter("tenPercentage");
	         String twelBoard=request.getParameter("twelBoard");      					 
             String twelypass=request.getParameter("twelyPass");
	         String twelPercentage=request.getParameter("twelPercentage");
			 String gradBoard=request.getParameter("gradBoard");
			 String gradyPass=request.getParameter("gradyPass");
	         String gradPercentage=request.getParameter("gradPercentage");      					 
            
			 
			 String uniName=request.getParameter("uniName");
			 String collName=request.getParameter("collName");
	         String yGrad=request.getParameter("yGrad");   

             String phNo=request.getParameter("phNo");
			 String altphNo=request.getParameter("altphNo");
			 String emailId=request.getParameter("emailId");			 
            
	         String studentId=request.getParameter("studentId");
	   
        try{
			Class.forName("com.mysql.jdbc.Driver");
	        String url="jdbc:mysql://localhost:3306/placementtyari";
		    Connection conn=DriverManager.getConnection(url,"root","");
		   
		    PreparedStatement stmt=conn.prepareStatement(" insert into student_info values(?,?,?,?,?,?);");
			stmt.setString(1,firstName);
			stmt.setString(2,middleName);
			stmt.setString(3,lastName);
			stmt.setString(4,dob);
			stmt.setString(5,gender);
			stmt.setString(6,studentId);
		
			PreparedStatement stmt1=conn.prepareStatement("insert into student_address values(?,?,?,?,?,?);");
            stmt1.setString(1,addressline1);
			stmt1.setString(2,addressline2);
			stmt1.setString(3,city);
			stmt1.setString(4,state);
			stmt1.setString(5,pincode);
			stmt1.setString(6,studentId);
			
			PreparedStatement stmt2=conn.prepareStatement("insert into student_academic values(?,?,?,?,?,?,?,?,?,?);");
			stmt2.setString(1,tenBoard);
			stmt2.setString(2,tenyPass);
			stmt2.setString(3,tenPercentage);
			stmt2.setString(4,twelBoard);
			stmt2.setString(5,twelypass);
		    stmt2.setString(6,twelPercentage);
			stmt2.setString(7,gradBoard);
			stmt2.setString(8,gradyPass);
			stmt2.setString(9,gradPercentage);
		    stmt2.setString(10,studentId);
		    
			
			
			PreparedStatement stmt3=conn.prepareStatement("insert into student_college values(?,?,?,?);");
			stmt3.setString(1,uniName);
			stmt3.setString(2,collName);
			stmt3.setString(3,yGrad);
		    stmt3.setString(4,studentId);
		    
			PreparedStatement stmt4=conn.prepareStatement("insert into student_contact values(?,?,?,?);");
			stmt4.setString(1,phNo);
			stmt4.setString(2,altphNo);
			stmt4.setString(3,emailId);
			stmt4.setString(4,studentId);
		
		    int i=stmt.executeUpdate();
			int i1=stmt1.executeUpdate();
			int i2=stmt2.executeUpdate();
			int i3=stmt3.executeUpdate();
			int i4=stmt4.executeUpdate();
			conn.close();
		  
	  }
		  catch(Exception e)
	  {
		   System.out.println(" enter a valid value");
		   System.out.println(e);
	  }
	  



   %>
   <%
    String redirectURL ="http://localhost:8080/examples/project2/studentdashboard.jsp";
    response.sendRedirect(redirectURL);
%>
   
        
</body>
</html>