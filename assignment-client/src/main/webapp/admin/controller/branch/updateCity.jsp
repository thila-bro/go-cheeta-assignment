<%-- 
    Document   : editCity
    Created on : Aug 2, 2022, 10:40:10 PM
    Author     : thilan
--%>
<%@page import="assignment.City"%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    int city_id = Integer.parseInt(request.getParameter("id"));
    String city_name = request.getParameter("city");             
        
    
    HttpSession ses = request.getSession();
    if (admin_proxy.updateCity(city_name, city_id)) {
        ses.setAttribute("success", "City updated Successfully");
    } else {
        ses.setAttribute("error", "City updated unsuccessful");
    }
    
    response.sendRedirect("/assignment-client/admin/views/branch/city/add.jsp");
    

%>
