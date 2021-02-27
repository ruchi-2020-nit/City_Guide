<html>
<head>
<title> Forgot password</title>   
    <link rel="stylesheet" type="text/css" href="enterotp.css">
</head>
<body>

    <div id="login-box">
      <div class="left-box">
	  <img src="forgotpassword.png" class="avatar">
	  <form action="validatorServelt.jsp" method="post">
	  <img src="forgotpwd.png" class="logo">
          
		  <td>Email-id</td>
		  <input type="text" name="email" value="<%=session.getAttribute("email")%>"/>
		  <td>Enter OTP</td>
          <input type="text" name="user_input_otp" placeholder="Enter OTP"/>
		  
        
          <input type="submit" name="forgotpassword-button" value="Proceed"/></a>
        
		</div>
    </div>
    
</body>    
</html>