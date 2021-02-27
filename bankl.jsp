<%@page import="java.sql.*"%>
<html>
<head>
</head>
	<marquee><h1><u>BANKS</u><h1></marquee>
	<table border=1 width=100%>
	<tr>
	<th>Images</th>
	<th>Name</th>
	<th>Address</th>
	<th>View Details</th>
	</tr>
<body>
 <%
 
 Connection con = null;
 Statement  stmt= null;
 ResultSet rs  = null;
 String fileName=null;
 String address=null;
 String name=null;
	
	try{
		
	  Class.forName("oracle.jdbc.driver.OracleDriver");
	  con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");
	  stmt=con.createStatement();
	  String sql="select * from banklist";
	  rs=stmt.executeQuery(sql);
	  while(rs.next())
	  {
		name=rs.getString(2);
		address=rs.getString(3);
		fileName=rs.getString(4);
	    %>
	    <tr>
		<td>
		<image src="bank_images/<%=fileName%>"height="100" width="130"/>
		</td>
		<td>';</td>
		<td><%=address%></td>
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