<%-- 
    Document   : ViewQuery
    Created on : Jun 5, 2018, 7:30:20 PM
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
        query 1:State_Wise Approved Aadhar Cards....<br>
        <form action="citywiseapproved.jsp" method="post">
                <input type="submit" value="click for query 1">
    </form><br>
    query 2:State_Wise DisApproved Aadhar Cards....<br>
    <form action="statewisedisapr.jsp" method="post">
                <input type="submit" value="click for query 2">
    </form><br>
    query 3:city_Wise Approved Aadhar Cards....<br>
     <form action="citya.jsp" method="post">
                <input type="submit" value="click for query 3">
    </form><br>
    query 4:City_Wise DisApproved Aadhar Cards....<br>
     <form action="cityd.jsp" method="post">
                <input type="submit" value="click for query 4">
    </form><br>
    </body>
</html>
