<%-- 
    Document   : sendDriverRequest
    Created on : 19 Aug 2022, 13:40:11
    Author     : thilanmaduranga
--%>

<%@include file="../../../customer/includes/wsdlCustomerConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int userId              = 1;
    int selectedVehicleId   = Integer.parseInt(request.getParameter("selected_vehicle_id"));
    int pickUpCityId        = Integer.parseInt(request.getParameter("pick_up_city_id"));
    int dropOffCityId       = Integer.parseInt(request.getParameter("drop_off_city_id"));
    int vehicleType         = Integer.parseInt(request.getParameter("vehicle_type_id"));
    String pickUpStreet     = request.getParameter("pickup_street");
    String dropOffStreet    = request.getParameter("drop_off_street");
    double price            = Double.parseDouble(request.getParameter("price"));
    double distance         = Double.parseDouble(request.getParameter("distance"));
    
//    out.print(selectedVehicleId);
//    out.print("<br>");
//    out.print(pickUpCityId);
//    out.print("<br>");
//    out.print(pickUpStreet);
//    out.print("<br>");
//    out.print(dropOffCityId);
//    out.print("<br>");
//    out.print(dropOffStreet);
//    out.print("<br>");
//    out.print(vehicleType);
//    out.print("<br>");
//    out.print(price);
//    out.print("<br>");
//    out.print(distance);
//    out.print("<br>");
    
//    out.print(customerProxy.addBooking(userId, selectedVehicleId, vehicleType, pickUpCityId, dropOffCityId, pickUpStreet, dropOffStreet, price, distance));
    

//out.print(request.getServerName() + ":" + request.getServerPort());
    
    if(customerProxy.addBooking(userId, selectedVehicleId, vehicleType, pickUpCityId, dropOffCityId, pickUpStreet, dropOffStreet, price, distance)) {
        out.print(customerProxy.sendTestEmail());
        out.print("<br>");
        out.print("success");
    }else {
        out.print("false");
    }

%>
