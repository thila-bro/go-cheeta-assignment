<%-- 
    Document   : login
    Created on : 26 Aug 2022, 17:25:28
    Author     : thilanmaduranga
--%>

<%@page import="assignment.Admin"%>
<%@include file="../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%    
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    HttpSession ses = request.getSession();

    if (admin_proxy.authAdmin(email, password)) {
        Admin admin =  admin_proxy.getAdminByEmail(email);
        String isSuperAdmin = "false";
        if(admin.isIsSuper()) {
            isSuperAdmin = "true";
        }
        
        Cookie userEmail = new Cookie("EMAIL", admin.getEmail());
        Cookie isLogin = new Cookie("ISADMINLOGIN", "true");
        Cookie isAdmin = new Cookie("ISADMIN", "true");
        Cookie isSuper = new Cookie("ISSUPER", isSuperAdmin);
        isLogin.setPath("/");
        isAdmin.setPath("/");
        isSuper.setPath("/");
        userEmail.setPath("/");
        isLogin.setMaxAge(60 * 60 * 24);
        isAdmin.setMaxAge(60 * 60 * 24);//set for 1 day
        isSuper.setMaxAge(60 * 60 * 24);//set for 1 day
        userEmail.setMaxAge(60 * 60 * 24);

        response.addCookie(isLogin);
        response.addCookie(isAdmin);
        response.addCookie(isSuper);
        response.addCookie(userEmail);
        
        ses.setAttribute("success", "Login Success. Welcome");
        response.sendRedirect("/assignment-client/admin/index.jsp");

    } else {
        ses.setAttribute("error", "Login failed. Please try again");
        response.sendRedirect("/assignment-client/admin/login.jsp");
    }


%>
