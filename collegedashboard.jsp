<html lang="en">
<head>
         <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Noto+Serif" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link href="facultynavbar2.css" rel="stylesheet">
	<link href="studentregis1.css" rel="stylesheet">
		 
		
<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0 */
function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft = "0";
}
</script>
</head>
<body>
 
  
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">About Us</a>
  <a href="#">Previous Questions</a>
  <a href="#">Study Materials</a>
  <a href="#">Ranking</a>
  <a href="#">Contact</a>
</div>

<!-- Use any element to open the sidenav -->




<!-- Add all page content inside this div if you want the side nav to push page content to the right (not used if you only want the sidenav to sit on top of the page -->
<div id="main">
                    
        <div class="topnav" id="myTopnav">
		         <div class="active">
		             <a href="javascript:void(0)" onclick="openNav()" class="fa fa-bars active" aria-hidden="true"></a>   
					 
					 <a href="#" class="active">Home</a>

  
                       <a class="dropdown-toggle"  id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Questions
                       </a>
                               <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                   <a class="dropdown-item" href="#">Aptitude</a>
                                  <a class="dropdown-item" href="#">Reasoning</a>
                                   <a class="dropdown-item" href="#">Verbal</a>
                                 </div>
   
   
                       
                           <a class="dropdown-toggle"  id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                             Result Analysis
                                </a>
                                   <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="#">College Level</a>
                                             <a class="dropdown-item" href="#">Company Level</a>
                                  </div>
                   
   
                                    <div class="nav justify-content-end ">
                                          <i class="fas fa-bell "></i>
                                         <i class="fas fa-envelope"></i>
			
                                           <i class="fas fa-user-circle" data-toggle="dropdown" data-hover="dropdown">
                                             </i>
                                                     <div class="dropdown-menu">
                                                            <a class="dropdown-item" href="#">Profile</a>
                                                            <a class="dropdown-item" href="#">Update Profile</a>
                                                     </div>

         
                                    </div>
                      </div>
        </div>     
        

<jsp:include page="footer.jsp"/>
         
</div>

</body>
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</html>
