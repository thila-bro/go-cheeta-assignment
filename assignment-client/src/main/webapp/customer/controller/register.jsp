<%-- 
    Document   : register
    Created on : Sep 2, 2022, 11:12:09 PM
    Author     : thilan
--%>

<%@include file="../../customer/includes/wsdlCustomerConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    String mobile       = request.getParameter("mobile_number");
    String firstName    = request.getParameter("first_name");
    String lastName     = request.getParameter("last_name");
    String email        = request.getParameter("email");
    String password     = request.getParameter("password");
    
    HttpSession ses = request.getSession();
    if(customerProxy.addCustomer(mobile, firstName, lastName, email, password)) {
        ses.setAttribute("success", "Register Success");
    } else {
        ses.setAttribute("error", "Login failed. Please try again");
    }   
    
    response.sendRedirect("/assignment-client/customer/view/login.jsp");

%>
