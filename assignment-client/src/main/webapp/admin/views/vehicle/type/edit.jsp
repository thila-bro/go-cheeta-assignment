<%-- 
    Document   : add
    Created on : Aug 4, 2022, 9:52:40 AM
    Author     : thilan
--%>

<%@page import="assignment.VehicleType"%>
<%@page import="java.util.List"%>
<%@include file="../../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%  int vehicleTypeId = Integer.parseInt(request.getParameter("id"));
    VehicleType vehicleType = admin_proxy.getVehicleTypeById(vehicleTypeId);
%>

<!DOCTYPE html>

<html lang="en">

    <head>
        
        <title>Go Cheeta - Edit Vehicle Type</title>
        
        <%@include file="../../../includes/new/head-css.jsp" %>

        <!-- DataTables -->
        <link href="/assignment-client/admin/asset/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <!-- Responsive datatable examples -->
        <link href="/assignment-client/admin/asset/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />

    </head>

    <body data-sidebar="dark">

        <!-- Begin page -->
        <div id="layout-wrapper">
            
            
            <%@include file="../../../includes/new/menu.jsp" %>

            
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                        <h4 class="card-title">Edit Vehicle Type</h4>

                                        <form action="/assignment-client/admin/controller/vehicle/updateType.jsp" method="post" class="custom-validation">
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Vehicle Type</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="type" type="text" placeholder="Enter Vehicle Type" data-parsley-length="[2,40]" value="<% out.print(vehicleType.getVehicleType()); %>" required>
                                                </div>
                                            </div>
                                                
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Initial Cost (Rs.)</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="initial_cost" type="text" placeholder="Enter Vehicle Type Initial Cost" data-parsley-length="[2,10]" value="<% out.print(vehicleType.getInitialCost()); %>" required>
                                                </div>
                                            </div>
                                                
                                                
                                            <div class="mb-3 row">
                                                <div class="col-md-10 offset-2">
                                                    <input name="id" type="hidden"value="<% out.print(vehicleType.getVehilceTypeId()); %>">
                                                    <button class="btn btn-primary" type="submit">Update</button>
                                                </div>
                                            </div>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div> 
                </div>
                

                
                
                <%@include file="../../../includes/new/footer.jsp" %>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->        

        <%@include file="../../../includes/new/scripts.jsp" %>
        
        <script src="/assignment-client/admin/asset/libs/parsleyjs/parsley.min.js"></script>
        <script src="/assignment-client/admin/asset/js/form-validation.init.js"></script>                
        <script src="/assignment-client/admin/asset/js/app.js"></script>
        

    </body>
</html>
