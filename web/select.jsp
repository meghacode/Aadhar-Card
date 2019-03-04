<%-- 
    Document   : select
    Created on : Jun 5, 2018, 12:55:49 AM
    Author     : nEW u
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  <table align="centre" cellspacing="5" cellpadding="5" border="1"> 
        <tr>
            <th>Actor</th>
            <th>Actress</th>
        </tr>
    <%@page import="java.sql.*"%>
    <%
        try
		{
			Class.forName("org.apache.hive.jdbc.HiveDriver");
                        String url = "jdbc:hive2://192.168.43.87:10000/demo";
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from aadhar");
                        while(rs.next()){
       %>
       <tr>
           <td><%= rs.getString(1)%></td>
           <td><%= rs.getString(2)%></td>
       </tr>            
       <%
        }

}
                catch(Exception e)
		{
			out.println("SQLException caught : "+e.getMessage());
                }
%>
       </table>
       </table>
    <form action="Insert.jsp" method="post">
                <input type="submit" value="insert">
    </form><br>
    <form action="Update.jsp" method="post">
                <input type="submit" value="update">
    </form><br>
     <form action="Delete.jsp" method="post">
                <input type="submit" value="delete">
    </form><br>
    </body>
</html>
