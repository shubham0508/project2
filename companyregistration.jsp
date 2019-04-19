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
     <h1 class="Display-4 text-center">Company Registration</h1>
<div class="row">
    <div class="col-md-8 col-md-offset-1">
      <form class="form-horizontal" role="form" action="http://localhost:8080/examples/project2/companyregis.jsp">
        <fieldset>

          <!-- Form Name -->
          <legend>Basic Details</legend>
      <div class="form-group">    
         <div class="row">
		    <div class="col-lg-4 text-center">
			<p>Name:</p>
			</div>
            <div class="col-lg-3 col-sm-4">
              <input type="text" name="name" placeholder="Name" class="form-control">
            </div>
		</div>	
          
           
         <div class="row">
		  <div class="col-lg-4 text-center">
			<p>Website:</p>
		  </div>
            
            <div class="col-lg-3">
              <input type="text" placeholder="www.google.com" class="form-control " name="website" >
            </div>
		  </div>
            
			
          <div class="row">
		   <div class="col-lg-4  text-center ">
			<p>Year of Establishment:</p>
		   </div>
			<div class="col-lg-4 form-check">
            <input type="text" class="form-control" name="yearEst" placeholder="Aktu">
			</div>
			
		  </div>
		  
		  <div class="row">
		  <div class="col-lg-4 text-center">
			<p>Gst Number:</p>
		  </div>
            
            <div class="col-lg-4">
              <input type="text" placeholder="ex:12345678" class="form-control datepicker" name="gstNo" >
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
			   <div class="col-lg-3 ">
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
				     <input type="text" name="phNo" placeholder="Ex:Aktu" class="form-control">
				  </div>
			  </div>
		  	  
			  <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>Alternate Phone Number:</p>
				 </div>
		  
	              <div class="col-lg-6">
				     <input type="text" name="altphNo" placeholder="Ex:RKGIT" class="form-control">
				  </div>
			  </div>
		  
		      <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>Email Id:</p>
				 </div>
		  
	              <div class="col-lg-6 ">
				     <input type="text" name="emailId" placeholder="Ex:CSE/IT" class="form-control">
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
				     <input type="text" name="wrkArea" placeholder="Ex:Aktu" class="form-control">
				  </div>
			  </div>
		  	  
			  <div class="row">
			     <div class="col-lg-3 text-center">
				    <p>Technologies Supported:</p>
				 </div>
		  
	              <div class="col-lg-4 text-center">
					  <div class="form-group">
					  
                                <select class="form-control size" name="tech1">
								     <option value="">Select Technology</option>
                                     <option value="Java">Java</option>
                                     <option value="Php">Php</option>
                                     <option value="python">python</option>
							    </select>
					 </div>
				  </div>
				  
				  
				  <div class="col-lg-4 text-center">
					  <div class="form-group">
					  
                                <select class="form-control size" name="tech2">
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
			     <div class="col-lg-3 text-center">
				    <p>Re-Type Password:</p>
				 </div>
		  
	              <div class="col-lg-6 ">
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

<jsp:include page="footer.jsp"/>
</body>
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" </script>
  
</html>
			
			