<%-- 
    Document   : complete
    Created on : Sep 10, 2022, 2:41:30 PM
    Author     : thilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../include/wsdlDriverConnection.jsp" %>
<!DOCTYPE html>
<%
    int bookingId = Integer.parseInt(request.getParameter("booking_id"));
    HttpSession ses = request.getSession();
    
//    out.print(driverProxy.driverBookingAccept(bookingId));
    if(driverProxy.driverBookingComplete(bookingId)) {
        ses.setAttribute("success", "Booking Complete Success");
        response.sendRedirect("/assignment-client/driver/view/index.jsp");
    } else {
        ses.setAttribute("error", "Booking Complete Failed");
        response.sendRedirect("/assignment-client/driver/view/login.jsp");
    }

%>
