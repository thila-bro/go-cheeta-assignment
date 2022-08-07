<%-- 
    Document   : updateType
    Created on : Aug 4, 2022, 10:24:13 PM
    Author     : thilan
--%>

<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
    int typeId  = Integer.parseInt(request.getParameter("id"));
    String type = request.getParameter("type");
    
    
    if(!type.isEmpty()) {
        HttpSession ses = request.getSession();
        if (admin_proxy.updateVehicleType(typeId, type)) {
            ses.setAttribute("success", "Type updated Successfully");
        } else {
            ses.setAttribute("error", "Type update unsuccessful.");
        }

        response.sendRedirect("/assignment-client/admin/vehicle/type/add.jsp");
    }
%>