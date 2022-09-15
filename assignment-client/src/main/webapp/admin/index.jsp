<%-- 
    Document   : index2
    Created on : Aug 2, 2022, 4:11:02 PM
    Author     : thilan
--%>

<%@page import="assignment.City"%>
<%@page import="assignment.Branch"%>
<%@page import="assignment.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../admin/includes/wsdlAdminConenction.jsp" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        
        <title>Go Cheeat Admin Dashboard</title>
        
        <%@include file="../admin/includes/new/head-css.jsp" %>

    </head>

    <body data-sidebar="dark">

        <!-- Begin page -->
        <div id="layout-wrapper">
            
            
            <%@include file="../admin/includes/new/menu.jsp" %>

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">
                        <% Admin admin = admin_proxy.getAdminByEmail(email); %>
                        <% Branch branch = admin_proxy.getBranchById(admin.getBranchId()); %>
                        <% City branchCity = admin_proxy.getCityById(branch.getCityId()); %>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="d-flex">
                                                    <div class="me-3">
                                                        <img src="assets/images/users/avatar-1.jpg" alt="" class="avatar-md rounded-circle img-thumbnail">
                                                    </div>
                                                    <div class="flex-grow-1 align-self-center">
                                                        <div class="text-muted">
                                                            <p class="mb-2">Welcome to Go Cheeta Admin Dashboard</p>
                                                            <h5 class="mb-1"><%= admin.getFirstName() + " " + admin.getLastName() %></h5>
                                                            <p class="mb-0">
                                                                <% if(isSuper){ %>
                                                                    Super Admin
                                                                <% } %>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                
                                            <div class="col-lg-4 align-self-center">
                                                <div class="text-lg-center mt-4 mt-lg-0">
                                                    <div class="row">
                                                        <div class="col-4">
                                                            <div>
                                                                <p class="text-muted text-truncate mb-2">Vehicles</p>
                                                                <h5 class="mb-0"><%= admin_proxy.getAllVehicleCount() %></h5>
                                                            </div>
                                                        </div>
                                                        <div class="col-4">
                                                            <div>
                                                                <p class="text-muted text-truncate mb-2">Drivers</p>
                                                                <h5 class="mb-0"><%= admin_proxy.getAllDrivers() %></h5>
                                                            </div>
                                                        </div>
                                                        <div class="col-4">
                                                            <div>
                                                                <p class="text-muted text-truncate mb-2">Customer</p>
                                                                <h5 class="mb-0"><%= admin_proxy.getAllCustomers() %></h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end row -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-xl-4">
                                <div class="card bg-primary bg-soft">
                                    <div>
                                        <div class="row">
                                            <div class="col-7">
                                                <div class="text-primary p-3">
                                                    <h5 class="text-primary"><%= branchCity.getName() %> Branch</h5>
                                                    <p>Skote Saas Dashboard</p>

<!--                                                    <ul class="ps-3 mb-0">
                                                        <li class="py-1">7 + Layouts</li>
                                                        <li class="py-1">Multiple apps</li>
                                                    </ul>-->
                                                </div>
                                            </div>
                                            <div class="col-5 align-self-end">
                                                <img src="assets/images/profile-img.png" alt="" class="img-fluid">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-8">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="d-flex align-items-center mb-3">
                                                    <div class="avatar-xs me-3">
                                                        <span class="avatar-title rounded-circle bg-primary bg-soft text-primary font-size-18">
                                                            <i class="bx bx-copy-alt"></i>
                                                        </span>
                                                    </div>
                                                    <h5 class="font-size-14 mb-0">Orders</h5>
                                                </div>
                                                <div class="text-muted mt-4">
                                                    <h4><%= admin_proxy.getAllBookingCount() %></h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="d-flex align-items-center mb-3">
                                                    <div class="avatar-xs me-3">
                                                        <span class="avatar-title rounded-circle bg-primary bg-soft text-primary font-size-18">
                                                            <i class="bx bx-archive-in"></i>
                                                        </span>
                                                    </div>
                                                    <h5 class="font-size-14 mb-0">Revenue</h5>
                                                </div>
                                                <div class="text-muted mt-4">
                                                    <h4>Rs. <%= admin_proxy.getAllRevenue() %></h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
        
                                    <div class="col-sm-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="d-flex align-items-center mb-3">
                                                    <div class="avatar-xs me-3">
                                                        <span class="avatar-title rounded-circle bg-primary bg-soft text-primary font-size-18">
                                                            <i class="bx bx-purchase-tag-alt"></i>
                                                        </span>
                                                    </div>
                                                    <h5 class="font-size-14 mb-0">Average Price</h5>
                                                </div>
                                                <div class="text-muted mt-4">
                                                    <h4>Rs. <%= admin_proxy.getAveragePrice() %></h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end row -->
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xl-8">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="clearfix">
                                            <div class="float-end">
                                                <div class="input-group input-group-sm">
                                                    <select class="form-select form-select-sm">
                                                        <option value="JA" selected>Jan</option>
                                                        <option value="DE">Dec</option>
                                                        <option value="NO">Nov</option>
                                                        <option value="OC">Oct</option>
                                                    </select>
                                                    <label class="input-group-text">Month</label>
                                                </div>
                                            </div>
                                            <h4 class="card-title mb-4">Earning</h4>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="text-muted">
                                                    <div class="mb-4">
                                                        <p>This month</p>
                                                        <h4>$2453.35</h4>
                                                        <div><span class="badge badge-soft-success font-size-12 me-1"> + 0.2% </span> From previous period</div>
                                                    </div>

                                                    <div>
                                                        <a href="#" class="btn btn-primary waves-effect waves-light btn-sm">View Details <i class="mdi mdi-chevron-right ms-1"></i></a>
                                                    </div>
                                                    
                                                    <div class="mt-4">
                                                        <p class="mb-2">Last month</p>
                                                        <h5>$2281.04</h5>
                                                    </div>
                                                    
                                                </div>
                                            </div>

                                            <div class="col-lg-8">
                                                <div id="line-chart" class="apex-charts" dir="ltr"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-4">Sales Analytics</h4>

                                        <div>
                                            <div id="donut-chart" class="apex-charts"></div>
                                        </div>

                                        <div class="text-center text-muted">
                                            <div class="row">
                                                <div class="col-4">
                                                    <div class="mt-4">
                                                        <p class="mb-2 text-truncate"><i class="mdi mdi-circle text-primary me-1"></i> Product A</p>
                                                        <h5>$ 2,132</h5>
                                                    </div>
                                                </div>
                                                <div class="col-4">
                                                    <div class="mt-4">
                                                        <p class="mb-2 text-truncate"><i class="mdi mdi-circle text-success me-1"></i> Product B</p>
                                                        <h5>$ 1,763</h5>
                                                    </div>
                                                </div>
                                                <div class="col-4">
                                                    <div class="mt-4">
                                                        <p class="mb-2 text-truncate"><i class="mdi mdi-circle text-danger me-1"></i> Product C</p>
                                                        <h5>$ 973</h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->                        

                    </div> <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                
                
                <%@include file="../admin/includes/new/footer.jsp" %>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->        

        <%@include file="../admin/includes/new/scripts.jsp" %>

        <!-- apexcharts -->
        <script src="/assignment-client/admin/asset/js/apexcharts.min.js"></script>
        
        <!-- Saas dashboard init -->
        <script src="/assignment-client/admin/asset/js/saas-dashboard.init.js"></script>

        <script src="/assignment-client/admin/asset/js/app.js"></script>

    </body>
</html>
