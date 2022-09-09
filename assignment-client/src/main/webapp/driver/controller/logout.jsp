<%-- 
    Document   : logout
    Created on : 7 Sept 2022, 17:30:05
    Author     : thilanmaduranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    HttpSession ses = request.getSession();

    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("ISDRIVERLOGIN")) {
            cookie.setValue("false");
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
    }
    
    ses.setAttribute("success", "Driver Logout Success");
    response.sendRedirect("/assignment-client/driver/view/login.jsp");


%>
