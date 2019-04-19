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
             
	         String firstName="";
			 String middleName="";
			 String lastName="";
	         String dob="";      					 
             String gender="";
	         String facultyId="1234";
             
			 String addressLine1="";
			 String addressLine2="";
			 String city="";
	         String state="";      					 
             String pincode="";
	   
             
			 String tenBoard="";
			 String tenyPass="";
			 String tenPercentage="";
	         String twelBoard="";      					 
             String twelyPass="";
	         String twelPercentage="";
			 String gradBoard="";
			 String gradyPass="";
	         String gradPercentage="";      					 
            
			 
			 String uniName="";
			 String collName="";
	         String departName="";
             String qualification="";
             String jobExp="";
			 
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
			
			ResultSet rs=stmt.executeQuery("Select * from faculty_info where facultyId='"+facultyId+"';");
		    while(rs.next())
			{
			firstName=rs.getString("firstname");
			middleName=rs.getString("middleName");
			lastName=rs.getString("lastName");
			dob=rs.getString("dob");
			gender=rs.getString("gender");
			}
			
			ResultSet rs1=stmt1.executeQuery("Select * from faculty_address where facultyId='"+facultyId+"';");
			while(rs1.next())
			{
            addressLine1=rs1.getString("addressline1");
			addressLine2=rs1.getString("addressline2");
			city=rs1.getString("city");
			state=rs1.getString("state");
			pincode=rs1.getString("pincode");
			}
			
			ResultSet rs2=stmt2.executeQuery("Select * from faculty_academic where facultyId='"+facultyId+"';");
			while(rs2.next())
			{
			tenBoard=rs2.getString("tenBoard");
			tenyPass=rs2.getString("tenyPass");
			tenPercentage=rs2.getString("tenPercentage");
			twelBoard=rs2.getString("twelBoard");
			twelyPass=rs2.getString("twelyPass");
		    twelPercentage=rs2.getString("twelPercentage");
			gradBoard=rs2.getString("gradBoard");
			gradyPass=rs2.getString("gradyPass");
			gradPercentage=rs2.getString("gradPercentage");
			}
			
		    ResultSet rs3=stmt3.executeQuery("Select * from faculty_college where facultyId='"+facultyId+"';");
			while(rs3.next())
			{	
			uniName=rs3.getString("uniName");
			collName=rs3.getString("collName");
			departName=rs3.getString("departName");
			qualification=rs3.getString("qualification");
			jobExp=rs3.getString("jobExp");
			}
		    
			 ResultSet rs4=stmt4.executeQuery("Select * from faculty_contact where facultyId='"+facultyId+"';");
			while(rs4.next())
			{	
		     phNo=rs4.getString("phNo");
			altphNo=rs4.getString("altphNo");
			emailId=rs4.getString("emailId");
			}
		    
			
		
		    conn.close();
		  
	  }
		  catch(Exception e)
	  {
		   System.out.println(" enter a valid value");
		   System.out.println(e);
	  }
	  
%>
<div class="container">
     <h1 class="Display-1 text-center">Faculty Registration</h1>
