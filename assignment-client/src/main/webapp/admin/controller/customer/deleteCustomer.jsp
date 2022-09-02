<%-- 
    Document   : deleteCustomer
    Created on : 1 Sept 2022, 16:32:31
    Author     : thilanmaduranga
--%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    int customerId = Integer.parseInt(request.getParameter("id"));
    
    HttpSession ses = request.getSession();
    if (admin_proxy.deleteCustomer(customerId)) {
        ses.setAttribute("success", "Customer deleted Successfully");
    } else {
        ses.setAttribute("error", "Customer delete unsuccessful");
    }
    
    response.sendRedirect("/assignment-client/admin/views/customer/all.jsp");
    

%>
