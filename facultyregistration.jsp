<html>
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
	<link rel="stylesheet" href="studentregis1.css">
</head>
<body>
<jsp:include page="navbar.jsp"/>
<div class="container">
     <h1 class="Display-4 text-center">Faculty Registration</h1>
<div class="row">
    <div class="col-md-8 col-md-offset-1">
      <form class="form-horizontal" role="form" action="http://localhost:8080/examples/project2/facultyregis.jsp">
        <fieldset>

          <!-- Form Name -->
          <legend>Personal Information Details</legend>
      <div class="form-group">    
         <div class="row">
		    <div class="col-lg-3 text-center">
			<p>Name:</p>
			</div>
            <div class="col-lg-3 col-sm-4">
              <input type="text" name="firstName" placeholder="First Name" class="form-control">
            </div>
            <div class="col-lg-3 col-sm-4">
              <input type="text" name="middleName" placeholder="Middle Name" class="form-control">
            </div>
            <div class="col-lg-3 col-sm-4">
              <input type="text" name="lastName" placeholder="Last Name" class="form-control">
            </div>
		</div>	
          
           
         <div class="row">
		  <div class="col-lg-3 text-center">
			<p>Date Of Birth:</p>
		  </div>
            
            <div class="col-lg-4">
              <input type="date" placeholder="Date Of Birth" class="form-control datepicker" name="dob" >
            </div>
		  </div>
            
			
         <div class="row">
			  <div class="col-lg-3 text-center">
			  <p>Gender:</p>
			  </div>
			  <div class="col">
         <div class="form-check-inline">
			  <label class="form-check-label">
				<input type="radio" class="form-check-input" name="gender">Male
			  </label>
		</div>
		<div class="form-check-inline">
			  <label class="form-check-label">
				<input type="radio" class="form-check-input" name="gender">Female
			  </label>
			 </div>
		</div>
			
		  </div>
		  
		  <div class="row">
		  <div class="col-lg-3 text-center">
			<p>Faculty Id:</p>
		  </div>
            
            <div class="col-lg-4">
              <input type="text" placeholder="ex:12345678" class="form-control datepicker" name="facultyId" >
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
			   <div class="col-lg-3">
			     <p>Address Line 1:</p>
			   </div>
            <div class="col-lg-7">
              <input type="text" name="addressLine1" placeholder="Address Line 1" class="form-control">
            </div>
          </div>
		  
		  
          <!-- Text input-->
          
		   <div class="row">
			   <div class="col-lg-3 ">
			     <p>Address Line 2:</p>
			   </div>
           
            <div class="col-lg-7">
              <input type="text" name="addressLine2" placeholder="Address Line 2" class="form-control">
            </div>
          </div>
		  
		 
		  
		  
          <!-- Text input-->
          
		    <div class="row">
			   <div class="col-lg-3 text-center ">
			     <p>City:</p>
			   </div>
               <div class="col-lg-4">
                  <input type="text" name="city" placeholder="City" class="form-control">
               </div>
			</div>
			
			 <div class="row">
			   <div class="col-lg-3 text-center">
			     <p>State:</p>
			   </div>
               <div class="col-lg-4">
                  <input type="text" name="state" placeholder="State" class="form-control">
               </div>
			 </div>
			 
			  <div class="row">
			   <div class="col-lg-3 text-center">
			     <p>Pincode:</p>
			   </div>
             <div class="col-lg-4">
              <input type="text" name="pinCode" placeholder="Pin Code" class="form-control">
            </div>
         
          <!-- Parent/Guadian Contact Section -->
          <!-- Form Name -->
          <legend>Academic Information</legend>
          <!-- Text input-->
          <div class="form-group">
            
			<table class="table">
                
                     <tr>
                            <th>Examination Passed</th>
                            <th>Board/University</th>
                              
							  <th>Year of Passing</th>
							  <th>Over All %</th>
                    </tr>
                
                
                     <tr>
                             <td>Class 10</td>
							 <td>
							      <input type="text" name="tenBoard" placeholder="Ex:CBSE" class="form-control">
							  </td>
                              <td>
							      <input type="text" name="tenyPass" placeholder="Ex:2018" class="form-control">
							  </td>
							  
                         <td>
						 <input type="text" name="tenPercentage" placeholder="Ex:90" class="form-control">
						 </td>
                    </tr>
					
					
					
					
                     <tr>
                            <td>Class 12</td>
							<td>
							      <input type="text" name="twelBoard" placeholder="Ex:CBSE" class="form-control">
							  </td>
                            <td><input type="text" name="twelyPass" placeholder="ex:2019" class="form-control"></td>
                        <td> <input type="text" name="twelPercentage" placeholder="Ex:90" class="form-control"></td>
                   </tr>
                   <tr>
                            <td>Graduation</td>
							<td>
							<input type="text" name="gradBoard" placeholder="Ex:AKTU" class="form-control">
							</td>
                           <td> <input type="text" name="gradyPass" placeholder="Ex:2018" class="form-control"></td>
                     <td> <input type="text" name="gradPercentage" placeholder="Ex:90" class="form-control"></td>
                  </tr>
                
          </table>

			
          </div>

