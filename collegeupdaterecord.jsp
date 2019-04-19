<%@ page import="java.sql.*"%>

<html>
<head>
      <style>
	  
.j
{
	padding:100px 30px;
	color:black;
}
	 
      </style>      
</head>
<body>
 
 
 
<%
             String name=request.getParameter("name");
			 String website=request.getParameter("website");
			 String uniName=request.getParameter("uniName");
	         String collegeId=request.getParameter("collId");
			 
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
		   
		    PreparedStatement stmt=conn.prepareStatement("Update college_info SET name=?,website=?,uniName=? where collegeId='"+collegeId+"';");
			stmt.setString(1,name);
			stmt.setString(2,website);
			stmt.setString(3,uniName);
			
			PreparedStatement stmt1=conn.prepareStatement("Update college_address set addressline1=?,addressline2=?,city=?,state=?,pincode=? where collegeId='"+collegeId+"';");
            stmt1.setString(1,addressline1);
			stmt1.setString(2,addressline2);
			stmt1.setString(3,city);
			stmt1.setString(4,state);
			stmt1.setString(5,pincode);
			  
			PreparedStatement stmt4=conn.prepareStatement("Update college_contact set phNo=?,altphNo=?,emailId=? where collegeId='"+collegeId+"';");
			stmt4.setString(1,phNo);
			stmt4.setString(2,altphNo);
			stmt4.setString(3,emailId);
		    
		
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

     <div class="container j">
	    
	   <h1> All the records has been updated
	     
	 </div>
 
	 
   <jsp:include page="footer.jsp"/>     
</body>
</html>