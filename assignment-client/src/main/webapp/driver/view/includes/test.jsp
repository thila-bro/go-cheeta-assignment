<%-- 
    Document   : test
    Created on : 7 Sept 2022, 17:12:36
    Author     : thilanmaduranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

boolean isLogin     = false; 
    String firstName    = "name ";
    String lastName     = "";
    String email        = "";
    String userID       = "";
    
HttpSession ses = request.getSession();
    
    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("ISDRIVERLOGIN")) {
            if (Boolean.parseBoolean(cookie.getValue()) == true) {
                isLogin = true;
            }
        } else if (cookie.getName().equals("FIRSTNAME")) {
            if (Boolean.parseBoolean(cookie.getValue()) == true) {
                firstName = cookie.getValue();
            }
        } else if (cookie.getName().equals("LASTNAME")) {
            if (Boolean.parseBoolean(cookie.getValue()) == true) {
                lastName = cookie.getValue();
            }
        }
    }
    
    if (!isLogin) {
        ses.setAttribute("error", "Session expired. Please login to continue");
        response.sendRedirect("/assignment-client/admin/login.jsp");
    }

%>
