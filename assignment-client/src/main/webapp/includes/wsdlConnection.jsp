<%@page import="assignment.AssignmentDBService"%>
<%@page import="assignment.AssignmentDBService_Service"%>

<%
    AssignmentDBService_Service service = new AssignmentDBService_Service();
    AssignmentDBService proxy = service.getAssignmentDBServicePort();
%>