<%@page import="java.sql.*"%>
<%
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	try{
       
  
      Class.forName("oracle.jdbc.driver.OracleDriver");
	  con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");
	  
	  String emailId  = request.getParameter("email");
	  System.out.println(emailId);
	  String userPassword  = request.getParameter("password1");
	  System.out.println(userPassword);
	  
	  String sql="update user_table set password=? where email_id=?";
	  
	  pstmt= con.prepareStatement(sql);
	  pstmt.setString(1,userPassword);
	  pstmt.setString(2,emailId);
	  int result = pstmt.executeUpdate();
	  System.out.println(result);
	  
	  if(result==1)
	  {
		 RequestDispatcher rd=request.getRequestDispatcher("passwordrecovered.jsp");
		 rd.forward(request, response);
	  }
	  else
	  {
		  RequestDispatcher rd=request.getRequestDispatcher("recover.jsp");
		 rd.forward(request, response);
	  }
	}catch(Exception e)
    {
	 out.print("Error : "+e.getMessage());
	 e.printStackTrace();
	}finally
	{
	try{
	 if(con!=null)
	 {
		 con.close();
	 }
	 }catch(Exception e)
	 {
		 out.print("Error : "+e.getMessage());
		 e.printStackTrace();
	 }
 }
%>

	  
	  
	  
	  
	  