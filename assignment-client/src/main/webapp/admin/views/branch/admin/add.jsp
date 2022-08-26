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

<!DOCTYPE html>
<html lang="en">

    <head>
        
        <title>Go Cheeta - Add Branch Admin</title>
        
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

                                        <h4 class="card-title">Add Branch Admin</h4>

                                        <form action="/assignment-client/admin/controller/branch/addAdmin.jsp" method="post" class="custom-validation">
                                            
                                            <div class="mb-3 row">
                                                <label for="branch-id" class="col-md-2 col-form-label">Select Branch</label>
                                                <div class="col-md-10">
                                                    <select class="form-control select2" name="branch_id" required>
                                                        <option>Select</option>
                                                        <% for(Branch branch : branches){ %>
                                                        <option value="<% out.print(branch.getBranchId()); %>"><% out.print(admin_proxy.getCityById(branch.getCityId()).getName()); %></option>
                                                        <% } %>
                                                        
                                                    </select>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">First Name</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="first_name" type="text" placeholder="Enter Admin First Name" data-parsley-length="[2,40]" required>
                                                    <div class="valid-feedback">
                                                        Looks good!
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Last Name</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="last_name" type="text" placeholder="Enter Admin Last Name" data-parsley-length="[2,40]" required>
                                                    <div class="valid-feedback">
                                                        Looks good!
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">E-mail</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="email" type="text" placeholder="Enter Admin E-mail" data-parsley-length="[2,40]" required>             
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Mobile Number</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="mobile_number" type="text" placeholder="Enter Admin Mobile Number" data-parsley-length="[2,40]" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Password</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="password" type="password" placeholder="Enter Admin Password" data-parsley-length="[2,40]" required>
                                                </div>
                                            </div>
                                            
                                            
                                            <div class="mb-3 row">
                                                <div class="col-md-10 offset-2">
                                                    <button class="btn btn-primary" type="submit">Save</button>
                                                </div>
                                            </div>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                        <h4 class="card-title">All City</h4>

                                        <table id="datatable" class="table table-bordered dt-responsive  nowrap w-100">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Branch City</th>
                                                    <th>First Name</th>
                                                    <th>Last Name</th>
                                                    <th>E-mail
                                                    <th>Mobile</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>


                                            <tbody>
                                                <% List<Admin> admins = admin_proxy.getAdmins(); %>
                                                <% for(Admin admin: admins){ %>
                                                <% Branch branch = admin_proxy.getBranchById(admin.getBranchId()); %>
                                                <% City city = admin_proxy.getCityById(branch.getCityId()); %>
                                                <tr>
                                                    <td><% out.print(admins.indexOf(admin)+1); %></td>
                                                    <td><%= city.getName() %></td>
                                                    <td><% out.print(admin.getFirstName()); %></td>
                                                    <td><% out.print(admin.getLastName()); %></td>
                                                    <td><% out.print(admin.getEmail()); %></td>
                                                    <td><% out.print(admin.getMobile()); %></td>
                                                    <td>
                                                        <a href="./edit.jsp?id=<% out.print(admin.getId()); %>" class="btn btn-sm btn-warning"><i class="mdi mdi-file-document-edit-outline align-middle me-1"></i>Edit</a>
                                                        <a href="/assignment-client/admin/controller/branch/deleteAdmin.jsp?id=<% out.print(admin.getId()); %>" class="btn btn-sm btn-danger"><i class="mdi mdi-delete-forever-outline align-middle me-1"></i>Delete</a>
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
                

                
                
                <%@include file="../../../includes/new/footer.jsp" %>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->        

        <%@include file="../../../includes/new/scripts.jsp" %>
        
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
