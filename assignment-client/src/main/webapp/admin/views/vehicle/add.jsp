<%-- 
    Document   : add
    Created on : 9 Aug 2022, 10:54:19
    Author     : thilanmaduranga
--%>
<%@page import="assignment.Branch"%>
<%@page import="assignment.Vehicle"%>
<%@page import="assignment.Driver"%>
<%@page import="assignment.VehicleType"%>
<%@page import="java.util.List"%>
<%@page import="assignment.City"%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        
        <title>Go Cheeta - Add New Vehicle</title>
        
        <%@include file="../../includes/new/head-css.jsp" %>

        <!-- DataTables -->
        <link href="/assignment-client/admin/asset/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <!-- Responsive datatable examples -->
        <link href="/assignment-client/admin/asset/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />

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

                                        <h4 class="card-title">Add New Vehicle</h4>

                                        <form action="/assignment-client/admin/controller/vehicle/addVehicle.jsp" method="post" class="custom-validation">
                                            
                                            <div class="mb-3 row">
                                                <label for="city-input" class="col-md-2 col-form-label">Vehicle Type</label>
                                                <div class="col-md-10">
                                                    <select class="form-control select2" name="vehicle_type" required>
                                                            <option>Select</option>
                                                        <% List<VehicleType> vehicleTypes = admin_proxy.getVehicleTypes(); %>
                                                        <% for(VehicleType vehicleType: vehicleTypes){ %>
                                                        <option value="<% out.print(vehicleType.getVehilceTypeId()); %>"><% out.print(vehicleType.getVehicleType()); %></option>
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
                                                        <option value="<% out.print(driver.getId()); %>"><% out.print(driver.getFirstName() + " " + driver.getLastName()); %></option>
                                                        <% } %>
                                                    </select>
                                                </div>
                                            </div>
                                                    
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Register No.</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="register_no" type="text" placeholder="Enter Register No." data-parsley-length="[2,40]" required>
                                                </div>
                                            </div>
                                                    
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Rate per Km</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="rate_kilo_meter" type="text" placeholder="Enter Rate per kilo meter" data-parsley-length="[2,10]" required>
                                                </div>
                                            </div>
                                                    
                                                    
                                            <div class="mb-3 row">
                                                <div class="col-md-10 offset-2">
                                                    <button class="btn btn-primary" type="submit">Save</button>
                                                </div>
                                            </div>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                        <h4 class="card-title">All Vehicles</h4>

                                        <table id="datatable" class="table table-bordered dt-responsive  nowrap w-100">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Register No.</th>
                                                    <th>Type</th>
                                                    <th>Driver</th>
                                                    <th>Branch</th>
                                                    <th>Km Rate</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>


                                            <tbody>
                                                <% List<Vehicle> vehicles = admin_proxy.getVehicles(); %>
                                                <% for(Vehicle vehicle: vehicles){ %>
                                                <% Driver driver = admin_proxy.getDriverById(vehicle.getDriverId()); %>
                                                <% Branch branch = admin_proxy.getBranchById(driver.getBranchId()); %>
                                                <% City city  = admin_proxy.getCityById(branch.getCityId()); %>
                                                <% VehicleType vehicleType = admin_proxy.getVehicleTypeById(vehicle.getTypeId()); %>
                                                <tr>
                                                    <td><% out.print(vehicles.indexOf(vehicle)+1); %></td>
                                                    <td><% out.print(vehicle.getRegisterNo()); %></td>
                                                    <td><% out.print(vehicleType.getVehicleType()); %></td>
                                                    <td><% out.print(driver.getFirstName() + " " + driver.getLastName()); %></td>
                                                    <td><% out.print(city.getName()); %></td>
                                                    <td><% out.print(vehicle.getRatePerKm()); %></td>
                                                    <td>
                                                        <a href="./edit.jsp?id=<% out.print(vehicle.getVehicleId()); %>" class="btn btn-sm btn-warning"><i class="mdi mdi-file-document-edit-outline align-middle me-1"></i>Edit</a>
                                                        <a href="/assignment-client/admin/controller/vehicle/deleteVehicle.jsp?id=<% out.print(vehicle.getVehicleId()); %>" class="btn btn-sm btn-danger"><i class="mdi mdi-delete-forever-outline align-middle me-1"></i>Delete</a>
                                                    </td>
                                                </tr>
                                                <% } %>
                                            </tbody>
                                        </table>


                                    </div>
                                </div>
                            </div> <!-- end col -->
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
        
        
        <script src="/assignment-client/admin/asset/libs/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
        
        <script src="/assignment-client/admin/asset/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
        
        <script src="/assignment-client/admin/asset/js/datatables.init.js"></script>
        
        <script src="/assignment-client/admin/asset/js/app.js"></script>
        

    </body>
</html>
