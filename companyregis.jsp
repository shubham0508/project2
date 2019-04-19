<%@page import="java.sql.*"%>
  
<html>
<head>
</head>
<body>
       <%
	         String name=request.getParameter("name");
			 String website=request.getParameter("website");
			 String yearest=request.getParameter("yearEst");
	         String gstno=request.getParameter("gstNo");      					 
             
             
			 String addressline1=request.getParameter("addressLine1");
			 String addressline2=request.getParameter("addressLine2");
			 String city=request.getParameter("city");
	         String state=request.getParameter("state");      					 
             String pincode=request.getParameter("pinCode");
	   
             
			 String wrkarea=request.getParameter("wrkArea");
			 String tech1=request.getParameter("tech1");
	         String tech2=request.getParameter("tech2");
             
			 
			 String companyId=request.getParameter("loginId");
			 String passw=request.getParameter("passw");
	         String repassw=request.getParameter("repassw");
             			 
            
			 String phNo=request.getParameter("phNo");
			 String altphNo=request.getParameter("altphNo");
			 String emailId=request.getParameter("emailId");
	   
	   
        try{
			Class.forName("com.mysql.jdbc.Driver");
	        String url="jdbc:mysql://localhost:3306/placementtyari";
		    Connection conn=DriverManager.getConnection(url,"root","");
		   
		    PreparedStatement stmt=conn.prepareStatement(" insert into company_info values(?,?,?,?,?);");
			stmt.setString(1,name);
			stmt.setString(2,website);
			stmt.setString(3,yearest);
			stmt.setString(4,gstno);
			stmt.setString(5,companyId);
			
		
			PreparedStatement stmt1=conn.prepareStatement("insert into company_address values(?,?,?,?,?,?);");
            stmt1.setString(1,addressline1);
			stmt1.setString(2,addressline2);
			stmt1.setString(3,city);
			stmt1.setString(4,state);
			stmt1.setString(5,pincode);
			stmt1.setString(6,companyId);
			
			PreparedStatement stmt2=conn.prepareStatement("insert into company_login values(?,?,?);");
			stmt2.setString(1,companyId);
			stmt2.setString(2,passw);
			stmt2.setString(3,repassw);
		   
		    
			
			
			PreparedStatement stmt3=conn.prepareStatement("insert into company_industry values(?,?,?,?);");
			stmt3.setString(1,wrkarea);
			stmt3.setString(2,tech1);
			stmt3.setString(3,tech2);
			stmt3.setString(4,companyId);
			
			PreparedStatement stmt4=conn.prepareStatement("insert into company_contact values(?,?,?,?);");
			stmt4.setString(1,phNo);
			stmt4.setString(2,altphNo);
			stmt4.setString(3,emailId);
		    stmt4.setString(4,companyId);
		
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
</body>
</html>