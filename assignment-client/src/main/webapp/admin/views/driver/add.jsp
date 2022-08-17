<%-- 
    Document   : add
    Created on : Aug 5, 2022, 1:37:16 PM
    Author     : thilan
--%>

<%@page import="assignment.Branch"%>
<%@page import="assignment.Driver"%>
<%@page import="assignment.VehicleType"%>
<%@page import="java.util.List"%>
<%@page import="assignment.City"%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<% List<Branch> branches = admin_proxy.getBranches(); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        
        <title>Go Cheeta - Add Driver</title>
        
        <%@include file="../../../admin/includes/new/head-css.jsp" %>

        <!-- DataTables -->
        <link href="/assignment-client/admin/asset/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <!-- Responsive datatable examples -->
        <link href="/assignment-client/admin/asset/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        
        <link href="/assignment-client/admin/asset/libs/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="/assignment-client/admin/asset/libs/@chenfengyuan/datepicker/datepicker.min.css">

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

                                        <h4 class="card-title">Add New Driver</h4>

                                        <form action="/assignment-client/admin/controller/driver/add.jsp" method="post" class="custom-validation">
                                            
                                            <div class="mb-3 row">
                                                <label for="branch-id" class="col-md-2 col-form-label">Select Branch</label>
                                                <div class="col-md-10">
                                                    <select class="form-control select2" name="branch_id" required>
                                                        <option>Select</option>
                                                        <% for(Branch branch : branches){ %>
                                                        <option value="<% out.print(branch.getBranchId()); %>"><% out.print(branch.getName()); %></option>
                                                        <% } %>
                                                        
                                                    </select>
                                                </div>
                                            </div>                                                                                 
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Driver First Name</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="first_name" type="text" placeholder="Enter Driver First Name" data-parsley-length="[2,40]" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Driver Last Name</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="last_name" type="text" placeholder="Enter Driver Last Name" data-parsley-length="[2,40]" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Driver E-mail</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="email" type="text" placeholder="Enter Driver E-mail" data-parsley-length="[2,40]" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Driver Mobile Number</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="mobile" type="text" placeholder="Enter Driver Mobile Number" data-parsley-length="[2,40]" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Driver Driving License ID</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="driving_license" type="text" placeholder="Enter Driving License ID" data-parsley-length="[8,8]" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Driver License Expire Date</label>
                                                <div class="col-md-10" id="datepicker1">
                                                    <input type="text" name="license_expire_date" class="form-control" placeholder="MM dd, yyyy" data-date-format="MM dd, yyyy" data-date-container='#datepicker1' data-provide="datepicker">
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Driver National ID</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="nic" type="text" placeholder="Enter Driving National ID" data-parsley-length="[2,40]" required>
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

                                        <h4 class="card-title">All Drivers</h4>

                                        <table id="datatable" class="table table-bordered dt-responsive  nowrap w-100">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Branch</th>
                                                    <th>First Name</th>
                                                    <th>Last Name</th>
                                                    <th>E-mail</th>
                                                    <th>Mobile No.</th>
                                                    <th>NIC</th>
                                                    <th>License No.</th>
                                                    <th>License Expe.</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>


                                            <tbody>
                                                <% List<Driver> drivers = admin_proxy.getDrivers(); %>
                                                <% for(Driver driver: drivers){ %>
                                                <% Branch branch = admin_proxy.getBranchById(driver.getBranchId()); %>
                                                <% City city = admin_proxy.getCityById(branch.getCityId()); %>
                                                <tr>
                                                    <td><% out.print(drivers.indexOf(driver)+1); %></td>
                                                    <td><% out.print(city.getName()); %></td>
                                                    <td><% out.print(driver.getFirstName()); %></td>
                                                    <td><% out.print(driver.getLastName()); %></td>
                                                    <td><% out.print(driver.getEmail()); %></td>
                                                    <td><% out.print(driver.getMobile()); %></td>
                                                    <td><% out.print(driver.getNationalId()); %></td>
                                                    <td><% out.print(driver.getLicenseId()); %></td>
                                                    <td><% out.print(driver.getLicenseExpireDate()); %></td>
                                                    <td>
                                                        <a href="./edit.jsp?id=<% out.print(driver.getId()); %>" class="btn btn-sm btn-warning"><i class="mdi mdi-file-document-edit-outline align-middle me-1"></i>Edit</a>
                                                        <a href="/assignment-client/admin/controller/driver/deleteDriver.jsp?id=<% out.print(driver.getId()); %>" class="btn btn-sm btn-danger"><i class="mdi mdi-delete-forever-outline align-middle me-1"></i>Delete</a>
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
                

                
                
                <%@include file="../../../admin/includes/new/footer.jsp" %>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->        

        <%@include file="../../../admin/includes/new/scripts.jsp" %>
        
        <script src="/assignment-client/admin/asset/libs/parsleyjs/parsley.min.js"></script>

        <script src="/assignment-client/admin/asset/js/form-validation.init.js"></script>
        
        
        
        
        <script src="/assignment-client/admin/asset/libs/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
        
        <script src="/assignment-client/admin/asset/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
        
        <script src="/assignment-client/admin/asset/js/datatables.init.js"></script>
        
        <script src="/assignment-client/admin/asset/libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/@chenfengyuan/datepicker/datepicker.min.js"></script>
                
        
        <script src="/assignment-client/admin/asset/js/app.js"></script>
        

    </body>
</html>
