<%@page import="java.sql.*"%>
<html lang="en">
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="studentregis.css">
	<style>
	  .siz
	     {
		     font-sixe:20px;
			 text-align:center;
		 }
	</style>
</head>
<body>
<%
             String name="";
			 
			 String website="";
			 String uniName="";
	   
             
			 String addressLine1="";
			 String addressLine2="";
			 String city="";
	         String state="";      					 
             String pincode="";
	   			 
            
			 String phNo="";
			 String altphNo="";
			 String emailId="";
	   
	         String collegeId="1234";
			 
        try{
			Class.forName("com.mysql.jdbc.Driver");
	        String url="jdbc:mysql://localhost:3306/placementtyari";
		    Connection conn=DriverManager.getConnection(url,"root","");
		    Statement stmt=conn.createStatement();
			Statement stmt1=conn.createStatement();
			Statement stmt2=conn.createStatement();
			
		    ResultSet rs=stmt.executeQuery("Select * from college_info where collegeId='"+collegeId+"';");
		    while(rs.next())
			{
			name=rs.getString("name");
			website=rs.getString("website");
			uniName=rs.getString("uniName");
			collegeId=rs.getString("collegeId");
		    }
			ResultSet rs1=stmt1.executeQuery("select * from college_address where collegeId='"+collegeId+"';");
            while(rs1.next())
		    {
			addressLine1=rs1.getString("addressline1");
			addressLine2=rs1.getString("addressline2");
			city=rs1.getString("city");
			state=rs1.getString("state");
			pincode=rs1.getString("pincode");
			}
			
			ResultSet rs2=stmt2.executeQuery("select * from college_contact where collegeId='"+collegeId+"';");
			while(rs2.next())
		    {
			phNo=rs2.getString("phNo");
			altphNo=rs2.getString("altphNo");
			emailId=rs2.getString("emailId");
		    }
		
		   
		  
	  }
		  catch(Exception e)
	  {
		   System.out.println(" enter a valid value");
		   System.out.println(e);
	  }


%>
<div class="container">
     <h1 class="Display-1 text-center">College Registration</h1>
<div class="row">
    <div class="col-md-8 col-md-offset-1">
      <form class="form-horizontal" role="form" action="http://localhost:8080/examples/project2/collegeupdaterecord.jsp">
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
			<p>Affiliated University:</p>
		   </div>
			<div class="col-lg-4 form-check">
            <input type="text" class="form-control" name="uniName" placeholder="Aktu" value="<%=uniName%>">
			</div>
			
		  </div>
		  
		  <div class="row">
		  <div class="col-lg-3 text-center">
			<p>College Id:</p>
		  </div>
            
            <div class="col-lg-4">
              <input type="text" placeholder="ex:12345678" class="form-control datepicker" name="collId" value="<%=collegeId%>">
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
			       <div class="col-lg-4 text-center">
					  <div class="form-group">
                                <select class="form-control siz" name="state" value="<%=state%>">
								     <option value="">Select State</option>
                                  
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

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
</body>
   
</html>