<%-- 
    Document   : deleteCity
    Created on : Aug 2, 2022, 10:09:10 PM
    Author     : thilan
--%>

<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%

    int city_id = Integer.parseInt(request.getParameter("id"));
    
    HttpSession ses = request.getSession();
    if (admin_proxy.deleteCity(city_id)) {
        ses.setAttribute("success", "City deleted Successfully");
    } else {
        ses.setAttribute("error", "City delete unsuccessful");
    }
    
    response.sendRedirect("/assignment-client/admin/branch/city/add.jsp");
    

%>
