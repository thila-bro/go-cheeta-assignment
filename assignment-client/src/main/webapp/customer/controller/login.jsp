<%-- 
    Document   : login
    Created on : Aug 11, 2022, 10:14:50 PM
    Author     : thilan
--%>
<%@page import="assignment.Customer"%>
<%@page import="assignment.User"%>
<%@include file="../../customer/includes/wsdlCustomerConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    String mobile        = request.getParameter("mobile");
    String password     = request.getParameter("password");
   
    HttpSession ses = request.getSession();

    if (customerProxy.authCustomer(mobile, password)) {
            Customer customer = customerProxy.getCustomerByMobileAndPassword(mobile, password);
            Cookie isLogin          = new Cookie("ISLOGIN", "true");
            Cookie firstNameCookie  = new Cookie("FIRSTNAME", customer.getFirstName());
            Cookie lastNameCookie   = new Cookie("LASTNAME", customer.getLastName());
            Cookie mobileCookie     = new Cookie("MOBILE", customer.getMobile());
            Cookie emailCookie      = new Cookie("EMAIL", customer.getEmail());
            
            isLogin.setPath("/");
            firstNameCookie.setPath("/");
            lastNameCookie.setPath("/");
            mobileCookie.setPath("/");
            emailCookie.setPath("/");
            
            isLogin.setMaxAge(60*60*24);//set for 1 day
            firstNameCookie.setMaxAge(60*60*24);
            lastNameCookie.setMaxAge(60*60*24);
            mobileCookie.setMaxAge(60*60*24);
            emailCookie.setMaxAge(60*60*24);
            
            response.addCookie(isLogin);
            response.addCookie(firstNameCookie);
            response.addCookie(lastNameCookie);
            response.addCookie(mobileCookie);
            response.addCookie(emailCookie);

        response.sendRedirect("/assignment-client/customer/view/booking/data.jsp");

    } else {
        ses.setAttribute("error", "Login failed. Please try again");
        response.sendRedirect("/assignment-client/customer/view/login.jsp");
    }

%>