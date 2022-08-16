<%-- 
    Document   : addDistance
    Created on : Aug 16, 2022, 9:13:26 PM
    Author     : thilan
--%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    
    String distance     = request.getParameter("distance");
    int sourceCity      = Integer.parseInt(request.getParameter("source_city"));
    int destinationCity = Integer.parseInt(request.getParameter("destination_city"));
    
    if(sourceCity != 0 && destinationCity != 0 && !distance.isEmpty()) {
        HttpSession ses = request.getSession();
        if (admin_proxy.addDestination(sourceCity, destinationCity, distance)) {
            ses.setAttribute("success", "Distance updated Successfully");
        } else {
            ses.setAttribute("error", "Distance update unsuccessful.");
        }

        response.sendRedirect("/assignment-client/admin/views/distance/showDistance.jsp?id="+destinationCity);
    }

%>

