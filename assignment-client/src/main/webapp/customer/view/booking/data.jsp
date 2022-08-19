<%-- 
    Document   : data
    Created on : Aug 18, 2022, 9:42:27 PM
    Author     : thilan
--%>

<%@page import="assignment.VehicleType"%>
<%@page import="java.util.List"%>
<%@page import="assignment.City"%>
<%@include file="../../../admin/includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% List<City> cities = admin_proxy.getCities(); %>
<% List<VehicleType> vehicleTypes = admin_proxy.getVehicleTypes();  %>
<!DOCTYPE html>
<html lang="en">

    <head>
        
        <title>Go Cheeta - Booking Data</title>
        
        <%@include file="../../../admin/includes/new/head-css.jsp" %>

    </head>

    <body data-sidebar="dark" data-keep-enlarged="true" class="vertical-collpsed">

        <!-- Begin page -->
        <div id="layout-wrapper">
            
            
            <%@include file="../../../admin/includes/new/menu.jsp" %>

            
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                        <h4 class="card-title">Booking Data</h4>

                                        <form action="./selectVehicle.jsp" method="post" class="custom-validation">
                                            
                                            <div class="row border mt-4 mb-4 p-2">
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label class="form-label">Pick up street address</label>
                                                        <input type="text" class="form-control" placeholder="Enter Pick Up Street Address" name="pickup_street" data-parsley-length="[2,100]" required autofocus>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label class="form-label">Select pick up city</label>
                                                        <select class="form-select" aria-label="Floating label select example" name="pick_up_city_id" id="pick_up_city_id" required onchange="pickUpSelected()">
                                                            <option selected disabled>Select source city</option>
                                                            <% for (City city : cities) { %>
                                                            <option value="<% out.print(city.getCityId()); %>"><% out.print(city.getName()); %></option>
                                                            <% }%>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row border mb-4 p-2">
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label class="form-label">Drop off street address</label>
                                                        <input type="text" class="form-control" placeholder="Enter Street Address" name="drop_off_street" data-parsley-length="[2,100]" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label class="form-label">Select drop off city</label>
                                                        <select class="form-select" aria-label="Floating label select example" name="drop_off_city_id" id="drop_off_city_id" required disabled onchange="removePcikupCity()">
                                                            <option selected disabled value="">Select source city</option>
                                                            <% for (City city : cities) { %>
                                                            <option value="<% out.print(city.getCityId()); %>"><% out.print(city.getName()); %></option>
                                                            <% }%>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mb-4 p-2">
                                                <div class="col-md-12">
                                                    <div class="mb-3"> 
                                                       <label class="form-label">Select vehicle type</label>
                                                        <select class="form-select" name="vehicle_type_id" id="vehicle_type_id" required>
                                                            <option selected disabled value="">Select source city</option>
                                                            <% for (VehicleType type : vehicleTypes) { %>
                                                            <option value="<% out.print(type.getVehilceTypeId()); %>"><% out.print(type.getVehicleType()); %></option>
                                                            <% }%>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="mb-3 row">
                                                <div class="col-md-10">
                                                    <button class="btn btn-primary" type="submit">Confirm</button>
                                                </div>
                                            </div>
                                        </form>

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
        
        <script>
            var pickUpCityId;
            var dropOffCityId;
            function pickUpSelected() {
                pickUpCityId = $("#pick_up_city_id").val();
                if(pickUpCityId !== null) {
                    $("#drop_off_city_id").prop("disabled", false);
                }
            }
            
            function removePcikupCity() {
                dropOffCityId = $("#drop_off_city_id").val();
                
                if(pickUpCityId === dropOffCityId) {
                    $("#drop_off_city_id").val("")
                    formWarning("Pick up and Drop off city must be different");
                }
            }
        </script>
    </body>
</html>