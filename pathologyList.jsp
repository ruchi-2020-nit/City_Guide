<%@page import="java.sql.*"%>
<html>
 <head>
    <title>Pathology</title>
	<link  href='sis.ico'  rel="shortcut icon">
	<link rel="stylesheet" type="text/css" href="medicalstyle.css">
	
	
  </head>
 
 <body  >
   
    <table>
	       <img src="logos\path.png" class="img">
	<tr>
	    
	</tr>
	 <%
 
 Connection con = null;
 Statement  stmt= null;
 ResultSet rs  = null;
 String fileName=null;
 String address=null;
 String name=null;
 String mobile=null;
	
	try{
		
	  Class.forName("oracle.jdbc.driver.OracleDriver");
	  con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");
	  stmt=con.createStatement();
	  String sql="select * from PATHOLOGIES";
	  rs=stmt.executeQuery(sql);
	  while(rs.next())
	  {
		name=rs.getString(2);
		address=rs.getString(3);
		mobile=rs.getString(4);
		fileName=rs.getString(5);
	    %>
	
	<tr>
	    <td width=25%><image src="pathology_images/<%=fileName%>"height="100" width="150"/></td>
	    <td width=25%><%=name%></td>		
		<td width=25%>
		  <%=address%>
		</td>
		<td width=25%>
		  <%=mobile%>
		</td>
		
	</tr>
     <%
	  }

  } catch (SQLException e) {
    		System.out.println("DataBase error " + e.getMessage());
    		e.printStackTrace();
    	} catch (Exception e) {
    		System.out.println("ERROR " + e.getMessage());
    		e.printStackTrace();
    	} finally {
    		if (con != null) {
    			try {
    				con.close();
    			} catch (Exception e) {
    				System.out.println("connection closing problem " + e.getMessage());
    			}
    		}

    	} //finally
    %>
 


    </table>
 
 
 </body>

</html>