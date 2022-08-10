<%-- 
    Document   : addVehicle
    Created on : 9 Aug 2022, 15:32:17
    Author     : thilanmaduranga
--%>
<%@page import="assignment.VehicleType"%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int vehicleTypeId   = Integer.parseInt(request.getParameter("vehicle_type"));
    int driverId        = Integer.parseInt(request.getParameter("driver"));
    String registerNo   = request.getParameter("register_no");
    
    
    if(!registerNo.isEmpty() && (vehicleTypeId != 0) && (driverId != 0)) {
        HttpSession ses = request.getSession();
        if (admin_proxy.addVehicle(driverId, vehicleTypeId, registerNo)) {
            ses.setAttribute("success", "Vehicle added Successfully");
        } else {
            ses.setAttribute("error", "Vehicle add unsuccessful.");
        }

        response.sendRedirect("/assignment-client/admin/views/vehicle/add.jsp");
    }
%>
