<%-- 
    Document   : citywiseapproved
    Created on : Jun 5, 2018, 7:01:40 PM
    Author     : nEW u
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#E6E6FA">
        <table border="1" >
            <caption>CITY WISE DISAPPROVED</caption>
            <tr>
                <th>CITY</th>
                <Th>CARDS DISAPPROVED</Th>
            </tr>
            <%@ page import="java.sql.*"%>
            <%
                try{
			 Class.forName("org.apache.hive.jdbc.HiveDriver");
                        String url = "jdbc:hive2://192.168.232.128:10000/demo";
                        Connection con = DriverManager.getConnection(url,"","");
                         Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery("select city,not_approved from aadhar city");
                        while(rs.next()){
            %>
            <tr>
           <td><%= rs.getString(1)%></td>
           <td><%= rs.getString(2)%></td>
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
