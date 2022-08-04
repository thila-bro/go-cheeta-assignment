<%-- 
    Document   : index2
    Created on : Aug 2, 2022, 4:11:02 PM
    Author     : thilan
--%>

<%@page import="assignment.Branch"%>
<%@page import="java.util.List"%>
<%@page import="assignment.City"%>
<%@include file="../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html lang="en">

    <head>
        
        <title>Go Cheeta - Add Branch</title>
        
        <%@include file="../../admin/includes/new/head-css.jsp" %>

        <!-- DataTables -->
        <link href="/assignment-client/admin/asset/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <!-- Responsive datatable examples -->
        <link href="/assignment-client/admin/asset/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        
        <link href="/assignment-client/admin/asset/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />

    </head>

    <body data-sidebar="dark">

        <!-- Begin page -->
        <div id="layout-wrapper">
            
            
            <%@include file="../../admin/includes/new/menu.jsp" %>

            
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                        <h4 class="card-title">Add New Branch</h4>

                                        <form action="/assignment-client/admin/controller/branch/addBranch.jsp" method="post" class="custom-validation">
                                            <div class="mb-3 row">
                                                <label for="e-mail-input" class="col-md-2 col-form-label">Branch E-mail</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="email" type="email" placeholder="Enter E-mail" data-parsley-length="[2,40]" required>
                                                </div>
                                            </div>

                                            <div class="mb-3 row">
                                                <label for="mobile-input" class="col-md-2 col-form-label">Branch Mobile Number</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="mobile" type="text" placeholder="Enter Mobile Number" onkeypress="return isNumberKey(event)" data-parsley-length="[9,10]" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="fixed-number-input" class="col-md-2 col-form-label">Branch Fixed Number</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="fixed" type="text" placeholder="Enter Fixed Number" onkeypress="return isNumberKey(event)" data-parsley-length="[9,10]" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="address-line-1-input" class="col-md-2 col-form-label">Branch Address Line 1</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="address1" type="text" placeholder="Enter Address Line 1" data-parsley-length="[2,100]" required>
                                                </div>
                                            </div>

                                            
                                            <div class="mb-3 row">
                                                <label for="address-line-2-input" class="col-md-2 col-form-label">Branch Address Line 2</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="address2" type="text" placeholder="Enter Address Line 2" data-parsley-length="[2,100]" >
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="city-input" class="col-md-2 col-form-label">Branch City</label>
                                                <div class="col-md-10">
                                                    <select class="form-control select2" name="city_id" required>
                                                            <option>Select</option>
                                                        <% List<City> cities = admin_proxy.getCities(); %>
                                                        <% for(City city: cities){ %>
                                                        <option value="<% out.print(city.getCityId()); %>"><% out.print(city.getName()); %></option>
                                                        <% } %>
                                                    </select>
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

                                        <h4 class="card-title">All Branches</h4>

                                        <table id="datatable" class="table table-bordered dt-responsive  nowrap w-100">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>E-mail</th>
                                                    <th>Mobile</th>
                                                    <th>Fixed</th>
                                                    <th>Address 1</th>
                                                    <th>Address 2</th>
                                                    <th>City</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>


                                            <tbody>
                                                <% List<Branch> branches = admin_proxy.getBranches(); %>
                                                <% for(Branch branch: branches){ %>
                                                <tr>
                                                    <td><% out.print(branches.indexOf(branch)+1); %></td>
                                                    <td><% out.print(branch.getEmail()); %></td>
                                                    <td><% out.print(branch.getMobile()); %></td>
                                                    <td><% out.print(branch.getFixed()); %></td>
                                                    <td><% out.print(branch.getAddress1()); %></td>
                                                    <td><% out.print(branch.getAddress2()); %></td>
                                                    <td><% out.print(branch.getName()); %></td>
                                                    <td>
                                                        <a href="./edit.jsp?id=<% out.print(branch.getBranchId()); %>" class="btn btn-sm btn-warning"><i class="mdi mdi-file-document-edit-outline align-middle me-1"></i>Edit</a>
                                                        <a href="/assignment-client/admin/controller/branch/deleteBranch.jsp?id=<% out.print(branch.getBranchId()); %>" class="btn btn-sm btn-danger"><i class="mdi mdi-delete-forever-outline align-middle me-1"></i>Delete</a>
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
                

                
                
                <%@include file="../../admin/includes/new/footer.jsp" %>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->        

        <%@include file="../../admin/includes/new/scripts.jsp" %>
        
        <script src="/assignment-client/admin/asset/libs/parsleyjs/parsley.min.js"></script>
        <script src="/assignment-client/admin/asset/js/form-validation.init.js"></script>
        <script src="/assignment-client/admin/asset/libs/select2/js/select2.min.js"></script>
        
        <script src="/assignment-client/admin/assets/js/pages/form-advanced.init.js"></script>
        
        

        


        <script src="/assignment-client/admin/asset/libs/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>        
        <script src="/assignment-client/admin/asset/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>        
        <script src="/assignment-client/admin/asset/js/datatables.init.js"></script>

        <script src="/assignment-client/admin/asset/js/app.js"></script>

        
    </body>
</html>
