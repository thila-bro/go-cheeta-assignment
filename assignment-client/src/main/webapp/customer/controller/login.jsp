<%-- 
    Document   : login
    Created on : Aug 11, 2022, 10:14:50 PM
    Author     : thilan
--%>
<%@page import="assignment.User"%>
<%@include file="../../customer/includes/wsdlCustomerConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    String mobile        = request.getParameter("mobile");
    String password     = request.getParameter("password");
   
    HttpSession ses = request.getSession();

    if (customerProxy.authCustomer(mobile, password)) {
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

        response.sendRedirect("/assignment-client/customer/view/booking/data.jsp");

    } else {
        ses.setAttribute("error", "Login failed. Please try again");
        response.sendRedirect("/assignment-client/customer/view/booking/data.jsp");
    }

%>