<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link rel="stylesheet" href="login.css">
    <link href="https://unpkg.com/ionicons@4.5.5/dist/css/ionicons.min.css" rel="stylesheet">
	
</head>
<body>
<script>
	function confirm()
	{
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;
		
		/*password validation*/
	    if(password=="")
		{
	    document.getElementById("passworderror").innerHTML="***please fill password";
	    return false;	
	    }
		
		/*username validation*/
	   if(username == "")
	   {
		document.getElementById("usernameerror").innerHTML =" ** Please fill the username field";
		return false;
	   }
	}
</script>
    
    <div class="background"></div>
    <div class="container">
        <h1>Log In <i class="icon ion-md-log-in"></i></h1>
        <form action="login1.jsp" onsubmit="return confirm()"  method="post">
            <div class="input-group">
                <input type="text" class="input-control" name="uname" id="username" autocomplete="off" placeholder="Username">
                <div class="circle input-icon">
                    <i class="icon ion-md-mail"></i>
                </div>
            </div>
			<span id="usernameerror" style="color:red;"></span>
						<br>
						
            <div class="input-group">
                <input type="password" id="password" name="pass" class="input-control" autocomplete="off" placeholder="Password">
                <div class="circle input-icon">
                    <i class="icon ion-md-lock"></i>
                </div>
            </div>
			<span id="passworderror" style="color:red;"></span>
						<br>
			
            <button class="btn">Submit</button>
            <a href="forgotpassword.jsp">Lost your password?</a><br>
            <a href="signup.jsp">Don't have an account?create one</a>
        </form>
    </div>

</body>
</html>