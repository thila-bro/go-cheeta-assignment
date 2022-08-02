

<%@page import="assignment.AdminWebService"%>
<%@page import="assignment.AdminWebService_Service"%>
<%
    
    AdminWebService_Service admin_service = new AdminWebService_Service();
    AdminWebService admin_proxy = admin_service.getAdminWebServicePort();       
        

%>