<%@ page import="java.sql.*"%>
<html>
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
	<link rel="stylesheet" href="studentregis.css">
</head>
<body>
<%

             String name="";
			 String website="";
			 String yearest="";
	         String gstno="";      					 
             String companyId="1234";
			 
			 String addressLine1="";
			 String addressLine2="";
			 String city="";
	         String state="";      					 
             String pincode="";
	   
			 String wrkarea="";
			 String tech1="";
	         String tech2="";
             		 
			 String phNo="";
			 String altphNo="";
			 String emailId="";
	   
	   
        try{
			Class.forName("com.mysql.jdbc.Driver");
	        String url="jdbc:mysql://localhost:3306/placementtyari";
		    Connection conn=DriverManager.getConnection(url,"root","");
		    Statement stmt=conn.createStatement();
			Statement stmt1=conn.createStatement();
			Statement stmt2=conn.createStatement();
			Statement stmt3=conn.createStatement();
			Statement stmt4=conn.createStatement();
			
		    ResultSet rs=stmt.executeQuery("Select * from company_info where companyId='"+companyId+"';");
		    while(rs.next())
			{
			name=rs.getString("name");
			website=rs.getString("website");
			yearest=rs.getString("yearest");
			gstno=rs.getString("gstno");
			}
		
		    ResultSet rs1=stmt1.executeQuery("Select * from company_address where companyId='"+companyId+"';");
		    while(rs1.next())
			{
            addressLine1=rs1.getString("addressline1");
			addressLine2=rs1.getString("addressline2");
			city=rs1.getString("city");
			state=rs1.getString("state");
			pincode=rs1.getString("pincode");
			}
			
			 ResultSet rs2=stmt2.executeQuery("Select * from company_industry where companyId='"+companyId+"';");
		    while(rs2.next())
			{
			wrkarea=rs2.getString("wrkarea");
			tech1=rs2.getString("tech1");
			tech2=rs2.getString("tech2");
			}
			
			ResultSet rs3=stmt3.executeQuery("Select * from company_contact where companyId='"+companyId+"';");
		    while(rs3.next())
			{
			phNo=rs3.getString("phNo");
			altphNo=rs3.getString("altphNo");
			emailId=rs3.getString("emailId");
		    }
		
		   
	  }
		  catch(Exception e)
	  {
		   System.out.println(" enter a valid value");
		   System.out.println(e);
	  }
	  

%>
<div class="container">
     <h1 class="Display-1 text-center">Company Registration</h1>
<div class="row">
    <div class="col-md-8 col-md-offset-1">
      <form class="form-horizontal" role="form" action="http://localhost:8080/examples/project2/companyupdaterecord.jsp">
        <fieldset>

          <!-- Form Name -->
          <legend>Basic Details</legend>
      <div class="form-group">    
         <div class="row">
		    <div class="col-lg-3 text-center">
			<p>Name:</p>
			</div>
            <div class="col-lg-3 col-sm-4">
              <input type="text" name="name" placeholder="Name" class="form-control" value="<%=name%>">
            </div>
		</div>	
          
           <br>
         <div class="row">
		  <div class="col-lg-3 text-center">
			<p>Website:</p>
		  </div>
            
            <div class="col-lg-4">
              <input type="text" placeholder="www.google.com" class="form-control " name="website" value="<%=website%>">
            </div>
		  </div>
            <br>
			
          <div class="row">
		   <div class="col-lg-3  text-center ">
			<p>Year of Establishment:</p>
		   </div>
			<div class="col-lg-4 form-check">
            <input type="text" class="form-control" name="yearEst" placeholder="Aktu" value="<%=yearest%>">
			</div>
			
		  </div>
		  
		  <div class="row">
		  <div class="col-lg-3 text-center">
			<p>Gst Number:</p>
		  </div>
            
            <div class="col-lg-4">
              <input type="text" placeholder="ex:12345678" class="form-control datepicker" name="gstNo" value="<%=gstno%>">
            </div>
		  </div>
         
          
      </div>
          <br>
