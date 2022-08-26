<%-- 
    Document   : login
    Created on : 26 Aug 2022, 17:25:28
    Author     : thilanmaduranga
--%>

<%@page import="java.util.Date"%>
<%@page import="assignment.User"%>
<%@include file="../../includes/wsdlConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%  
    String mobile = request.getParameter("user_mobile");
    String password = request.getParameter("user_password");
    HttpSession ses = request.getSession();

    if (proxy.authUser(mobile, password)) {
        User user = proxy.getUserByMobile(mobile);
        Cookie userMobileCookie = new Cookie("USERMOBILE", mobile);
        response.addCookie(userMobileCookie);

        if (user.getType() == 3) {
            Cookie isAdmin = new Cookie("ISADMIN", "1");
            Cookie isSuper = new Cookie("ISSUPER", "1");
            response.addCookie(isAdmin);
            response.addCookie(isSuper);
//            response.sendRedirect("/assignment-client/admin/index.jsp");
        } else {

            out.print("under developing");
        }

    } else {
        ses.setAttribute("error", "Login failed. Please try again");
        response.sendRedirect("/assignment-client/");
    }


%>
