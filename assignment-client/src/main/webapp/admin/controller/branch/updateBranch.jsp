<%-- 
    Document   : updateBranch
    Created on : Aug 3, 2022, 9:45:17 PM
    Author     : thilan
--%>

<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    int branch_id   = Integer.parseInt(request.getParameter("branch_id"));
    int city        = Integer.parseInt(request.getParameter("city_id"));
    String email    = request.getParameter("email");
    String mobile   = request.getParameter("mobile");
    String fixed    = request.getParameter("fixed");
    String address1 = request.getParameter("address1");
    String address2 = request.getParameter("address2");
    
    out.print(!email.isEmpty() && !mobile.isEmpty() && !address1.isEmpty() && (city != 0));

    
    
    if(!email.isEmpty() && !mobile.isEmpty() && !address1.isEmpty() && (city != 0)) {
        HttpSession ses = request.getSession();
        if(admin_proxy.upadteBranch(branch_id, email, mobile, fixed, address1, address2, city)) {
            ses.setAttribute("success", "Branch updated Successfully");
        } else {
            ses.setAttribute("error", "Branch update unsuccessful.");
        }

        response.sendRedirect("/assignment-client/admin/views/branch/add.jsp");
    }
%>
