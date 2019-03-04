<%-- 
    Document   : selectquery
    Created on : Jun 4, 2018, 11:50:15 PM
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
            <th>State</th>
            <th>City</th>
            <th>Approved</th>
            <th>Not_Approved</th>
        </tr>
        <%@page import="java.sql.*"%>
    <%
        try{
			 Class.forName("org.apache.hive.jdbc.HiveDriver");
                        String url = "jdbc:hive2://192.168.232.128:10000/demo";
                        Connection con = DriverManager.getConnection(url,"","");
                         Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery("select * from aadhar");
                        while(rs.next()){
       %>
       <tr>
           <td><%= rs.getString(1)%></td>
           <td><%= rs.getString(2)%></td>
           <td><%= rs.getString(3)%></td>
           <td><%= rs.getString(4)%></td>
       </tr>            
       <%
        }
}
        catch(Exception e) {
            out.println("error found :"+e.getMessage());
        }
%>
       </table>
       </body>
</html>
