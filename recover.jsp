<html>
<head>
<title>Recover password</title>
</head>
    <link rel="stylesheet" type="text/css" href="recoverstyle.css">
<body>
<script>
	function confirm()
	{ 	
		var password1=document.getElementById("password1").value;
		var password2=document.getElementById("password2").value;
		/*password validation*/
		if(password1=="")
		{
			document.getEmailById("passworderror1").innerHTML="***please fill password";
			return false;
		}

		if(password2="")
		{
			document.getEmailById("passworderror2").innerHTML="***please retype password";
			return false;
		}
	}
</script> 



    <div class="loginbox">
	<form action="recover1.jsp" onsubmit="return validation()" method="post">
    <img src="avatar.png" class="avatar">
        <h1>Reset Password</h1>
        <form>
			<input type="text" name="email" placeholder="Email" value="<%=session.getAttribute("email")%>"/>
            <p>Enter new password</p>
            <input type="password" name="password1" id="password1" placeholder="Password" autocomplete="off"/>
	    <span id="passworderror1" style="color:red;"></span>
	    <br>
	    
            <p>Retype Password</p>
            <input type="password" name="password2" id="password2" placeholder="Retype Password" autocomplete="off"/>
	    <span id="passworderror2" style="color:red;"></span>
	    <br>
            <input type="submit" name="" value="Reset Password">
        </form>
        
    </div>

</body>
</html>