<%-- 
    Document   : login.jsp
    Created on : Sep 4, 2022, 8:38:39 PM
    Author     : thilan
--%>

<%@include file="../include/wsdlDriverConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String email    = request.getParameter("email");
    String password = request.getParameter("password");
    
    
    if(driverProxy.authDriver(email, password)) {
        out.print("success");
    } else {
        out.print("failed");
    }
    
    



%>