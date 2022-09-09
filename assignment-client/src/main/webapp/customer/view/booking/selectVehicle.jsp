<%-- 
    Document   : selectVehicle
    Created on : Aug 18, 2022, 11:07:24 PM
    Author     : thilan
--%>

<%@page import="assignment.City"%>
<%@page import="assignment.Distance"%>
<%@page import="assignment.VehicleType"%>
<%@page import="java.util.List"%>
<%@page import="assignment.SelectedVehicle"%>
<%@include file="../../../customer/includes/wsdlCustomerConnection.jsp" %>
<%@include file="../../../admin/includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    int pickUpCityId    = Integer.parseInt(request.getParameter("pick_up_city_id"));
    int dropOffCityId   = Integer.parseInt(request.getParameter("drop_off_city_id"));
    int vehicleType     = Integer.parseInt(request.getParameter("vehicle_type_id"));
    String pickUpStreet = request.getParameter("pickup_street");
    String dropOffStreet= request.getParameter("drop_off_street");
    
    List<SelectedVehicle> selectedVehicles = customerProxy.getDriversByTypeIdAndSouceCity(vehicleType, pickUpCityId);
    Distance distance = admin_proxy.getDistanceBySourceIdAndDestinationId(pickUpCityId, dropOffCityId);
    
    out.print(distance.getDistance());
%>

<html lang="en">

    <head>
        
        <title>Go Cheeta - Booking Data</title>
        
        <%@include file="../../../admin/includes/new/head-css.jsp" %>

    </head>

    <body data-sidebar="dark" data-keep-enlarged="true" class="vertical-collpsed">

        <!-- Begin page -->
        <div id="layout-wrapper">
            
            
            <%@include file="../../../customer/includes/new/menu.jsp" %>

            
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                        <h4 class="card-title">Select Vehicle</h4>

                                        <div class="row">
                                            
                                            <% for (SelectedVehicle vehicle : selectedVehicles) { %>
                                            <% VehicleType currentVehicleType = admin_proxy.getVehicleTypeById(vehicle.getTypeId()); %>   
                                            <% City city =  admin_proxy.getCityById(vehicle.getCityId()); %>
                                            <% double price = customerProxy.vehiclePriceCalculation(currentVehicleType.getInitialCost(), vehicle.getRatePerKm(), Double.parseDouble(distance.getDistance())); %>
                                            <div class="col-xl-3 col-sm-6">
                                                <div class="card text-center">
                                                    <div class="card-body">
                                                        <div class="avatar-sm mx-auto mb-4">
                                                            <span class="avatar-title rounded-circle bg-primary bg-soft text-primary font-size-16">
                                                                <%= vehicle.getDriverFirstName().substring(0,1).toUpperCase() %><%= vehicle.getDriverLastName().substring(0, 1).toUpperCase() %>
                                                            </span>
                                                        </div>
                                                        <h5 class="font-size-15 mb-1"><a href="#" class="text-dark"><%= vehicle.getDriverFirstName() + " " + vehicle.getDriverLastName() %></a></h5>
                                                        <p class="text-muted"><%= city.getName() %></p>
                                                        <div>
                                                            <div class="badge bg-primary font-size-11 m-1"><%= currentVehicleType.getVehicleType() %></div>
                                                        </div>
                                                    </div>
                                                    <div class="card-footer bg-transparent border-top">
                                                        <div class="contact-links d-flex font-size-20">
                                                            <div class="flex-fill">
                                                                <span class="font-size-15">LKR <%= price %></span>
                                                                
                                                            </div>
                                                            <div class="flex-fill">
                                                                <span class="font-size-15"><%= distance.getDistance() %> Km</span>
                                                            </div>
                                                            <div class="flex-fill">
                                                                <a href="/assignment-client/customer/controller/booking/sendDriverRequest.jsp?pick_up_city_id=<%= pickUpCityId %>&drop_off_city_id=<%= dropOffCityId %>&vehicle_type_id=<%= vehicleType %>&pickup_street=<%= pickUpStreet %>&drop_off_street=<%= dropOffStreet %>&selected_vehicle_id=<%= vehicle.getVehicleId() %>&price=<%= price %>&distance=<%= distance.getDistance() %>" class="btn btn-sm btn-success">Accept</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <% }%>
                                            
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div> <!-- container-fluid -->
                </div>
                

                
                
                <%@include file="../../../admin/includes/new/footer.jsp" %>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->        

        <%@include file="../../../admin/includes/new/scripts.jsp" %>
        
        <script src="/assignment-client/admin/asset/libs/parsleyjs/parsley.min.js"></script>
        <script src="/assignment-client/admin/asset/js/form-validation.init.js"></script>
        <script src="/assignment-client/admin/asset/js/app.js"></script>           
    </body>
</html>