<div class="row">
    <div class="col-md-8 col-md-offset-1">
      <form class="form-horizontal" role="form" action="http://localhost:8080/examples/project2/facultyupdaterecord.jsp">
        <fieldset>

          <!-- Form Name -->
          <legend>Personal Information Details</legend>
      <div class="form-group">    
         <div class="row">
		    <div class="col-lg-3 text-center">
			<p>Name:</p>
			</div>
            <div class="col-lg-3 col-sm-4">
              <input type="text" name="firstName" placeholder="First Name" class="form-control" value="<%=firstName%>">
            </div>
            <div class="col-lg-3 col-sm-4">
              <input type="text" name="middleName" placeholder="Middle Name" class="form-control" value="<%=middleName%>">
            </div>
            <div class="col-lg-3 col-sm-4">
              <input type="text" name="lastName" placeholder="Last Name" class="form-control" value="<%=lastName%>">
            </div>
		</div>	
          
           <br>
         <div class="row">
		  <div class="col-lg-3 text-center">
			<p>Date Of Birth:</p>
		  </div>
            
            <div class="col-lg-4">
              <input type="date" placeholder="Date Of Birth" class="form-control datepicker" name="dob" value="<%=dob%>">
            </div>
		  </div>
            <br>
			
          <div class="row">
		   <div class="col-lg-3  text-center ">
			<p>Gender:</p>
		   </div>
			<div class="col-lg-4 form-check">
            <input type="radio" class="form-check-input form-control" name="gender" value="M"><p>Male:</p>
			</div>
			<div class="col-lg-4 form-check align-start">
			<input type="radio" class="form-check-input form-control" name="gender" value="F"><p>Female:</p>
            </div>
			
		  </div>
		  
		  <div class="row">
		  <div class="col-lg-3 text-center">
			<p>Faculty Id:</p>
		  </div>
            
            <div class="col-lg-4">
              <input type="text" placeholder="ex:12345678" class="form-control datepicker" name="facultyId" value="<%=facultyId%>">
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
          <legend>Academic Information</legend>
          <!-- Text input-->
          <div class="form-group">
            
			<table class="table table-bordered">
                <thead>
                     <tr>
                            <th>Examination Passed</th>
                            <th>Board/University</th>
                              
							  <th>Year of Passing</th>
							  <th>Over All %</th>
                    </tr>
                </thead>
                <tbody>
                     <tr>
                             <td>Class 10</td>
							 <td>
							      <input type="text" name="tenBoard" placeholder="Ex:CBSE" class="form-control" value="<%=tenBoard%>">
							  </td>
                              <td>
							      <input type="text" name="tenyPass" placeholder="Ex:2018" class="form-control" value="<%=tenyPass%>">
							  </td>
							  
                         <td>
						 <input type="text" name="tenPercentage" placeholder="Ex:90" class="form-control" value="<%=tenPercentage%>">
						 </td>
                    </tr>
					
					
					
					
                     <tr>
                            <td>Class 12</td>
							<td>
							      <input type="text" name="twelBoard" placeholder="Ex:CBSE" class="form-control" value="<%=twelBoard%>">
							  </td>
                            <td><input type="text" name="twelyPass" placeholder="ex:2019" class="form-control" value="<%=twelyPass%>"></td>
                        <td> <input type="text" name="twelPercentage" placeholder="Ex:90" class="form-control" value="<%=twelPercentage%>"></td>
                   </tr>
                   <tr>
                            <td>Graduation</td>
							<td>
							<input type="text" name="gradBoard" placeholder="Ex:AKTU" class="form-control" value="<%=gradBoard%>">
							</td>
                           <td> <input type="text" name="gradyPass" placeholder="Ex:2018" class="form-control" value="<%=gradyPass%>"></td>
                     <td> <input type="text" name="gradPercentage" placeholder="Ex:90" class="form-control" value="<%=gradPercentage%>"></td>
                  </tr>
                </tbody>
          </table>

			
          </div>

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
			
            <legend>Login Credentials</legend>
          <!-- Text input-->
          <div class="form-group">
		  
		      <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>Login Id:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="loginId" placeholder="Ex:Aktu" class="form-control">
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
			
            <legend>Job Profile</legend>
          <!-- Text input-->
          <div class="form-group">
		  
		      <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>University Name:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="uniName" placeholder="Ex:Aktu" class="form-control" value="<%=uniName%>">
				  </div>
			  </div>
		  	  
			  <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>College Name:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="collName" placeholder="Ex:RKGIT" class="form-control" value="<%=collName%>">
				  </div>
			  </div>
		  
		      <div class="row">
			     <div class="col-lg-5 text-center">
				    <p>Department:</p>
				 </div>
		  
	              <div class="col-lg-3 ">
				     <input type="text" name="departName" placeholder="Ex:CSE/IT" class="form-control" value="<%=departName%>">
				  </div>
			  </div>
		      
			  <div class="row">
			     <div class="col-lg-5 text-center">
				    <p>Qualification:</p>
				 </div>
		  
	              <div class="col-lg-3 ">
				     <input type="text" name="qualification" placeholder="Ex:CSE/IT" class="form-control" value="<%=qualification%>">
				  </div>
			  </div>
		      
			  <div class="row">
			     <div class="col-lg-5 text-center">
				    <p>Job Experience:</p>
				 </div>
		  
	              <div class="col-lg-3 ">
				     <input type="text" name="jobExp" placeholder="Ex:CSE/IT" class="form-control" value="<%=jobExp%>">
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
			
			