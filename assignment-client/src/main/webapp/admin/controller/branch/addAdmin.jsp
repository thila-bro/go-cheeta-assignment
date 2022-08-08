<%-- 
    Document   : addAdmin
    Created on : 8 Aug 2022, 12:50:30
    Author     : thilanmaduranga
--%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    int branchId        = Integer.parseInt(request.getParameter("branch_id"));
    String firstName    = request.getParameter("first_name");
    String lastName     = request.getParameter("last_name");
    String email        = request.getParameter("email");
    String mobile       = request.getParameter("mobile_number");
    String password     = request.getParameter("password");

    if(!firstName.isEmpty() && !lastName.isEmpty() && !email.isEmpty() && !mobile.isEmpty() && !password.isEmpty() && (branchId != 0)) {    
        HttpSession ses = request.getSession();
        if(admin_proxy.addBranchAdmin(branchId, firstName, lastName, email, mobile, password)) {
            ses.setAttribute("success", "Admin added Successfully");
        } else {
            ses.setAttribute("error", "Admin add unsuccessful.");
        }

        response.sendRedirect("/assignment-client/admin/views/branch/admin/add.jsp");
    }
%>
