<html lang="en">
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="studentregis1.css">
	<style>
	  .siz
	     {
		     font-sixe:20px;
			 text-align:center;
		 }
	</style>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<div class="container">
     <h1 class="Display-1 text-center">College Registration</h1>
<div class="row">
    <div class="col-md-8 col-md-offset-1">
      <form class="form-horizontal" role="form" action="http://localhost:8080/examples/project2/collegeregis.jsp">
        <fieldset>

          <!-- Form Name -->
          <legend>Basic Details</legend>
      <div class="form-group">    
         <div class="row">
		    <div class="col-lg-3 text-center">
			<p>Name:</p>
			</div>
            <div class="col-lg-4">
              <input type="text" name="name" placeholder="Name" class="form-control">
            </div>
		</div>	
          
           
         <div class="row">
		  <div class="col-lg-3 text-center">
			<p>Website:</p>
		  </div>
            
            <div class="col-lg-4">
              <input type="text" placeholder="www.google.com" class="form-control " name="website" >
            </div>
		  </div>
           
			
          <div class="row">
		   <div class="col-lg-3  text-center ">
			<p>Affiliated University:</p>
		   </div>
			<div class="col-lg-4 form-check">
            <input type="text" class="form-control" name="uniName" placeholder="Aktu">
			</div>
			
		  </div>
		  
		  <div class="row">
		  <div class="col-lg-3 text-center">
			<p>College Id:</p>
		  </div>
            
            <div class="col-lg-4">
              <input type="text" placeholder="ex:12345678" class="form-control datepicker" name="collId" >
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
           
            <div class="col-lg-6">
              <input type="text" name="addressLine2" placeholder="Address Line 2" class="form-control">
            </div>
          </div>
		  
		 
		  
		  
   
		    <div class="row">
			   <div class="col-lg-3 text-center ">
			     <p>City:</p>
			   </div>
               <div class="col-lg-6">
                  <input type="text" name="city" placeholder="City" class="form-control">
               </div>
			</div>
			
			 <div class="row">
			   <div class="col-lg-3 text-center">
			     <p>State:</p>
			   </div>
			           <!--<div class="dropdown">
                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">States
                            <span class="caret"></span></button>
                             <div class="dropdown-menu">
							       <option class="dropdown-item">up</option>
								   <option>delhi</option>
                             </div>
                      </div>-->
			       <div class="col-lg-5 text-center">
					  <div class="form-group">
                                <select class="form-control siz" name="state">
								     <option value="">---Select State---</option>
                                  
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Orissa">Orissa</option>
<option value="Pondicherry">Pondicherry</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Tripura">Tripura</option>
<option value="Uttaranchal">Uttaranchal</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
                                                   <option value="West Bengal">West Bengal</option>


                                   </select>
                      </div>
      
                   </div>
			 
			  <div class="row">
			   <div class="col-lg-7 text-center">
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
		  
	              <div class="col-lg-3 ">
				     <input type="text" name="repassw" placeholder="Ex:CSE/IT" class="form-control">
				  </div>
			  </div>
		      
			  
			  
            </div>
			
             
             	</div>		 
			
			
<!-- Command -->
        <div class="form-group">
		  <div class="row">
            <div class="col-lg-6 text-center">
                <button type="reset" class="btn btn-secondary">Reset</button>
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
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"" </script>-->
  
</html>
			
			