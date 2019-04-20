<html>
  <head>
        <!-- Required meta tags -->
    
   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    
	<link rel="stylesheet" href="login1.css">
	<style>
	.navbar 
	{
		padding-right:10px;
		font-size:20px;
		background-color:#333;
    }
	.navbar li
	{
		padding-right:35px;
	}
	.top
	{
		padding-top:5px;
	    padding-left:150px;
		
	}
	.si
	{
		font-size:25px;
	}
	</style>
	
  </head>
  <body>
  
  
 
  
<nav class="navbar navbar-expand-lg navbar-dark ">
 
    <ul class="navbar-nav">
	
      <li class="nav-item active">
        <a class="nav-link" href="home.jsp">Home</a>
      </li>
     
      <li class="nav-item active">
        <a class="nav-link" href="#">About Us</a>
      </li>
	  
      <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-toggle="dropdown" >
          Registration
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="studentregistration.jsp">Student</a>
          <a class="dropdown-item" href="facultyregistration.jsp">Faculty</a>
		  <a class="dropdown-item" href="companyregistration.jsp">Comapny</a>
		  <a class="dropdown-item" href="collegeregistration.jsp">College</a>
         </div>		  
      </li>
	  
	  
	  
	 
	  <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-toggle="dropdown" >
          Partner Company
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">2018-2019</a>
          <a class="dropdown-item" href="#">2017-2018</a>
        </div>
      </li>
	 
	  
	  
	
	  <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-toggle="dropdown" >
          Partner Colleges
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">2018-2019</a>
          <a class="dropdown-item" href="#">2017-2018</a>
        </div>
      </li>
	 	  
       <li class="nav-item active">
        <a class="nav-link" href="#">Contact Us</a>
      </li>  
      
	 
	  <li class="nav-item active">
	  <button onclick="document.getElementById('id01').style.display='block'" class="fas fa-user-circle">Login</button>

			<div id="id01" class="modal">
			  
			  <form class="modal-content animate" action="logindirection.jsp">
			  
				<div class="imgcontainer">
				  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
				  <img src="login.jpg" alt="Avatar" class="avatar">
				</div>

				<div class="container">
				  <div class="row">
				    <div class="col-lg-2">
				  <label><b>Username:</b></label>
				    </div>
					<div class="col-lg-10">
				  <input type="text" placeholder="Enter Username" name="uname" class="form-control" required>
                   </div>
				   </div>
				   <br>
				   <div class="row">
				    <div class="col-lg-2">
				  <label><b>Password:</b></label>
				  </div>
				  <div class="col-lg-10">
				  <input type="password" placeholder="Enter Password" name="psw" class="form-control"  required>
				  </div>
				   </div>
				  <br>
				  <div class="row">
				  <div class="col-3">
				     <label for="sel1"><b>User Type:</b></label>
				  </div>
				  <div class="col-5 shift">
				       <select class="form-control shift" id="sel1">
                           <option>Student</option>
                            <option>College</option>
                            <option>faculty</option>
                            <option>Company</option>
                         </select>
					</div>
					</div>
				  <button type="submit" class="pad btn-success">Login</button>
				  <label>
					<input type="checkbox" checked="checked" name="remember"> Remember me
				  </label>
				</div>

				<div class="container" style="background-color:#f1f1f1">
				  <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn btn-danger">Cancel</button>
				  <span class="psw pass">Forgot<a href="#">password?</a></span>
				</div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>                                           
      </li>
      
	  
    </ul></div>
</nav>  
  

  </body>
  
</html>
