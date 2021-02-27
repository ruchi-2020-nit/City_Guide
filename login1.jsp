<%@page import="java.sql.*"%>
<%
        Connection con = null;
	    PreparedStatement pstmt=null  ;
	    ResultSet rs=null;
 
     try{
       
  
      Class.forName("oracle.jdbc.driver.OracleDriver");
	  con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");
	  
	  String userId  = request.getParameter("uname");
	  String userPassword  = request.getParameter("pass");
	  
	  String sql="select * from user_table where user_name=?  and password=? ";
	  
	  pstmt= con.prepareStatement(sql);
	  pstmt.setString(1,userId);
	  pstmt.setString(2,userPassword);
	  rs = pstmt.executeQuery();
	  if(rs.next())
	  {
		long id = rs.getLong("user_id");
		String userName =rs.getString("user_name");
		String userRole =rs.getString("role_type");
		String firstName=rs.getString("first_name");
		String lastName=rs.getString("last_name");
		session.setAttribute("user_sno",id);
		session.setAttribute("user_name",userName);
		session.setAttribute("role_type",userRole);	
		
		request.setAttribute("firstName1", firstName);
		request.setAttribute("lastName1", lastName);
		RequestDispatcher rd=request.getRequestDispatcher("loginsuccess.jsp");
		 rd.forward(request, response);
	  }else
	  {
		  RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
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

	  
	  
	  
	  
	  