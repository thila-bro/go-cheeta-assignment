<%-- 
    Document   : wsdlCustomerConnection
    Created on : Aug 12, 2022, 1:50:32 PM
    Author     : thilan
--%>

<%@page import="assignment.CustomerWebService" %>
<%@page import="assignment.CustomerWebService_Service" %>

<%
    CustomerWebService_Service customerService = new CustomerWebService_Service();
    CustomerWebService customerProxy = customerService.getCustomerWebServicePort();
    
%>
