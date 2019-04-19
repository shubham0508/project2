<html lang="en">
<head>
         <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   
        <link href="https://fonts.googleapis.com/css?family=Noto+Serif" rel="stylesheet">
        <link rel="stylesheet" href="home.css">
		

<style>
    .ps
	{
		left:5000px;
		padding:20px 250px;
	}
    
</style>
<script language="javascript">
 	
  function myfunction()
  {
	   var que=document.f1.question.value;
	   var option1=document.f1.option1.value;
	   var option2=document.f1.option2.value;
	   var option3=document.f1.option3.value;
	   var option4=document.f1.option4.value;
	   
	   var len=que.length;
	   var len1=option1.length;
	   var len2=option2.length;
	   var len3=option3.length;
	   var len4=option4.length;
		if(len<5)
		{
			alert("que length is too short");
			document.f1.question.focus();
			return false;
		}
		
        if(len1<5)
		{
			alert("que length is too short");
			document.f1.option1.focus();
			return false;
		}
		
        if(len2<5)
		{
			alert("option length is too short");
			document.f1.option2.focus();
			return false;
		}
		
        if(len3<5)
		{
			alert("que length is too short");
			document.f1.option3.focus();
			return false;
		}
		
        if(len4<5)
		{
			alert("que length is too short");
			document.f1.option4.focus();
			return false;
		}
	    
		else
		{
			 alert("qestion has been successfully submitted");
			return true;
	    }
		
	      
		
  }
    
</script>
</head>
<body>
 <form  action="http://localhost:8080/examples/project2/queentery.jsp" name="f1" > 
 <jsp:include page="navbar.jsp" />  

         <h1 class="display 1">Enter the questions</h1> 
           
		   <div class="container">
		     
	<div class="row ps">
     <div class="col-lg-9">	
	<div class="input-group">
             <div class="input-group-prepend">
		
          <span class="input-group-text"></span>
            </div>
              <textarea class="form-control" aria-label="With textarea" placeholder="enter a question" name="question" ></textarea>
      </div>
     </div>
	 </div>
		 
		   
	<div class="row ps">
		<div class="col-lg-5">
            <div class="input-group">
                      <div class="input-group-prepend">
                         <div class="input-group-text">
                              <input type="radio" aria-label="Radio button for following text input" name="answer" value="option1">
                         </div>
                     </div>
                          <input type="text" class="form-control" aria-label="Text input with radio button" placeholder="Enter an option" name="option1">
            </div>			
		</div>
	</div>
	
	<div class="row ps">
		<div class="col-lg-5">
            <div class="input-group">
                      <div class="input-group-prepend">
                         <div class="input-group-text">
                              <input type="radio" aria-label="Radio button for following text input" name="answer" value="option2">
                         </div>
                     </div>
                          <input type="text" class="form-control" aria-label="Text input with radio button" placeholder="Enter an option" name="option2">
            </div>			
		</div>
	</div>
	
	<div class="row ps">
		<div class="col-lg-5">
            <div class="input-group">
                      <div class="input-group-prepend">
                         <div class="input-group-text">
                              <input type="radio" aria-label="Radio button for following text input" name="answer" value="option3">
                         </div>
                     </div>
                          <input type="text" class="form-control" aria-label="Text input with radio button" placeholder="Enter an option" name="option3">
            </div>			
		</div>
	</div>
	
	<div class="row ps">
		<div class="col-lg-5">
            <div class="input-group">
                      <div class="input-group-prepend">
                         <div class="input-group-text">
                              <input type="radio" aria-label="Radio button for following text input" name="answer" value="option4">
                         </div>
                     </div>
                          <input type="text" class="form-control" aria-label="Text input with radio button" placeholder="Enter an option" name="option4">
            </div>			
		</div>
	</div>
    
<div class="row ps">
  <div class="col-lg-5 ">
<button type="submit" class="btn btn-primary" onclick="return myfunction();">Next</button></div>
<div class="col-lg-5">
<button type="reset" class="btn btn-danger" >Reset</button></div>
</div>
 </div>
 
<jsp:include page="footer.jsp" /> 
</form>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   
</html>