<%-- 
    Document   : login
    Created on : Aug 11, 2022, 10:14:50 PM
    Author     : thilan
--%>
<%@page import="assignment.User"%>
<%@include file="../../includes/wsdlConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    String email        = request.getParameter("email");
    String password     = request.getParameter("password");
    
    
    out.print(email);
    out.print("<br>");
    out.print(password);
    
    proxy.sendTestEmail();
    
    HttpSession ses = request.getSession();

//    if (proxy.authUser(mobile, password)) {
//        User user = proxy.getUserByMobile(mobile);
//        Cookie userMobileCookie = new Cookie("USERMOBILE", mobile);
//        response.addCookie(userMobileCookie);
//
//        if (user.getType() == 3) {
//            Cookie isAdmin = new Cookie("ISADMIN", "1");
//            response.addCookie(isAdmin);
//            response.sendRedirect("/assignment-client/admin/index.jsp");
//        } else {
//
//            out.print("under developing");
//        }
//
//    } else {
//        ses.setAttribute("error", "Login failed. Please try again");
//        response.sendRedirect("/assignment-client/");
//    }

%>