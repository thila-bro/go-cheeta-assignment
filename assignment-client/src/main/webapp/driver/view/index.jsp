<%-- 
    Document   : index
    Created on : Sep 5, 2022, 11:11:23 PM
    Author     : thilan
--%>

<%@page import="assignment.City"%>
<%@page import="assignment.Customer"%>
<%@page import="assignment.Booking"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../include/wsdlDriverConnection.jsp" %>
<%@include file="../../admin/includes/wsdlAdminConenction.jsp" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <title>Go Cheeta Driver Dashboard</title>

        <%@include file="../../admin/includes/new/head-css.jsp" %>

    </head>

    <body data-sidebar="dark" data-keep-enlarged="true" class="vertical-collpsed">

        <!-- Begin page -->
        <div id="layout-wrapper">


            <%@include file="./includes/menu.jsp" %>
            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-xl-8">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="d-flex">
                                                    <div class="flex-grow-1">
                                                        <p class="text-muted fw-medium">Orders</p>
                                                        <h4 class="mb-0">1,235</h4>
                                                    </div>

                                                    <div class="mini-stat-icon avatar-sm rounded-circle bg-primary align-self-center">
                                                        <span class="avatar-title">
                                                            <i class="bx bx-copy-alt font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="d-flex">
                                                    <div class="flex-grow-1">
                                                        <p class="text-muted fw-medium">Revenue</p>
                                                        <h4 class="mb-0">$35, 723</h4>
                                                    </div>

                                                    <div class="avatar-sm rounded-circle bg-primary align-self-center mini-stat-icon">
                                                        <span class="avatar-title rounded-circle bg-primary">
                                                            <i class="bx bx-archive-in font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="d-flex">
                                                    <div class="flex-grow-1">
                                                        <p class="text-muted fw-medium">Average Price</p>
                                                        <h4 class="mb-0">$16.2</h4>
                                                    </div>

                                                    <div class="avatar-sm rounded-circle bg-primary align-self-center mini-stat-icon">
                                                        <span class="avatar-title rounded-circle bg-primary">
                                                            <i class="bx bx-purchase-tag-alt font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end row -->

                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-sm-flex flex-wrap">
                                            <h4 class="card-title mb-4">Email Sent</h4>
                                            <div class="ms-auto">
                                                <ul class="nav nav-pills">
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="#">Week</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="#">Month</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link active" href="#">Year</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="stacked-column-chart" class="apex-charts" dir="ltr"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->                        

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-4">Latest Booking</h4>
                                        <div class="table-responsive">
                                            <table class="table align-middle table-nowrap mb-0">
                                                <thead class="table-light">
                                                    <tr>
                                                        <th class="align-middle">Booking ID</th>
                                                        <th class="align-middle">Customer</th>
                                                        <th class="align-middle">Mobile</th>
                                                        <th class="align-middle">Drop city</th>
                                                        <th class="align-middle">Price</th>
                                                        <th class="align-middle">Distance</th>
                                                        <th class="align-middle">Status</th>
                                                        <th class="align-middle">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <% List<Booking> bookings = driverProxy.getDriverBookings(Integer.parseInt(userID)); %>
                                                    <% for (Booking booking : bookings) { %>
                                                    <% City dropCity = admin_proxy.getCityById(booking.getDropOffCityId()); %>
                                                    <% Customer customer = admin_proxy.getCustomerById(booking.getCustomerId());%>
                                                    <tr>
                                                        <td><%= booking.getBookingId()%></td>
                                                        <td><%= customer.getFirstName() + " " + customer.getLastName()%></td>
                                                        <td><a href="tel:<%= customer.getMobile() %>"><%= customer.getMobile() %></td>
                                                        <td><%= dropCity.getName()%></td>
                                                        <td>Rs. <%= booking.getPrice()%></td>
                                                        <td><%= booking.getDistance()%> Km</td>
                                                        <td>
                                                            <% if(booking.getStatus() == 0) { %>
                                                                <span class="badge badge-pill badge-soft-warning font-size-11">Pending</span>
                                                            <% } else if(booking.getStatus() == 1){ %>
                                                                <span class="badge badge-pill badge-soft-success font-size-11">On Trip</span>
                                                            <% } else if(booking.getStatus() == 2) { %>
                                                                <span class="badge badge-pill badge-soft-danger font-size-11">Declined</span>
                                                            <% } else if(booking.getStatus() == 3) { %>
                                                                <span class="badge badge-pill badge-soft-success font-size-11">Completed</span>
                                                            <% } %>
                                                        </td>
                                                        <td>
                                                            <% if(booking.getStatus() == 0){ %>
                                                                <a href="/assignment-client/driver/controller/booking/accept.jsp?booking_id=<%= booking.getBookingId() %>" class="btn btn-success btn-sm btn-rounded waves-effect waves-light">Approve</a>
                                                                <a href="/assignment-client/driver/controller/booking/reject.jsp?booking_id=<%= booking.getBookingId() %>" class="btn btn-danger btn-sm btn-rounded waves-effect waves-light">Declined</a>
                                                            <% } else if(booking.getStatus() == 1){ %>
                                                                <a href="/assignment-client/driver/controller/booking/complete.jsp?booking_id=<%= booking.getBookingId() %>" class="btn btn-success btn-sm btn-rounded waves-effect waves-light">Complete</a>
                                                            <% } %>
                                                        </td>
                                                    </tr>
                                                <% }%>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- end table-responsive -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                    </div> <!-- container-fluid -->
                </div>
                <!-- End Page-content -->
            </div>
            <!-- End Page-content -->



            <%@include file="../../admin/includes/new/footer.jsp" %>
        </div>
        <!-- end main content-->

    </div>
    <!-- END layout-wrapper -->        

    <%@include file="../../driver/include/scripts.jsp" %>

    <!-- apexcharts -->
    <script src="/assignment-client/admin/asset/js/apexcharts.min.js"></script>

    <!-- Saas dashboard init -->
    <script src="/assignment-client/admin/asset/js/saas-dashboard.init.js"></script>

    <script src="/assignment-client/admin/asset/js/app.js"></script>

</body>
</html>