<!-- Emergency Contact Section -->
          <!-- Form Name -->
          <legend>Contact Information</legend>
          <!-- Text input-->
          <div class="form-group">
		  
		      <div class="row">
			     <div class="col-lg-5 text-center">
				    <p>Phone number:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="phNo" placeholder="Ex:Aktu" class="form-control">
				  </div>
			  </div>
		  	  
			  <div class="row">
			     <div class="col-lg-5 text-center">
				    <p>Alternate Phone Number:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="altphNo" placeholder="Ex:RKGIT" class="form-control">
				  </div>
			  </div>
		  
		      <div class="row">
			     <div class="col-lg-5 text-center">
				    <p>Email Id:</p>
				 </div>
		  
	              <div class="col-lg-3 ">
				     <input type="text" name="emailId" placeholder="Ex:CSE/IT" class="form-control">
				  </div>
			  </div>
		      
			  
			  
            </div>
			
            <legend>Login Credentials</legend>
          <!-- Text input-->
          <div class="form-group">
		  
		      <div class="row">
			     <div class="col-lg-5 text-center">
				    <p>Login Id:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="loginId" placeholder="Ex:Aktu" class="form-control">
				  </div>
			  </div>
		  	  
			  <div class="row">
			     <div class="col-lg-5 text-center">
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
		  
	              <div class="col-lg-6 ">
				     <input type="text" name="repassw" placeholder="Ex:CSE/IT" class="form-control">
				  </div>
			  </div>
		      
			  
			  
            </div>
			
            <legend>Job Profile</legend>
          <!-- Text input-->
          <div class="form-group">
		  
		      <div class="row">
			     <div class="col-lg-5 text-center">
				    <p>University Name:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="uniName" placeholder="Ex:Aktu" class="form-control">
				  </div>
			  </div>
		  	  
			  <div class="row">
			     <div class="col-lg-5 text-center">
				    <p>College Name:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="collName" placeholder="Ex:RKGIT" class="form-control">
				  </div>
			  </div>
		  
		      <div class="row">
			     <div class="col-lg-5 text-center">
				    <p>Department:</p>
				 </div>
		  
	              <div class="col-lg-6 ">
				     <input type="text" name="departName" placeholder="Ex:CSE/IT" class="form-control">
				  </div>
			  </div>
		      
			  <div class="row">
			     <div class="col-lg-5 text-center">
				    <p>Qualification:</p>
				 </div>
		  
	              <div class="col-lg-6 ">
				     <input type="text" name="qualification" placeholder="Ex:CSE/IT" class="form-control">
				  </div>
			  </div>
		      
			  <div class="row">
			     <div class="col-lg-5 text-center">
				    <p>Job Experience:</p>
				 </div>
		  
	              <div class="col-lg-6 ">
				     <input type="text" name="jobExp" placeholder="Ex:CSE/IT" class="form-control">
				  </div>
			  </div>
		      
            </div>
			 
             </div>			 
			
			
<!-- Command -->
        
		   <div class="form-group">
		  <div class="row">
            <div class="col-lg-6 text-center pad">
                <button type="submit" class="btn btn-primary" onclick="return validate1()">Submit</button>
			</div>
			<div class="col-lg-6 text-center pad">
                <button type="reset" class="btn btn-secondary">Reset</button>
            </div>
          </div>
        </div>
		
        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<jsp:include page="footer.jsp"/>
</body>
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" </script>
  
</html>
			
			