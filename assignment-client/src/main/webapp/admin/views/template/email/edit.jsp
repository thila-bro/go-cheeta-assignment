<%-- 
    Document   : edit
    Created on : 16 Sept 2022, 14:40:00
    Author     : thilanmaduranga
--%>

<%@page import="java.util.List"%>
<%@page import="assignment.Template"%>
<%@include file="../../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        
        <title>Go Cheeta - All Email Template</title>
        
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

                                        <h4 class="card-title">Update Email Template</h4>

                                        <form action="/assignment-client/admin/controller/vehicle/addVehicle.jsp" method="post" class="custom-validation">                                                                                        
                                            <% Template template = admin_proxy.getEmailTemplateById(Integer.parseInt(request.getParameter("id"))); %>
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Register No.</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="title" type="text" placeholder="Enter Email Title" data-parsley-length="[2,40]" value="<%= template.getTitle() %>" required>
                                                </div>
                                            </div>
                                                    
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Rate per Km</label>
                                                <div class="col-md-10">
<!--                                                    <input class="form-control" name="rate_kilo_meter" type="text" placeholder="Enter Rate per kilo meter" data-parsley-length="[2,10]" required>-->
                                                    <textarea class="form-control" rows="5"><%= template.getContent() %></textarea>
                                                </div>
                                            </div>
                                                    
                                                    
                                            <div class="mb-3 row">
                                                <div class="col-md-10 offset-2">
                                                    <input type="hidden" name="template_id" value="<%= template.getTemplateId() %>">
                                                    <button class="btn btn-primary" type="submit">Update</button>
                                                </div>
                                            </div>
                                        </form>


                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div>

                    </div> <!-- container-fluid -->
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
