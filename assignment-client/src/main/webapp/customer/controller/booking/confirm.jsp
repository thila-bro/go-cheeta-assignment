<%-- 
    Document   : bookingConfirm
    Created on : Aug 18, 2022, 10:34:56 PM
    Author     : thilan
--%>

<%@page import="java.util.List"%>
<%@page import="assignment.SelectedVehicle"%>
<%@include file="../../../customer/includes/wsdlCustomerConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    int pickUpCityId    = Integer.parseInt(request.getParameter("pick_up_city_id"));
    int dropOffCityId   = Integer.parseInt(request.getParameter("drop_off_city_id"));
    int vehicleType     = Integer.parseInt(request.getParameter("vehicle_type_id"));
    String pickUpStreet = request.getParameter("pickup_street");
    String dropOffStreet= request.getParameter("drop_off_street");
    
    List<SelectedVehicle> selectedVehicle = customerProxy.getDriversByTypeIdAndSouceCity(vehicleType, pickUpCityId);

%>