<%-- 
    Document   : deleteVehicle
    Created on : 9 Aug 2022, 16:04:26
    Author     : thilanmaduranga
--%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    int vehicleId = Integer.parseInt(request.getParameter("id"));
    
    if(vehicleId != 0) {
        HttpSession ses = request.getSession();
        if (admin_proxy.deleteVehicle(vehicleId)) {
            ses.setAttribute("success", "Vehicle deleted Successfully");
        } else {
            ses.setAttribute("error", "Vehicle deleted unsuccessful.");
        }

        response.sendRedirect("/assignment-client/admin/views/vehicle/add.jsp");
    }
%>
