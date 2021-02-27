<%
String user_input_otp =request.getParameter("user_input_otp"); 
String user_otp = (String)session.getAttribute("user_otp");
String email=(String)session.getAttribute("email");
if(user_otp.equals(user_input_otp)){
  request.getSession().setAttribute("email",email);
		request.getRequestDispatcher("recover.jsp").forward(request, response);
}else{
    
		  RequestDispatcher rd=request.getRequestDispatcher("forgotpassword.jsp");
		 rd.forward(request, response);

}%>
