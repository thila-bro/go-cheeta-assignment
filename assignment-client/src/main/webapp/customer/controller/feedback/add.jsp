<%-- 
    Document   : add
    Created on : Sep 10, 2022, 4:23:08 PM
    Author     : thilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../../customer/includes/wsdlCustomerConnection.jsp" %>
<!DOCTYPE html>
<%
    int bookingId   = Integer.parseInt(request.getParameter("booking_id"));
    int tripRate    = Integer.parseInt(request.getParameter("trip_rating"));
    String feedback = request.getParameter("feedback");
    HttpSession ses = request.getSession();
    
    if(customerProxy.addFeedback(bookingId, tripRate, feedback)) {
        ses.setAttribute("success", "Feedback add success");
    } else {
        ses.setAttribute("error", "Feedback add failed");
    }

    response.sendRedirect("/assignment-client/customer/view/histry/list.jsp");

%>