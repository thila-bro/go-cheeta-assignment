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
    String license      = request.getParameter("driving_license");
    String nic          = request.getParameter("nic");
    String password     = request.getParameter("password");
    HttpSession ses     = request.getSession();
    
    if(driverProxy.updateDriverProfile(driverId, firstName, lastName, mobile, license, nic, password)) {
        ses.setAttribute("success", "Profile updated success");
    } else {
        ses.setAttribute("error", "Profile updated failed");
    }
    
    response.sendRedirect("/assignment-client/driver/view/profile/update.jsp");
%>
