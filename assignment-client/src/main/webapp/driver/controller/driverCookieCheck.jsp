<%-- 
    Document   : driverCookieCheck
    Created on : 7 Sept 2022, 16:06:57
    Author     : thilanmaduranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    boolean isLogin     = false; 
    HttpSession ses = request.getSession();
    
    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("ISDRIVERLOGIN")) {
            if (Boolean.parseBoolean(cookie.getValue()) == true) {
                isLogin = true;
            }
        }
    }

    if (isLogin) {
        ses.setAttribute("success", "Login using cookies. Welcome");
        response.sendRedirect("/assignment-client/driver/view/index.jsp");
    } else {
        response.sendRedirect("/assignment-client/driver/view/login.jsp");
    }

%>
