<%-- 
    Document   : login.jsp
    Created on : Sep 4, 2022, 8:38:39 PM
    Author     : thilan
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="assignment.Driver"%>
<%@include file="../include/wsdlDriverConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String email    = request.getParameter("email");
    String password = request.getParameter("password");
    HttpSession ses = request.getSession();
    
    if(driverProxy.authDriver(email, password)) {
        Driver driver = driverProxy.getDriverByEmail(email);
        Cookie userEmail    = new Cookie("EMAIL", email);
        Cookie userID       = new Cookie("DRIVERID", String.valueOf(driver.getId()));
        Cookie firstName    = new Cookie("FIRSTNAME", driver.getFirstName());
        Cookie lastName     = new Cookie("LASTNAME", driver.getLastName());
        
        userEmail.setPath("/");
        userID.setPath("/");
        firstName.setPath("/");
        lastName.setPath("/");
        
        userEmail.setMaxAge(60 * 60 *24);
        userID.setMaxAge(60 *60 * 24);
        firstName.setMaxAge(60 * 60 * 24);
        lastName.setMaxAge(60 * 60 * 24);
        
        response.addCookie(userEmail);
        response.addCookie(userID);
        response.addCookie(firstName);
        response.addCookie(lastName);
        
        ses.setAttribute("success", "Driver Login Success");
        response.sendRedirect("/assignment-client/driver/view/index.jsp");
    } else {
        ses.setAttribute("error", "Login failed. Please try again");
        response.sendRedirect("/assignment-client/driver/view/login.jsp");
    }
    
    



%>