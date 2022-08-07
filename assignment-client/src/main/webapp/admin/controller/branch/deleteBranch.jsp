<%-- 
    Document   : deleteBranch
    Created on : Aug 3, 2022, 8:51:45 PM
    Author     : thilan
--%>

<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%

    int branch_id = Integer.parseInt(request.getParameter("id"));
    
    HttpSession ses = request.getSession();
    if (admin_proxy.deleteBranch(branch_id)) {
        ses.setAttribute("success", "Branch deleted Successfully");
    } else {
        ses.setAttribute("error", "Branch delete unsuccessful");
    }
    
    response.sendRedirect("/assignment-client/admin/branch/add.jsp");
    

%>
