<%-- 
    Document   : updateVehicle
    Created on : 10 Aug 2022, 10:47:24
    Author     : thilanmaduranga
--%>
<%@page import="assignment.VehicleType"%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int vehilceId       = Integer.parseInt(request.getParameter("id"));
    int vehicleTypeId   = Integer.parseInt(request.getParameter("vehicle_type"));
    int driverId        = Integer.parseInt(request.getParameter("driver"));
    String registerNo   = request.getParameter("register_no");
    
    
    if(!registerNo.isEmpty() && (vehicleTypeId != 0) && (driverId != 0)) {
        HttpSession ses = request.getSession();
        if (admin_proxy.updateVehicle(vehilceId, driverId, vehicleTypeId, registerNo)) {
            ses.setAttribute("success", "Vehicle updated Successfully");
        } else {
            ses.setAttribute("error", "Vehicle updated unsuccessful.");
        }

        response.sendRedirect("/assignment-client/admin/views/vehicle/add.jsp");
    }
%>
