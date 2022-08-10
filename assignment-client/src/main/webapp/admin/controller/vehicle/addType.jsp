<%-- 
    Document   : addType
    Created on : Aug 4, 2022, 9:54:26 AM
    Author     : thilan
--%>

<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    String type = request.getParameter("type");
    
    
    if(!type.isEmpty()) {
        HttpSession ses = request.getSession();
        if (admin_proxy.addVehicleType(type)) {
            ses.setAttribute("success", "Type added Successfully");
        } else {
            ses.setAttribute("error", "Type add unsuccessful.");
        }

        response.sendRedirect("/assignment-client/admin/views/vehicle/type/add.jsp");
    }
%>
