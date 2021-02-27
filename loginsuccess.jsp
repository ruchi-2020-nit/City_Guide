<html>
<head>
    <title>login successfully</title>
    <link href="loginsuccessstyle.css" rel="stylesheet" type="text/css">
</head> 
<body>
    <header>
        
    <div class="row">
        <div class="logo">
        <img src="logos\logo.png"
        </div>
            
    <ul class="main-nav">    
        <li><a href="home.jsp">HOME</a></li>
		<li><a href="frontpage1.jsp"> LOGOUT </a></li>
        <li><a href="aboutus.jsp"> CONTACT US </a></li>
    </ul>    
        
    </div>
        
    <div class="hero">
	<img src="logos\welcome.png" class="avatar">
	
<%

 String fname=(String)request.getAttribute("firstName1");
 String lname=(String)request.getAttribute("lastName1");

%>
	
    <h1><%=fname+" "+lname%></h1>
            
            
    </div>
    
    </header>


        
</body>    
</html>
