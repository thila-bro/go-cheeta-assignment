<%-- 
    Document   : accept
    Created on : Sep 10, 2022, 2:17:49 PM
    Author     : thilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../include/wsdlDriverConnection.jsp" %>
<!DOCTYPE html>
<%
    int bookingId = Integer.parseInt(request.getParameter("booking_id"));
    HttpSession ses = request.getSession();
    
    if(driverProxy.driverBookingAccept(bookingId)) {
        ses.setAttribute("success", "Booking Accept Success");
        response.sendRedirect("/assignment-client/driver/view/index.jsp");
    } else {
        ses.setAttribute("error", "Booking Accept Failed");
        response.sendRedirect("/assignment-client/driver/view/login.jsp");
    }

%>