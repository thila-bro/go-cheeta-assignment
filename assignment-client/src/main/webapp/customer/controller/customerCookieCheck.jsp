<%-- 
    Document   : customerCokkieCheck
    Created on : 7 Sept 2022, 15:49:16
    Author     : thilanmaduranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    boolean isLogin     = false; 
    HttpSession ses = request.getSession();
    
    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("ISCUSTOMERLOGIN")) {
            if (Boolean.parseBoolean(cookie.getValue()) == true) {
                isLogin = true;
            }
        }
    }

    if (isLogin) {
        ses.setAttribute("success", "Login using cookies. Welcome");
        response.sendRedirect("/assignment-client/customer/view/booking/data.jsp");
    } else {
        response.sendRedirect("/assignment-client/customer/view/login.jsp");
    }

%>
