<%-- 
    Document   : makeBooking
    Created on : Aug 12, 2022, 1:58:08 PM
    Author     : thilan
--%>





<%@page import="assignment.Driver"%>
<%@page import="assignment.Customer"%>
<%@page import="assignment.VehicleType"%>
<%@page import="assignment.City"%>
<%@page import="java.util.List"%>
<%@include file="../../admin/includes/wsdlAdminConenction.jsp" %>
<%@include file="../../customer/includes/wsdlCustomerConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% List<City> cities = admin_proxy.getCities(); %>
<% List<VehicleType> vehicleTypes = admin_proxy.getVehicleTypes(); %>

<!DOCTYPE html>

<head>

    <title>Go Cheeta - Customer Booking</title>

    <%@include file="../../admin/includes/new/head-css.jsp" %>

    <link href="/assignment-client/admin/asset/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />

</head>

<body data-sidebar="dark" data-keep-enlarged="true" class="vertical-collpsed">
    <!-- Begin page -->
    <div id="layout-wrapper">

        <%@include file="../../admin/includes/new/menu.jsp" %>

        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">

            <div class="page-content">
                <div class="container-fluid">

                    <?= $page_title ?>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title mb-4">Booking Taxi</h4>

                                    <div id="basic-example">
                                        <!-- Source Location -->
                                        <h3>Source Location</h3>
                                        <section>
                                            <form>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-floating mb-3">
                                                            <input type="source_street_address" class="form-control" id="floatingemailInput" placeholder="Enter street address">
                                                            <label for="floatingemailInput">Enter street address</label>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-floating mb-3">
                                                            <select class="form-select" aria-label="Floating label select example" name="source_city">
                                                                <option selected>Select source city</option>
                                                                <% for (City city : cities) { %>
                                                                <option value="<% out.print(city.getCityId()); %>"><% out.print(city.getName()); %></option>
                                                                <% } %>
                                                            </select>
                                                            <label for="floatingSelectGrid">Select source city</label>
                                                        </div>
                                                    </div>

                                                </div>
                                            </form>
                                        </section>

                                        <!-- Destination Location -->
                                        <h3>Destination Location</h3>
                                        <section>
                                            <form>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-floating mb-3">
                                                            <input type="destination_street_address" class="form-control" id="floatingemailInput" placeholder="Enter street address">
                                                            <label for="floatingemailInput">Enter street address</label>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-floating mb-3">
                                                            <select class="form-select" aria-label="Floating label select example" name="destination_city">
                                                                <option selected>Select destination city</option>
                                                                <% for (City city : cities) { %>
                                                                <option value="<% out.print(city.getCityId()); %>"><% out.print(city.getName()); %></option>
                                                                <% }%>
                                                            </select>
                                                            <label for="floatingSelectGrid">Select source city</label>
                                                        </div>
                                                    </div>

                                                </div>
                                            </form>
                                        </section>

                                        <!-- Vehicle Details -->
                                        <h3>Vehicle Details</h3>
                                        <section>
                                            <div>
                                                <form>
                                                    <div class="row">

                                                        <div class="col-md-12">
                                                            <div class="form-floating mb-3">
                                                                <select class="form-select" aria-label="Floating label select example" name="vehilce_type" id="vehilce_type" onchange="vehilceTypeSelect()">
                                                                    <option selected>Select destination city</option>
                                                                    <% for (VehicleType vehicleType : vehicleTypes) { %>
                                                                    <option value="<% out.print(vehicleType.getVehilceTypeId()); %>"><% out.print(vehicleType.getVehicleType()); %></option>
                                                                    <% }%>
                                                                </select>
                                                                <label for="floatingSelectGrid">Select vehicle type</label>
                                                            </div>
                                                        </div>

                                                    </div>

                                                    <div class="row" id="driverListView">
                                                        
                                                    </div>
                                                </form>
                                            </div>
                                        </section>

                                        <!-- Confirm Details -->
                                        <h3>Confirm Detail</h3>
                                        <section>
                                            <div class="row justify-content-center">
                                                <div class="col-lg-6">
                                                    <div class="text-center">
                                                        <div class="mb-4">
                                                            <i class="mdi mdi-check-circle-outline text-success display-4"></i>
                                                        </div>
                                                        <div>
                                                            <h5>Confirm Detail</h5>
                                                            <p class="text-muted">If several languages coalesce, the grammar of the resulting</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                    </div>

                                </div>
                                <!-- end card body -->
                            </div>
                            <!-- end card -->
                        </div>
                        <!-- end col -->
                    </div>
                    <!-- end row -->

                </div> <!-- container-fluid -->
            </div>
            <!-- End Page-content -->



            <%@include file="../../admin/includes/new/footer.jsp" %>
        </div>
        <!-- end main content-->

    </div>
    <!-- END layout-wrapper -->



    <%@include file="../../admin/includes/new/scripts.jsp" %>           
    <script src="/assignment-client/admin/asset/libs/jquery-steps/build/jquery.steps.min.js"></script>
    <script src="/assignment-client/admin/asset/js/form-wizard.init.js"></script>
    <script src="/assignment-client/admin/asset/js/app.js"></script>


    <script>
        var vehicletype;
        function vehilceTypeSelect() {
            vehicletype = $("#vehilce_type").val();
            
            driverList = "<% out.print(admin_proxy.getDrivers()); %>";
            
            <% 
//                String jsonStr = JSONArray.toJSONString(admin_proxy.getDrivers());

                List<Driver> drivers = admin_proxy.getDrivers();
                
                String driverList = "[";
                
                for(Driver driver: drivers) {
                    driverList = driverList + "{'first_name':'"+driver.getFirstName()+"', 'last_name':'"+driver.getLastName()+"', 'email':'"+driver.getEmail()+"', 'mobile':'"+driver.getMobile()+"'},";
                }
                
                driverList = driverList + "]";
                
                
            %>
                    
            var driverList = <% out.print(driverList); %>;
            
            html = '';
            for(i = 0; i < driverList.length; i++) {
                html = html + `
                    <div class="col-xl-3 col-sm-6">
                        <div class="card text-center">
                            <div class="card-body">
                                <div class="avatar-sm mx-auto mb-4">
                                    <span class="avatar-title rounded-circle bg-primary bg-soft text-primary font-size-16">
                                        `+driverList[i].first_name.charAt(0).toUpperCase()+driverList[i].last_name.charAt(0).toUpperCase()+`
                                    </span>
                                </div>
                                <h5 class="font-size-15 mb-1"><a href="#" class="text-dark">`+driverList[i].first_name+` `+driverList[i].last_name+`</a></h5>
                                <p class="text-muted">Alto</p>
                                <div>
                                    <div class="badge bg-primary font-size-11 m-1">Colombo</div>
                                </div>
                            </div>
                            <div class="card-footer bg-transparent border-top">
                                <div class="contact-links d-flex font-size-20">
                                    <div class="flex-fill">
                                        <a href=""><i class="bx bx-message-square-dots"></i></a>
                                    </div>
                                    <div class="flex-fill">
                                        <a href=""><i class="bx bx-pie-chart-alt"></i></a>
                                    </div>
                                    <div class="flex-fill">
                                        <a href=""><i class="bx bx-user-circle"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                `;
            }
            
            $("#driverListView").html(html)
        }
    </script>

</body>


</html>
