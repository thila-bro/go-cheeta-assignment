<%-- 
    Document   : test
    Created on : 26 Aug 2022, 17:30:19
    Author     : thilanmaduranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    boolean isSuper = false;

    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("ISADMIN")) {
            if (Boolean.parseBoolean(cookie.getValue()) == true) {
                isSuper = true;
            }
        }
    }

    if (isSuper) {
        response.sendRedirect("/assignment-client/admin/index.jsp");
    } else {
        response.sendRedirect("/assignment-client/index-admin-login.jsp");
    }

%>
