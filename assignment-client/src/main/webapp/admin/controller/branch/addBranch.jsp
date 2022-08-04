<%-- 
    Document   : addBranch
    Created on : Aug 3, 2022, 4:37:18 PM
    Author     : thilan
--%>

<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%

    int city        = Integer.parseInt(request.getParameter("city_id"));
    String email    = request.getParameter("email");
    String mobile   = request.getParameter("mobile");
    String fixed    = request.getParameter("fixed");
    String address1 = request.getParameter("address1");
    String address2 = request.getParameter("address2");

    
    
    if(!email.isEmpty() && !mobile.isEmpty() && !address1.isEmpty() && (city != 0)) {
        HttpSession ses = request.getSession();
        if(admin_proxy.addBranch(email, mobile, fixed, address1, address2, city)) {
            ses.setAttribute("success", "Branch added Successfully");
        } else {
            ses.setAttribute("error", "Branch add unsuccessful.");
        }

        response.sendRedirect("/assignment-client/admin/branch/add.jsp");
    }
%>
