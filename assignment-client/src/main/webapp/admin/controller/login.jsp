<%-- 
    Document   : login
    Created on : 26 Aug 2022, 17:25:28
    Author     : thilanmaduranga
--%>

<%@page import="java.util.TimeZone"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="assignment.User"%>
<%@include file="../../includes/wsdlConnection.jsp" %>
<%@include file="../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%    
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    HttpSession ses = request.getSession();

    if (admin_proxy.authAdmin(email, password)) {
//        User user = proxy.getUserByMobile(mobile);
        Cookie userMobileCookie = new Cookie("EMAIL", email);
        response.addCookie(userMobileCookie);

        Date expdate = new Date();
        expdate.setTime(expdate.getTime() + (3600 * 1));
        DateFormat df = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", java.util.Locale.US);
        df.setTimeZone(TimeZone.getTimeZone("Asia/Colombo"));
        String cookieExpire = "expires=" + df.format(expdate);

        out.print(cookieExpire);

        Cookie isAdmin = new Cookie("ISADMIN", "true");
        Cookie isSuper = new Cookie("ISSUPER", "true");
        isAdmin.setPath("/");
        isSuper.setPath("/");
        isAdmin.setMaxAge(60 * 60 * 24);//set for 1 day
        isSuper.setMaxAge(60 * 60 * 24);//set for 1 day

//            isAdmin.setMaxAge(0);
//            isSuper.setMaxAge(0);
        response.addCookie(isAdmin);
        response.addCookie(isSuper);
        
        ses.setAttribute("success", "Login Success. Welcome");
        response.sendRedirect("/assignment-client/admin/index.jsp");

    } else {
        ses.setAttribute("error", "Login failed. Please try again");
        response.sendRedirect("/assignment-client/admin/login.jsp");
    }


%>
