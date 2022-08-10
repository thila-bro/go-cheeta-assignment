<%-- 
    Document   : edit
    Created on : 9 Aug 2022, 16:15:35
    Author     : thilanmaduranga
--%>
<%@page import="assignment.Vehicle"%>
<%@page import="assignment.Driver"%>
<%@page import="assignment.VehicleType"%>
<%@page import="java.util.List"%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% int vehicleId = Integer.parseInt(request.getParameter("id")); %>
<% Vehicle vehicle = admin_proxy.getVehicleById(vehicleId); %>
<!DOCTYPE html>
<html lang="en">

    <head>
        
        <title>Go Cheeta - Edit Vehicle</title>
        
        <%@include file="../../includes/new/head-css.jsp" %>

    </head>

    <body data-sidebar="dark">

        <!-- Begin page -->
        <div id="layout-wrapper">
            
            
            <%@include file="../../includes/new/menu.jsp" %>

            
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                        <h4 class="card-title">Update Vehicle</h4>

                                        <form action="/assignment-client/admin/controller/vehicle/updateVehicle.jsp" method="post" class="custom-validation">
                                            
                                            <div class="mb-3 row">
                                                <label for="city-input" class="col-md-2 col-form-label">Vehicle Type</label>
                                                <div class="col-md-10">
                                                    <select class="form-control select2" name="vehicle_type" required>
                                                            <option>Select</option>
                                                        <% List<VehicleType> vehicleTypes = admin_proxy.getVehicleTypes(); %>
                                                        <% for(VehicleType vehicleType: vehicleTypes){ %>
                                                        <option value="<% out.print(vehicleType.getVehilceTypeId()); %>"
                                                                <% if(vehicleType.getVehilceTypeId() == vehicle.getTypeId()) { %>
                                                                <% out.print("selected"); %>
                                                                <% } %>><% out.print(vehicleType.getVehicleType()); %></option>
                                                        <% } %>
                                                    </select>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="city-input" class="col-md-2 col-form-label">Driver</label>
                                                <div class="col-md-10">
                                                    <select class="form-control select2" name="driver" required>
                                                            <option>Select</option>
                                                        <% List<Driver> drivers = admin_proxy.getDrivers(); %>
                                                        <% for(Driver driver: drivers){ %>
                                                        <option value="<% out.print(driver.getId()); %>"
                                                                <% if(driver.getId() == vehicle.getDriverId()) { %>
                                                                <% out.print("selected"); %>
                                                                <% } %>><% out.print(driver.getFirstName() + " " + driver.getLastName()); %></option>
                                                        <% } %>
                                                    </select>
                                                </div>
                                            </div>                                                                                                        
                                                    
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Register No.</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="register_no" type="text" placeholder="Enter Register No." data-parsley-length="[2,40]" value="<% out.print(vehicle.getRegisterNo()); %>" required>
                                                </div>
                                            </div>
                                                    
                                            <div class="mb-3 row">
                                                <div class="col-md-10 offset-2">
                                                    <input type="hidden" name="id" value="<% out.print(vehicle.getVehicleId()); %>">
                                                    <button class="btn btn-primary" type="submit">Update</button>
                                                </div>
                                            </div>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- container-fluid -->
                </div>
                

                
                
                <%@include file="../../includes/new/footer.jsp" %>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->        

        <%@include file="../../includes/new/scripts.jsp" %>
        
        <script src="/assignment-client/admin/asset/libs/parsleyjs/parsley.min.js"></script>
        <script src="/assignment-client/admin/asset/js/form-validation.init.js"></script>
        <script src="/assignment-client/admin/asset/js/app.js"></script>
    </body>
</html>
