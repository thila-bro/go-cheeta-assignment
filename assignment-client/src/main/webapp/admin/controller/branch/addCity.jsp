<%-- 
    Document   : city
    Created on : Aug 1, 2022, 8:26:42 PM
    Author     : thilan
--%>

<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    String city = request.getParameter("city");
    
    
    if(!city.isEmpty()) {
        HttpSession ses = request.getSession();
        if (admin_proxy.addCity(city)) {
            ses.setAttribute("success", "City added Successfully");
        } else {
            ses.setAttribute("error", "City add unsuccessful.");
        }

        response.sendRedirect("/assignment-client/admin/branch/city/add.jsp");
    }
%>
