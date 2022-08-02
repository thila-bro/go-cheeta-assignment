<%-- 
    Document   : userLogin
    Created on : Aug 1, 2022, 12:45:04 PM
    Author     : thilan
--%>


<%@page import="assignment.User"%>
<%@include file="../includes/wsdlConnection.jsp" %>
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
                response.addCookie(isAdmin);
                response.sendRedirect("/assignment-client/admin/index.jsp");
            } else {
                
                out.print("under developing");
            }
            
        } else {
            ses.setAttribute("error", "Login failed. Please try again");
            response.sendRedirect("/assignment-client/");

    }


%>