<%-- 
    Document   : update
    Created on : 14 Sept 2022, 17:31:52
    Author     : thilanmaduranga
--%>
<%@include file="../../include/wsdlDriverConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int driverId        = Integer.parseInt(request.getParameter("driver_id"));
    String firstName    = request.getParameter("first_name");
    String lastName     = request.getParameter("last_name");
    String mobile       = request.getParameter("mobile");
    String password     = request.getParameter("password");
    
//    out.print(obj);
    

%>
