<%-- 
    Document   : logout
    Created on : 8 Sept 2022, 10:02:57
    Author     : thilanmaduranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/new/adminSession.jsp" %>
<%
    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("ISADMINLOGIN")) {
            cookie.setValue("false");
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
    }
    
    ses.setAttribute("success", "Admin Logout Success");
    response.sendRedirect("/assignment-client/admin/login.jsp");


%>
