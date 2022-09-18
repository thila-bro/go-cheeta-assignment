<%-- 
    Document   : vehicles
    Created on : Sep 18, 2022, 12:26:40 PM
    Author     : thilan
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
        <link href="/assignment-client/admin/asset/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />

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
                                        <h4 class="card-title">All Vehicles</h4>
                                        <table id="datatable-buttons" class="table table-bordered dt-responsive  nowrap w-100">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Register No.</th>
                                                    <th>Type</th>
                                                    <th>Driver</th>
                                                    <th>Branch</th>
                                                    <th>Km Rate</th>
                                                    <th>Availability</th>
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
                                                        <% if(vehicle.isAvailability()) { %>
                                                            Available
                                                        <% } else { %>
                                                            Not Available
                                                        <% } %>
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
        
        <!-- Required datatable js -->
        <script src="/assignment-client/admin/asset/libs/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
        
        
        <!-- Buttons examples -->
        <script src="/assignment-client/admin/asset/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/jszip/jszip.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/pdfmake/build/pdfmake.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/pdfmake/build/vfs_fonts.js"></script>
        <script src="/assignment-client/admin/asset/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/datatables.net-buttons/js/buttons.colVis.min.js"></script>
        
        <script src="/assignment-client/admin/asset/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
        
        <script src="/assignment-client/admin/asset/js/datatables.init.js"></script>
        <script src="/assignment-client/admin/asset/js/app.js"></script>
        

    </body>
</html>