<!-- Address Section -->
          <!-- Form Name -->
          <legend>Address Details</legend>
          <!-- Text input-->
          <div class="form-group">
		   <div class="row">
			   <div class="col-lg-5 text-center">
			     <p>Address Line 1:</p>
			   </div>
            <div class="col-lg-7">
              <input type="text" name="addressLine1" placeholder="Address Line 1" class="form-control" value="<%=addressLine1%>">
            </div>
          </div>
		  
		  
          <!-- Text input-->
          
		   <div class="row">
			   <div class="col-lg-5 ">
			     <p>Address Line 2:</p>
			   </div>
           
            <div class="col-lg-7">
              <input type="text" name="addressLine2" placeholder="Address Line 2" class="form-control" value="<%=addressLine2%>">
            </div>
          </div>
		  
		  </div>
		  
		  
          <!-- Text input-->
          <div class="form-group">
		    <div class="row">
			   <div class="col-lg-3 text-center ">
			     <p>City:</p>
			   </div>
               <div class="col-lg-4">
                  <input type="text" name="city" placeholder="City" class="form-control" value="<%=city%>">
               </div>
			</div>
			
			 <div class="row">
			   <div class="col-lg-3 text-center">
			     <p>State:</p>
			   </div>
               <div class="col-lg-4">
                  <input type="text" name="state" placeholder="State" class="form-control" value="<%=state%>">
               </div>
			 </div>
			 
			  <div class="row">
			   <div class="col-lg-3 text-center">
			     <p>Pincode:</p>
			   </div>
             <div class="col-lg-4">
              <input type="text" name="pinCode" placeholder="Pin Code" class="form-control" value="<%=pincode%>">
            </div>
          </div>
          <!-- Parent/Guadian Contact Section -->
          <!-- Form Name -->
          
<!-- Emergency Contact Section -->
          <!-- Form Name -->
          <legend>Contact Information</legend>
          <!-- Text input-->
          <div class="form-group">
		  
		      <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>Phone number:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="phNo" placeholder="Ex:Aktu" class="form-control" value="<%=phNo%>">
				  </div>
			  </div>
		  	  
			  <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>Alternate Phone Number:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="altphNo" placeholder="Ex:RKGIT" class="form-control" value="<%=altphNo%>">
				  </div>
			  </div>
		  
		      <div class="row">
			     <div class="col-lg-5 text-center">
				    <p>Email Id:</p>
				 </div>
		  
	              <div class="col-lg-3 ">
				     <input type="text" name="emailId" placeholder="Ex:CSE/IT" class="form-control" value="<%=emailId%>">
				  </div>
			  </div>
		      
			  
			  
            </div>
			
			<!-- Form Name -->
          <legend>Industry</legend>
          <!-- Text input-->
          <div class="form-group">
		  
		      <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>Working Areas:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="wrkArea" placeholder="Ex:Aktu" class="form-control" value="<%=wrkarea%>">
				  </div>
			  </div>
		  	  
			  <div class="row">
			     <div class="col-lg-5 text-center">
				    <p>Technologies Supported:</p>
				 </div>
		  
	              <div class="col-lg-4 text-center">
					  <div class="form-group">
                                <select class="form-control size" name="tech1" value="<%=tech1%>">
								     <option value="">Select Technology</option>
                                  
                                     <option value="Java">Java</option>
                                     <option value="Php">Php</option>
                                      <option value="python">python</option>


                                   </select>
					 </div>
				  </div>
				  
				  
				  <div class="col-lg-4 text-center">
					  <div class="form-group">
                                <select class="form-control size" name="tech2" value="<%=tech2%>">
								     <option value="">Select Technology</option>
                                  
                                     <option value="Java">Java</option>
                                     <option value="Php">Php</option>
                                      <option value="python">python</option>


                                   </select>
					 </div>
				  </div>
				  
			  </div>
		  
            </div>
			
            <legend>Login Credentials</legend>
          <!-- Text input-->
          <div class="form-group">
		  
		      <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>Login Id:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="loginId" placeholder="Ex:Aktu" class="form-control" value="<%=companyId%>">
				  </div>
			  </div>
		  	  
			  <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>Password:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="passw" placeholder="Ex:RKGIT" class="form-control">
				  </div>
			  </div>
		  
		      <div class="row">
			     <div class="col-lg-5 text-center">
				    <p>Re-Type Password:</p>
				 </div>
		  
	              <div class="col-lg-3 ">
				     <input type="text" name="repassw" placeholder="Ex:CSE/IT" class="form-control">
				  </div>
			  </div>
		      
			  
			  
            </div>
			
             
             			 
			
			
<!-- Command -->
        <div class="form-group">
		  <div class="row">
            <div class="col-lg-6 text-center">
                <button type="submit" class="btn btn-secondary">Reset</button>
			</div>
			<div class="col-lg-6 text-center">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
          </div>
        </div>
        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->


</body>
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" </script>
  
</html>
			
			