<%-- 
    Document   : deleteDriver
    Created on : Aug 7, 2022, 8:40:21 PM
    Author     : thilan
--%>

<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%

    int driverId = Integer.parseInt(request.getParameter("id"));
    
    HttpSession ses = request.getSession();
    if (admin_proxy.deleteDriver(driverId)) {
        ses.setAttribute("success", "Driver deleted Successfully");
    } else {
        ses.setAttribute("error", "Driver delete unsuccessful");
    }
    
    response.sendRedirect("/assignment-client/admin/views/driver/add.jsp");
    

%>
