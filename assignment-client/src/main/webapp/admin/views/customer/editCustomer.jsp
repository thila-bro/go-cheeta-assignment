<%-- 
    Document   : editCustomer
    Created on : 1 Sept 2022, 16:36:03
    Author     : thilanmaduranga
--%>

<%@page import="assignment.Customer"%>
<%@include file="../../../admin/includes/wsdlAdminConenction.jsp" %>
<% Customer customer = admin_proxy.getCustomerById(Integer.parseInt(request.getParameter("id"))); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        
        <title>Go Cheeta - Edit Customer</title>
        
        <%@include file="../../../admin/includes/new/head-css.jsp" %>

        <!-- DataTables -->
        <link href="/assignment-client/admin/asset/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <!-- Responsive datatable examples -->
        <link href="/assignment-client/admin/asset/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />

    </head>

    <body data-sidebar="dark">

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

                                        <h4 class="card-title">Edit Customer</h4>

                                        <form action="/assignment-client/admin/controller/customer/updateCustomer.jsp" method="post" class="custom-validation">
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">First Name</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="first_name" type="text" placeholder="Enter First Name" data-parsley-length="[2,40]" value="<%= customer.getFirstName() %>" required>
                                                </div>
                                            </div>
                                                
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Last Name</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="last_name" type="text" placeholder="Enter Last Name" data-parsley-length="[2,10]" value="<%= customer.getLastName() %>" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Email</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="email" type="email" placeholder="Enter E-mail address" data-parsley-length="[2,10]" value="<%= customer.getEmail() %>" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Mobile</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="mobile" type="text" placeholder="Enter mobile number" data-parsley-length="[2,10]" value="<%= customer.getMobile() %>" disabled>
                                                </div>
                                            </div>
                                                
                                                
                                            <div class="mb-3 row">
                                                <div class="col-md-10 offset-2">
                                                    <input name="id" type="hidden"value="<%= customer.getId() %>">
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
                

                
                
                <%@include file="../../../admin/includes/new/footer.jsp" %>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->        

        <%@include file="../../../admin/includes/new/scripts.jsp" %>
        
        <script src="/assignment-client/admin/asset/libs/parsleyjs/parsley.min.js"></script>
        <script src="/assignment-client/admin/asset/js/form-validation.init.js"></script>                
        <script src="/assignment-client/admin/asset/js/app.js"></script>
        

    </body>
</html>
