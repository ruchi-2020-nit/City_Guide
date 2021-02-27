<html>
<head>
<title> Signup Form Design Tutorial </title>   
    <link rel="stylesheet" type="text/css" href="signupstyle.css">
</head>
<body>
<script>
function confirm(){
	var password = document.getElementById("password").value;
	var confirmpassword = document.getElementById("confirmpassword").value;
	var userfirstname = document.getElementById("userfirstname").value;
	var userlastname = document.getElementById("userlastname").value;
	var username = document.getElementById("username").value;
	var emails = document.getElementById("emails").value;
	var mobileNumber = document.getElementById("mobileNumber").value;
	
	
	/*password validation*/
	if(password==""){
	document.getElementById("passworderror").innerHTML="***please fill password";
	return false;	
	}
	if(password.length<5){
		document.getElementById("passworderror").innerHTML="***password length must be greater than 5 charcter";
		return false;	
	}
	if(password.length>10){
		document.getElementById("passworderror").innerHTML="***password length must be less than equal to 10 char";
		return false;	
	}
	
	/*confirm password validation*/
	if(confirmpassword==""){
	document.getElementById("passworderror1").innerHTML="***please retype password";
	return false;	
	}
	if(password!=confirmpassword){
		document.getElementById("passworderror1").innerHTML="***confirm password are not same";
		return false;
	}
	
	
	/*name validation*/
	if(userfirstname == "")
	{
		document.getElementById("userfirstnameerror").innerHTML =" ** Please fill the firstname field";
		return false;
	}
	
	if((userfirstname.length <= 2) || (userfirstname.length > 20)) 
	{
		document.getElementById("userfirstnameerror").innerHTML =" ** Username lenght must be between 2 and 20";
		return false;	
	}
			
	if(!isNaN(userfirstname))
	{
		document.getElementById("userfirstnameerror").innerHTML =" ** only characters are allowed";
		return false;
	}
	
	
	
	/*username validation*/
	if(username == "")
	{
		document.getElementById("usernameerror").innerHTML =" ** Please fill the username field";
		return false;
	}
	
	if((username.length <= 2) || (username.length > 20)) 
	{
		document.getElementById("usernameerror").innerHTML =" ** Username lenght must be between 2 and 20";
		return false;	
	}
	
	/*name validation*/
	if(userlastname == "")
	{
		document.getElementById("userlastnameerror").innerHTML =" ** Please fill the lastname field";
		return false;
	}
	
	if((userlastname.length <= 2) || (userlastname.length > 20)) 
	{
		document.getElementById("userlastnameerror").innerHTML =" ** Username lenght must be between 2 and 20";
		return false;	
	}
			
	if(!isNaN(userlastname))
	{
		document.getElementById("userlasttnameerror").innerHTML =" ** only characters are allowed";
		return false;
	}
	
	

	/*mobile number validation*/
	if(mobileNumber == "")
	{
		document.getElementById("mobileno").innerHTML =" ** Please fill the mobile Number field";
		return false;
	}
	if(isNaN(mobileNumber))
	{
		document.getElementById("mobileno").innerHTML =" ** user must write digits only not characters";
		return false;
	}
	if(mobileNumber.length!=10)
	{
		document.getElementById("mobileno").innerHTML =" ** Mobile Number must be 10 digits only";
		return false;
	}
	
	
	/*email validation*/
	if(emails == "")
	{
		document.getElementById("emailiderror").innerHTML =" ** Please fill the email id field";
		return false;
	}
	
	if(emails.indexOf('@') <= 0 )
	{
		document.getElementById("emailiderror").innerHTML =" ** @ Invalid Position";
		return false;
	}

	if((emails.charAt(emails.length-4)!='.') && (emails.charAt(emails.length-3)!='.'))
	{
		document.getElementById("emailiderror").innerHTML =" ** . Invalid Position";
		return false;
	}


}


</script>


    <div id="login-box">
      <div class="left-box">
	  <form action="signup1.jsp"  onsubmit="return confirm()"  method="post">
	  <img src="Signup-logotype-V1.png" class="avatar">
        
          
		  <input type="name" id="userfirstname" name="firstname" placeholder="First name" autocomplete="off"/>
		  <span id="userfirstnameerror" style="color:red;"></span>
						<br>
						
						
		  <input type="name" id="userlastname" name="lastname" placeholder="Last name" autocomplete="off"/>
		  <span id="userlastnameerror" style="color:red;"></span>
						<br>
						
		  <input type="date" name="dob" placeholder="DD/MM/YYYY" autocomplete="off"/>
		  
          <input type="text" id="username" name="user_name" placeholder="User name" autocomplete="off"/>
		  <span id="usernameerror" style="color:red;"></span>
						<br>
						
	  <input type="text" id="emails" name="email" placeholder="Email" autocomplete="off"/>
	  <span id="emailiderror" style="color:red;"></span>
						<br>
 	  
          
          <input type="password" id="password" name="password" placeholder="Password" autocomplete="off" required/>
		  <span id="passworderror" style="color:red;"></span>
						<br>
						
						
		  <input type="password"  id="confirmpassword" name="password2" autocomplete="off" placeholder="Retype password"/>
		  <span id="passworderror1" style="color:red;"></span>
						<br>
						
		  <input type="mobile"id="mobileNumber" name="mobile" autocomplete="off" placeholder="Mobile number"/>
		  <span id="mobileno" style="color:red"> </span>
		  <br>
	 
		  
		  <td>Gender </td>
		  <td>
		  <input type="radio" name="gender" value="M"  checked="checked" tabindex="2">M
		  <input type="radio" name="gender" value="F">F
		  <input type="radio" name="gender" value="O">O
		  
		  </td>

        
          <input type="submit" name="signup-button" value="Sign Up"/>
		  </form>
		</div>
    </div>
    
</body>    
</html>