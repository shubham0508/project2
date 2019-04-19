<%@page import="java.sql.*"%>
 
<html>
<head>
</head>
<body>
       <%
	         String name=request.getParameter("name");
			 String collegeId=request.getParameter("collId");
			 String website=request.getParameter("website");
			 String uniName=request.getParameter("uniName");
	   
             
			 String addressline1=request.getParameter("addressLine1");
			 String addressline2=request.getParameter("addressLine2");
			 String city=request.getParameter("city");
	         String state=request.getParameter("state");      					 
             String pincode=request.getParameter("pinCode");
	   			 
            
			 String phNo=request.getParameter("phNo");
			 String altphNo=request.getParameter("altphNo");
			 String emailId=request.getParameter("emailId");
	   
	   
        try{
			Class.forName("com.mysql.jdbc.Driver");
	        String url="jdbc:mysql://localhost:3306/placementtyari";
		    Connection conn=DriverManager.getConnection(url,"root","");
		   
		    PreparedStatement stmt=conn.prepareStatement(" insert into college_info values(?,?,?,?);");
			stmt.setString(1,name);
			stmt.setString(2,website);
			stmt.setString(3,uniName);
			stmt.setString(4,collegeId);
		
			PreparedStatement stmt1=conn.prepareStatement("insert into college_address values(?,?,?,?,?,?);");
            stmt1.setString(1,addressline1);
			stmt1.setString(2,addressline2);
			stmt1.setString(3,city);
			stmt1.setString(4,state);
			stmt1.setString(5,pincode);
			stmt1.setString(6,collegeId);
			
			
			PreparedStatement stmt4=conn.prepareStatement("insert into college_contact values(?,?,?,?);");
			stmt4.setString(1,phNo);
			stmt4.setString(2,altphNo);
			stmt4.setString(3,emailId);
		    stmt4.setString(4,collegeId);
		
		    int i=stmt.executeUpdate();
			int i1=stmt1.executeUpdate();
			int i4=stmt4.executeUpdate();
			conn.close();
		  
	  }
		  catch(Exception e)
	  {
		   System.out.println(" enter a valid value");
		   System.out.println(e);
	  }
	  



   %>
</body>
</html>