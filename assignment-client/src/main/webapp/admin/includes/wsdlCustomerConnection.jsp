<%-- 
    Document   : wsdlCustomerConnection
    Created on : 1 Sept 2022, 15:00:13
    Author     : thilanmaduranga
--%>

<%@page import="assignment.CustomerWebService"%>
<%@page import="assignment.CustomerWebService_Service"%>
<%
    CustomerWebService_Service customerService = new CustomerWebService_Service();
    CustomerWebService customerProxy = customerService.getCustomerWebServicePort();
    


%>