<%-- 
    Document   : logout
    Created on : 8 Sept 2022, 11:20:22
    Author     : thilanmaduranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    HttpSession ses = request.getSession();

    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("ISCUSTOMERLOGIN")) {
            cookie.setValue("false");
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
    }
    
    ses.setAttribute("success", "Customer Logout Success");
    response.sendRedirect("/assignment-client/driver/view/login.jsp");


%>
