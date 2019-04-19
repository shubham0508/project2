<%@ page import="java.sql.*"%>

<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   
        <link href="https://fonts.googleapis.com/css?family=Noto+Serif" rel="stylesheet">
        <link rel="stylesheet" href="home.css">
        <link rel="stylesheet" href="quizdisplay.css">
<style>
    
   
</style>
</head>
<body>
 <form  action="http://localhost:8080/examples/project2/quizdisplay.jsp" method="post"> 
 <jsp:include page="navbar.jsp" />
  <% quizresultbean.quizresultbean qrb = new quizresultbean.quizresultbean(); %>

<% 
      String question="";
	  String option1="";
	  String option2="";
	  String option3="";
	  String option4="";
	 
	   String quenumber=qrb.getQuenumber();

	 
           try
			{
				Class.forName("com.mysql.jdbc.Driver");
	        String url="jdbc:mysql://localhost:3306/placementtyari";
		    Connection conn=DriverManager.getConnection(url,"root","");
		   
		    Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery("select question,option1,option2,option3,option4 from aptitudeque where quenumber='"+quenumber+"'; ");
			
			 while(rs.next())
			 {
			    question=rs.getString("question");
				option1=rs.getString("option1");
				option2=rs.getString("option2");
				option3=rs.getString("option3");
				option4=rs.getString("option4");
			 
			 }
			
		      
			conn.close();
			} 
			catch(Exception e)
			{
				 out.println(e);
		    }
%>
             <h1 class="display-1">Answer Questions</h1>
			  
			<div class="container">
             <div class="row ps">			
			  <div class="col-lg-5 s1">
                   <label >
                        <%=question%>
					</label>
              </div>
			  </div>
			  
               <div class="row ps">
			       <div class="col-lg-8 c1">
                          <button type="radio" class="btn btn-info btn-block" name="answer" value="option1"><%=option1%></button>
                   </div>
			  </div>
             
			 <div class="row ps">
			       <div class="col-lg-8 c1">
                          <button type="radio" class="btn  btn-info btn-block" name="answer" value="option2"><%=option2%></button>
                   </div>
			  </div>
			  
			  <div class="row ps">
			       <div class="col-lg-8 c1">
                          <button type="radio" class="btn btn-info btn-block" name="answer" value="option3"><%=option3%></button>
                   </div>
			  </div>
			  
			  <div class="row ps">
			       <div class="col-lg-8 c1">
                          <button type="radio" class="btn btn-info btn-block" name="answer" value="option4"><%=option4%></button>
                   </div>
			  </div>
			 
			 
			
	    </div>
<jsp:include page="footer.jsp" /> 
</form>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</html>