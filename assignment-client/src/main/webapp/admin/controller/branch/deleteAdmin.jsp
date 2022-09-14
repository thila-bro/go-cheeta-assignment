<%-- 
    Document   : deleteAdmin
    Created on : 8 Aug 2022, 17:02:36
    Author     : thilanmaduranga
--%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    int adminId = Integer.parseInt(request.getParameter("id"));
    
    HttpSession ses = request.getSession();
    if (admin_proxy.deleteAdmin(adminId)) {
        ses.setAttribute("success", "Admin deleted Successfully");
    } else {
        ses.setAttribute("error", "Admin delete unsuccessful");
    }
    
    response.sendRedirect("/assignment-client/admin/views/branch/admin/add.jsp");
    

%>