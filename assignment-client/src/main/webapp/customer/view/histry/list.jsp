<%-- 
    Document   : list
    Created on : 25 Aug 2022, 13:52:45
    Author     : thilanmaduranga
--%>

<%@page import="assignment.Vehicle"%>
<%@page import="assignment.Booking"%>
<%@page import="assignment.Branch"%>
<%@page import="assignment.VehicleType"%>
<%@page import="java.util.List"%>
<%@page import="assignment.City"%>
<%@include file="../../../admin/includes/wsdlAdminConenction.jsp" %>
<%@include file="../../../customer/includes/wsdlCustomerConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% List<City> cities = admin_proxy.getCities(); %>
<% List<VehicleType> vehicleTypes = admin_proxy.getVehicleTypes();  %>
<!DOCTYPE html>
<html lang="en">

    <head>
        
        <title>Go Cheeta - All Bookings</title>
        
        <%@include file="../../../admin/includes/new/head-css.jsp" %>
        <!-- DataTables -->
        <link href="/assignment-client/admin/asset/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <!-- Responsive datatable examples -->
        <link href="/assignment-client/admin/asset/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />

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

                                        <h4 class="card-title">All Bookings</h4>

                                        <table id="datatable" class="table table-bordered dt-responsive  nowrap w-100">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Vehicle Type</th>
                                                    <th>Vehicle No</th>
                                                    <th>Driver</th>
                                                    <th>Pick Up Street</th>
                                                    <th>Pick Up City</th>
                                                    <th>Drop Off Street</th>
                                                    <th>Drop Off City</th>
                                                    <th>Price (Rs)</th>
                                                    <th>Distance (Km)</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>


                                            <tbody>
                                                <% List<Booking> bookings = customerProxy.getCustomersBookingsById(4); %>
                                                <% for(Booking booking: bookings){ %>
                                                <% VehicleType vehicleType = admin_proxy.getVehicleTypeById(booking.getVehicleTypeId()); %>
                                                <% Vehicle vehicle = admin_proxy.getVehicleById(2); %>
                                                
                                                <% City pickUpCity = admin_proxy.getCityById(booking.getPickUpCityId()); %>
                                                <% City dropOffCity = admin_proxy.getCityById(booking.getDropOffCityId()); %>
                                                <tr>
                                                    <td><% out.print(bookings.indexOf(booking)+1); %></td>
                                                    <td><% out.print(vehicleType.getVehicleType()); %></td>
                                                    <td><% out.print(booking.getVehicleId()); %></td>
                                                    <td><% out.print("Driver"); %></td>
                                                    <td><% out.print(booking.getPickUpStreet()); %></td>
                                                    <td><% out.print(pickUpCity.getName()); %></td>
                                                    <td><% out.print(booking.getDropOffStreet()); %></td>
                                                    <td><% out.print(dropOffCity.getName()); %></td>
                                                    <td><% out.print(booking.getPrice()); %></td>
                                                    <td><% out.print(booking.getDistance()); %></td>
                                                    <td>
                                                        <% if(booking.getStatus() == 0){ %>
                                                            <span class="badge badge-soft-warning font-size-12"> starting </span>
                                                        <% } else if(booking.getStatus() == 1) { %>
                                                            <span class="badge badge-soft-success font-size-12"> Accepted </span>
                                                        <% } else if(booking.getStatus() == 2) { %>
                                                            <span class="badge badge-soft-danger font-size-12"> declined </span>
                                                        <% } else if(booking.getStatus() == 3) { %>
                                                            <span class="badge badge-soft-success font-size-12"> completed </span>
                                                        <% } %>
                                                    </td>
                                                    <td>
                                                        <a href="./edit.jsp?id=<% out.print(booking.getBookingId()); %>" class="btn btn-sm btn-warning"><i class="mdi mdi-file-document-edit-outline align-middle me-1"></i>invoice</a>
                                                        <% if(!booking.isFeedBackStatus()) { %>
                                                            <a href="../feedback/newFeedback.jsp?booking_id=<% out.print(booking.getBookingId()); %>" class="btn btn-sm btn-primary"><i class="mdi mdi-file-document-edit-outline align-middle me-1"></i>feedback</a>
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
                
                <%@include file="../../../admin/includes/new/footer.jsp" %>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->        

        <%@include file="../../../admin/includes/new/scripts.jsp" %>
        
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
