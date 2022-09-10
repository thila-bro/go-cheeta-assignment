<%-- 
    Document   : updateType
    Created on : Aug 4, 2022, 10:24:13 PM
    Author     : thilan
--%>

<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    double cost = Double.parseDouble(request.getParameter("initial_cost"));
    int typeId  = Integer.parseInt(request.getParameter("id"));
    String type = request.getParameter("type");
    
    
    if(!type.isEmpty()) {
        HttpSession ses = request.getSession();
        if (admin_proxy.updateVehicleType(typeId, type, cost)) {
            ses.setAttribute("success", "Type updated Successfully");
        } else {
            ses.setAttribute("error", "Type update unsuccessful.");
        }

        response.sendRedirect("/assignment-client/admin/views/vehicle/type/add.jsp");
    }
%>