<%-- 
    Document   : update
    Created on : 14 Sept 2022, 15:54:16
    Author     : thilanmaduranga
--%>

<%@include file="../../../customer/includes/wsdlCustomerConnection.jsp" %>
<!DOCTYPE html>
<%
    
    int customerId = Integer.parseInt(request.getParameter("customer_id"));
    String firstName = request.getParameter("first_name");
    String lastName = request.getParameter("last_name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    HttpSession ses = request.getSession();

    if(customerProxy.updateCustomerProfile(customerId, firstName, lastName, email, password)) {
        ses.setAttribute("success", "Profile updated success");
    } else {
        ses.setAttribute("error", "Profile updated failed");
    }

    response.sendRedirect("/assignment-client/customer/view/profile/update.jsp");

%>
