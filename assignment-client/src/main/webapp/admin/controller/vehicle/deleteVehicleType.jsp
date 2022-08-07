<%-- 
    Document   : deleteVehicleType
    Created on : Aug 4, 2022, 10:04:26 PM
    Author     : thilan
--%>

<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    int vehilceTypeId = Integer.parseInt(request.getParameter("id"));
    
    
    if(vehilceTypeId != 0) {
        HttpSession ses = request.getSession();
        if (admin_proxy.deleteVehicleType(vehilceTypeId)) {
            ses.setAttribute("success", "Type deleted Successfully");
        } else {
            ses.setAttribute("error", "Type deleted unsuccessful.");
        }

        response.sendRedirect("/assignment-client/admin/vehicle/type/add.jsp");
    }
%>