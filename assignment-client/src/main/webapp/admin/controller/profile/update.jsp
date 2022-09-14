<%-- 
    Document   : upadte
    Created on : 14 Sept 2022, 13:22:01
    Author     : thilanmaduranga
--%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    int id = Integer.parseInt(request.getParameter("admin_id"));
    String firstName = request.getParameter("first_name");
    String lastName = request.getParameter("last_name");
    String mobile = request.getParameter("mobile");
    String password = request.getParameter("password");
    HttpSession ses = request.getSession();
    
    out.print(admin_proxy.updateAdmin(id, firstName, lastName, mobile, password));
    
    if(admin_proxy.updateAdmin(id, firstName, lastName, mobile, password)) {
        ses.setAttribute("success", "Profile updated Successfully");
    } else {
        ses.setAttribute("error", "TProfile updated unsuccessful.");
    }
    
    response.sendRedirect("/assignment-client/admin/views/profile/update.jsp");
%>
