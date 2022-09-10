<%-- 
    Document   : newFeedback
    Created on : Sep 10, 2022, 4:00:29 PM
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
        
        <title>Go Cheeta - Customer Feedback</title>
        
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

                                        <h4 class="card-title">Add Feedback</h4>

                                        <form action="/assignment-client/customer/controller/feedback/add.jsp" method="post" class="custom-validation">
                                            
                                            <div class="row mt-4 mb-4 p-2">
                                                <div class="col-md-12">
                                                    <div class="p-4 text-start">
                                                        <h5 class="font-size-15">Trip rating</h5>
                                                        <div class="rating-star">
                                                            <input type="hidden" class="rating" name="trip_rating" value="5" data-filled="mdi mdi-star text-primary" data-empty="mdi mdi-star-outline text-muted"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">Enter Feedback</label>
                                                        <textarea id="id" name="feedback" rows="5" cols="10" class="form-control" placeholder="Enter your feedback"></textarea>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="mb-3 row">
                                                <div class="col-md-10">
                                                    <input type="hidden" name="booking_id" value="<%= request.getParameter("booking_id") %>">
                                                    <button class="btn btn-primary" type="submit">Add Feedback</button>
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
        
        <!-- Bootstrap rating js -->
        <script src="/assignment-client/admin/asset/libs/bootstrap-rating/bootstrap-rating.min.js"></script>

        <script src="/assignment-client/admin/asset/js/rating-init.js"></script>
        
        <script src="/assignment-client/admin/asset/js/app.js"></script>
    </body>
</html>