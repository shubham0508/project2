function validate1()
  {
      var firstname=document.f.firstName.value;
      var middlename=document.f.middleName.value;
      var lastname=document.f.lastName.value;
      var pincode=document.f.pinCode.value;
      var phno=document.f.phNo.value;
	  var altphno=document.f.altphNo.value;
	  var password=document.f.passw.value;
	  var repassword=document.f.repassw.value;
	  var city=document.f.city.value;
	  
       if(pincode.length!=6)
        {
            alert("Pincode is wrong");
			document.f.pinCode.focus();
			return false;
        }
		
		if(phno.length!=10)
        {
            alert("Phone Number is wrong");
			document.f.phNo.focus();
			return false;
        }
		
		if(altphno.length!=10)
        {
            alert("Alternate phone Number is wrong");
			document.f.altphNo.focus();
			return false;
        }
       
	     if(password.length<6)
		 {
			 alert("Password Number is short length");
			document.f.passw.focus();
			return false;
		 }
		 
		 if(repassword.length<6)
		 {
			 alert("Re Password Number is short length");
			document.f.repassw.focus();
			return false;
		 }
		 
		  if(password!=repassword)
		 {
			 alert("Password Does Not Match");
			document.f.passw.focus();
			document.f.repassw.focus();
			return false;
		 }
	    
		var letters = /^[A-Za-z]+$/;
	    if(!(city.match(letters))) 
       {
        alert("City is wrong");
		document.f.city.focus();
        return false;
       }
	   
	   var login=document.f.loginId.value;
	   if(!(login.length>0 && login.length<=10))
	   {
		   alert("LoginId is of Short length");
		   document.f.loginId.focus();
           return false;
	   }
	   
	   var gradyear=document.f.yGrad.value;
	   var x=parseInt(gradyear);
	   if(!(x>0 && x<=4)
	   {
		   alert("gradyear is out of range");
		   document.f.yGrad.focus();
           return false;
	   }
	   
	      var regex=/^[0-9]+$/;
		  
		  
  }
  