<%-- 
    Document   : list.jsp
    Created on : 1 Sept 2022, 14:21:50
    Author     : thilanmaduranga
--%>

<%@page import="assignment.Customer"%>
<%@page import="java.util.List"%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@include file="../../includes/wsdlCustomerConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        
        <title>Go Cheeta - Customer List</title>
        
        <%@include file="../../includes/new/head-css.jsp" %>

        <!-- DataTables -->
        <link href="/assignment-client/admin/asset/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <!-- Responsive datatable examples -->
        <link href="/assignment-client/admin/asset/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />

    </head>

    <body data-sidebar="dark">

        <!-- Begin page -->
        <div id="layout-wrapper">
            
            
            <%@include file="../../includes/new/menu.jsp" %>

            
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                        <h4 class="card-title">All Customer</h4>

                                        <table id="datatable" class="table table-bordered dt-responsive  nowrap w-100">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>First Name</th>
                                                    <th>Last Name</th>
                                                    <th>E-mail</th>
                                                    <th>Mobile</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>


                                            <tbody>
                                                
                                                <% List<Customer> customers = admin_proxy.getCustomers(); %>
                                                <% for(Customer customer: customers){ %>
                                                <tr>
                                                    <td><% out.print(customers.indexOf(customer)+1); %></td>
                                                    <td><% out.print(customer.getFirstName()); %></td>
                                                    <td><% out.print(customer.getLastName()); %></td>
                                                    <td><% out.print(customer.getEmail()); %></td>
                                                    <td><% out.print(customer.getMobile()); %></td>
                                                    <td>
                                                        <a href="./editCustomer.jsp?id=<% out.print(customer.getId()); %>" class="btn btn-sm btn-warning"><i class="mdi mdi-file-document-edit-outline align-middle me-1"></i>Show</a>
                                                        <a href="/assignment-client/admin/controller/customer/deleteCustomer.jsp?id=<% out.print(customer.getId()); %>" class="btn btn-sm btn-danger"><i class="mdi mdi-delete-forever-outline align-middle me-1"></i>Delete</a>
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
                

                
                
                <%@include file="../../includes/new/footer.jsp" %>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->        

        <%@include file="../../includes/new/scripts.jsp" %>       
        
        <script src="/assignment-client/admin/asset/libs/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
        
        <script src="/assignment-client/admin/asset/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
        
        <script src="/assignment-client/admin/asset/js/datatables.init.js"></script>
        
        <script src="/assignment-client/admin/asset/js/app.js"></script>
        

    </body>
</html>
