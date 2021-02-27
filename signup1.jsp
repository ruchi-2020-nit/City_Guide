<%@page import="java.sql.*"%>
<%@page import="java.text.*"%>
<%
        Connection con = null;
	    PreparedStatement pstmt=null  ;
	    ResultSet rs=null;
 
     try{
       
  
      Class.forName("oracle.jdbc.driver.OracleDriver");
	  con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");
	  String fname=request.getParameter("firstname");
      String lname=request.getParameter("lastname");
      String dateOfBirth=request.getParameter("dob");
      String uname=request.getParameter("user_name");
      String password=request.getParameter("password");
      String email=request.getParameter("email");
	
      String mobileNo1=request.getParameter("mobile");
	  Long mobileNo=Long.parseLong(mobileNo1);
      SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-YYYY");
	  java.util.Date dob=sdf.parse(dateOfBirth);
	  java.sql.Date dobSql=new java.sql.Date(dob.getTime());
      String gender=request.getParameter("gender");
	  String role="Guest";
	  String sql="insert into User_table(user_id,first_name,last_name,date_of_birth,gender,user_name,password,email_id,mobile,role_type)"+"values(user_table_id.nextval,?,?,?,?,?,?,?,?,?)";
	  pstmt=con.prepareStatement(sql);
	  pstmt.setString(1,fname);
	  pstmt.setString(2,lname);
	  pstmt.setDate(3,dobSql);
	  pstmt.setString(4,gender);
	  pstmt.setString(5,uname);
	  pstmt.setString(6,password);
      pstmt.setString(7,email); 
	  pstmt.setLong(8,mobileNo);
	  pstmt.setString(9,role);
	  int result=pstmt.executeUpdate();
	  if(result>0)
	  {
		RequestDispatcher rd=request.getRequestDispatcher("signupsuccess.jsp");
		rd.forward(request,response);
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