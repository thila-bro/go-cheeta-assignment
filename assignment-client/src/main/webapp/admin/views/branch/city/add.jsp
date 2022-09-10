<%-- 
    Document   : index2
    Created on : Aug 2, 2022, 4:11:02 PM
    Author     : thilan
--%>

<%@page import="java.util.List"%>
<%@page import="assignment.City"%>
<%@include file="../../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        
        <title>Go Cheeta - Add City</title>
        
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

                                        <h4 class="card-title">Add New City</h4>

                                        <form action="/assignment-client/admin/controller/branch/addCity.jsp" method="post" class="custom-validation">
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">City Name</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="city" type="text" placeholder="Enter City Name" autofocus data-parsley-length="[2,40]" required>
                                                    <div class="valid-feedback">
                                                        Looks good!
                                                    </div>
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
                                                    <th>City</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>


                                            <tbody>
                                                <% List<City> cities = admin_proxy.getCities(); %>
                                                <% for(City city: cities){ %>
                                                <tr>
                                                    <td><% out.print(cities.indexOf(city)+1); %></td>
                                                    <td><% out.print(city.getName()); %></td>
                                                    <td>
                                                        <a href="./edit.jsp?id=<% out.print(city.getCityId()); %>" class="btn btn-sm btn-warning"><i class="mdi mdi-file-document-edit-outline align-middle me-1"></i>Edit</a>
                                                        <a href="/assignment-client/admin/controller/branch/deleteCity.jsp?id=<% out.print(city.getCityId()); %>" class="btn btn-sm btn-danger"><i class="mdi mdi-delete-forever-outline align-middle me-1"></i>Delete</a>
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
