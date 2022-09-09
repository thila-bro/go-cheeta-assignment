<%-- 
    Document   : add
    Created on : 8 Aug 2022, 11:07:56
    Author     : thilanmaduranga
--%>
<%@page import="assignment.City"%>
<%@page import="assignment.Admin"%>
<%@page import="assignment.Branch"%>
<%@page import="java.util.List"%>
<%@include file="../../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% List<Branch> branches = admin_proxy.getBranches(); %>
<% Admin admin = admin_proxy.getAdminById(Integer.parseInt(request.getParameter("id"))); %>

<!DOCTYPE html>
<html lang="en">

    <head>
        
        <title>Go Cheeta - Edit Branch Admin</title>
        
        <%@include file="../../../includes/new/head-css.jsp" %>

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

                                        <h4 class="card-title">Edit Branch Admin</h4>

                                        <form action="/assignment-client/admin/controller/branch/updateAdmin.jsp" method="post" class="custom-validation">
                                            
                                            <div class="mb-3 row">
                                                <label for="branch-id" class="col-md-2 col-form-label">Select Branch</label>
                                                <div class="col-md-10">
                                                    <select class="form-control select2" name="branch_id" required>
                                                        <option>Select</option>
                                                        <% for(Branch branch : branches){ %>
                                                        <% City city = admin_proxy.getCityById(branch.getCityId()); %>
                                                        <option value="<% out.print(branch.getBranchId()); %>" <%
                                                            if (branch.getBranchId() == admin.getBranchId()) {
                                                                out.print("selected");
                                                            } %>><% out.print(city.getName()); %></option>
                                                        <% } %>
                                                        
                                                    </select>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">First Name</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="first_name" type="text" placeholder="Enter Admin First Name" data-parsley-length="[2,40]" value="<% out.print(admin.getFirstName()); %>" required>                                               
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Last Name</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="last_name" type="text" placeholder="Enter Admin Last Name" data-parsley-length="[2,40]" value="<% out.print(admin.getLastName()); %>" required>             
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">E-mail</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="email" type="text" placeholder="Enter Admin E-mail" data-parsley-length="[2,40]" value="<% out.print(admin.getEmail()); %>" required>             
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Mobile Number</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="mobile_number" type="text" placeholder="Enter Admin Mobile Number" data-parsley-length="[2,40]" value="<% out.print(admin.getMobile()); %>" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Password</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="password" type="password" placeholder="Enter Admin Password to Chnage" data-parsley-length="[2,40]">
                                                </div>
                                            </div>
                                            
                                            
                                            <div class="mb-3 row">
                                                <div class="col-md-10 offset-2">
                                                    <input type="hidden" name="id" value="<% out.print(admin.getId()); %>">
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
