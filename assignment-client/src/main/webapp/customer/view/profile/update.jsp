<%-- 
    Document   : update
    Created on : 14 Sept 2022, 12:30:22
    Author     : thilanmaduranga
--%>


<%@page import="assignment.Customer"%>
<%@page import="assignment.Admin"%>
<%@include file="../../../customer/includes/wsdlCustomerConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        
        <title>Go Cheeta - Update Profile</title>
        
        <%@include file="../../../admin/includes/new/head-css.jsp" %>        

    </head>

    <body data-sidebar="dark">

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

                                        <h4 class="card-title">Update Profile</h4>

                                        <form action="/assignment-client/customer/controller/profile/update.jsp" method="post" class="custom-validation">
                                            <% Customer customer = customerProxy.getCustomerById(customerId); %>
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Mobile Number</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" type="text" placeholder="Enter Mobile Number" value="<%= customer.getMobile() %>" readonly>
                                                </div>
                                            </div>
                                                
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">First Name</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="first_name" type="text" placeholder="Enter First Name" data-parsley-length="[2,40]" value="<%= customer.getFirstName() %>" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Last Name</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="last_name" type="text" placeholder="Enter Last Name" data-parsley-length="[2,40]" value="<%= customer.getLastName() %>" required>
                                                </div>
                                            </div>
                                                
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Email</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" type="email" name="email" value="<%= customer.getEmail() %>" data-parsley-length="[2,40]" required>
                                                </div>
                                            </div>
                                                
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Password</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="password" type="password" placeholder="Enter New Password" data-parsley-length="[2,40]">
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <div class="col-md-10 offset-2">
                                                    <input type="hidden" name="customer_id" value="<%= customer.getId() %>">
                                                    <button class="btn btn-primary" type="submit">Update</button>
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
        <script src="/assignment-client/admin/asset/js/app.js"></script>
        

    </body>
</html>