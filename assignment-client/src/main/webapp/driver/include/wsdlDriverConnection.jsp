<%-- 
    Document   : wsdlDriverConnection
    Created on : Sep 4, 2022, 8:41:00 PM
    Author     : thilan
--%>

<%@page import="assignment.DriverWebService"%>
<%@page import="assignment.DriverWebService_Service"%>
<%

    DriverWebService_Service driverService = new DriverWebService_Service();
    DriverWebService driverProxy = driverService.getDriverWebServicePort();


%>
