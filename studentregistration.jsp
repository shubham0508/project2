<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
	
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
      
     <link rel="stylesheet" href="studentregis1.css">
	 <link href="https://fonts.googleapis.com/css?family=Noto+Serif" rel="stylesheet">
 
</head>
<body>

<jsp:include page="navbar.jsp"/>
<div class="container">
<h1 class="Display-4 text-center">Student Registration</h1>
<div class="row">
    <div class="col-md-8 col-md-offset-1">
      <form class="form-horizontal" role="form" action="http://localhost:8080/examples/project2/studentregis.jsp" name="f">
        <fieldset>

          <!-- Form Name -->
          <legend>Personal Information Details</legend>
      <div class="form-group">    
         <div class="row">
		    <div class="col-lg-3 text-center">
			<p>Name:</p>
			</div>
            <div class="col-lg-3 col-sm-4">
              <input type="text" name="firstName" placeholder="First Name" class="form-control" >
            </div>
            <div class="col-lg-3 col-sm-4">
              <input type="text" name="middleName" placeholder="Middle Name" class="form-control">
            </div>
            <div class="col-lg-3 col-sm-4">
              <input type="text" name="lastName" placeholder="Last Name" class="form-control" >
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
          <br>
<!-- Address Section -->
          <!-- Form Name -->
          <legend>Address Details</legend>
          <!-- Text input-->
          <div class="form-group">
		   <div class="row">
			   <div class="col-lg-3 text-center">
			     <p>Address Line 1:</p>
			   </div>
            <div class="col-lg-7">
              <input type="text" name="addressLine1" placeholder="Address Line 1" class="form-control">
            </div>
          </div>
		  
		  
          <!-- Text input-->
          
		   <div class="row">
			   <div class="col-lg-3 text-center">
			     <p>Address Line 2:</p>
			   </div>
           
            <div class="col-lg-7">
              <input type="text" name="addressLine2" placeholder="Address Line 2" class="form-control">
            </div>
          </div>
		  
		 
		  
		  
		    <div class="row">
			   <div class="col-lg-3 text-center ">
			     <p>City:</p>
			   </div>
               <div class="col-lg-4">
                  <input type="text" name="city" placeholder="City" class="form-control" >
               </div>
			</div>
			
			 <div class="row">
			   <div class="col-lg-3 text-center">
			     <p>State:</p>
			   </div>
               <div class="col-lg-4">
                  <input type="text" name="state" placeholder="State" class="form-control" >
               </div>
			 </div>
			 
			  <div class="row">
			   <div class="col-lg-3 text-center">
			     <p>Pincode:</p>
			   </div>
             <div class="col-lg-4">
              <input type="text" name="pinCode" placeholder="Pin Code" class="form-control" >
            </div>
          </div>
<br>
<!-- Parent/Guadian Contact Section -->
          <!-- Form Name -->
          <legend>Academic Information</legend>
          <!-- Text input-->
          <div class="form-group">
            <div class="pad">
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
          </div>
         <br>
<!-- Emergency Contact Section -->
          <!-- Form Name -->
          <legend>College Information</legend>
          <!-- Text input-->
          <div class="form-group">
		  
		      <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>University Name:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="uniName" placeholder="Ex:Aktu" class="form-control">
				  </div>
			  </div>
		  	  
			  <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>College Name:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="collName" placeholder="Ex:RKGIT" class="form-control" >
				  </div>
			  </div>
		  
		      <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>Graduation Year:</p>
				 </div>
		  
	              <div class="col-lg-6 ">
				     <input type="text" name="yGrad" placeholder="Ex:3 " class="form-control">
				  </div>
			  </div>
		  
		  
            </div>
			<br>
			<legend>Login Credentials</legend>
          <!-- Text input-->
          <div class="form-group">
		  
		      <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>Login Id:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="studentId" placeholder="Ex:Aktu" class="form-control" >
				  </div>
			  </div>
		  	  
			  <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>Password:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="password" name="passw" placeholder="Ex:RKGIT" class="form-control" >
				  </div>
			  </div>
		  
		      <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>Re-Type Password:</p>
				 </div>
		  
	              <div class="col-lg-6 ">
				     <input type="password" name="repassw" placeholder="Ex:CSE/IT" class="form-control" >
				  </div>
			  </div>
		      
			  
			  
            </div>
			<br>
			 <legend>Contact Information</legend>
          <!-- Text input-->
          <div class="form-group">
		  
		      <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>Phone number:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="phNo" placeholder="Ex:Aktu" class="form-control" >
				  </div>
			  </div>
		  	  
			  <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>Alternate Phone Number:</p>
				 </div>
		  
	              <div class="col-lg-4">
				     <input type="text" name="altphNo" placeholder="Ex:RKGIT" class="form-control">
				  </div>
			  </div>
		  
		      <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>Email Id:</p>
				 </div>
		  
	              <div class="col-lg-3 ">
				     <input type="email" name="emailId" placeholder="Ex:CSE/IT" class="form-control" >
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
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
	 <noscript src="studentregis.js"></noscript>

</html>