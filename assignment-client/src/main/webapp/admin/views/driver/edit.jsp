<%-- 
    Document   : edit
    Created on : Aug 7, 2022, 8:50:29 PM
    Author     : thilan
--%>



<%@page import="java.util.List"%>
<%@page import="assignment.Branch"%>
<%@page import="java.text.DateFormatSymbols"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="assignment.Driver"%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% List<Branch> branches = admin_proxy.getBranches(); %>
<% int driverId = Integer.parseInt(request.getParameter("id"));
    Driver driver = admin_proxy.getDriverById(driverId);
    
    String[] explodedDate = driver.getLicenseExpireDate().split("-");
    
    String year     = explodedDate[0];
    int myMonth    = Integer.parseInt(explodedDate[1]) - 1;
    String date     = explodedDate[2];
    String month = "";

    DateFormatSymbols dfs = new DateFormatSymbols();
    String[] months = dfs.getMonths();
    if (myMonth >= 0 && myMonth <= 11) {
        month = months[myMonth];
    }
%>

<!DOCTYPE html>
<html lang="en">

    <head>
        
        <title>Go Cheeta - Edit  Driver</title>
        
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

                                        <h4 class="card-title">Update Driver</h4>

                                        <form action="/assignment-client/admin/controller/driver/update.jsp" method="post" class="custom-validation">
                                            
                                            <div class="mb-3 row">
                                                <label for="branch-id" class="col-md-2 col-form-label">Select Branch</label>
                                                <div class="col-md-10">
                                                    <select class="form-control select2" name="branch_id" required>
                                                        <option>Select</option>
                                                        <% for(Branch branch : branches){ %>
                                                        <option value="<% out.print(branch.getBranchId()); %>" <%
                                                            if (branch.getBranchId() == driver.getBranchId()) {
                                                                out.print("selected");
                                                            } %>><% out.print(branch.getName()); %></option>
                                                        <% } %>
                                                        
                                                    </select>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Driver First Name</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="first_name" type="text" placeholder="Enter Driver First Name" data-parsley-length="[2,40]" value="<% out.print(driver.getFirstName()); %>" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Driver Last Name</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="last_name" type="text" placeholder="Enter Driver Last Name" data-parsley-length="[2,40]" value="<% out.print(driver.getLastName()); %>" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Driver E-mail</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="email" type="text" placeholder="Enter Driver E-mail" data-parsley-length="[2,40]" value="<% out.print(driver.getEmail()); %>" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Driver Mobile Number</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="mobile" type="text" placeholder="Enter Driver Mobile Number" data-parsley-length="[2,40]" value="<% out.print(driver.getMobile()); %>" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Driver Driving License ID</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="driving_license" type="text" placeholder="Enter Driving License ID" data-parsley-length="[8,8]" value="<% out.print(driver.getLicenseId()); %>" required>
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Driver License Expire Date</label>
                                                <div class="col-md-10" id="datepicker1">
                                                    <input type="text" name="license_expire_date" class="form-control" placeholder="MM dd, yyyy" data-date-format="MM dd, yyyy" data-date-container='#datepicker1' value="<% out.print(month+" "+date+", "+year); %>" data-provide="datepicker">
                                                </div>
                                            </div>
                                            
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Driver National ID</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="nic" type="text" placeholder="Enter Driving National ID" data-parsley-length="[2,40]" value="<% out.print(driver.getNationalId()); %>" required>
                                                </div>
                                            </div>
                                            
                                            
                                            <div class="mb-3 row">
                                                <div class="col-md-10 offset-2">
                                                    <input name="id" type="hidden" value="<% out.print(driver.getId()); %>">
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
        <script src="/assignment-client/admin/asset/libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
        <script src="/assignment-client/admin/asset/libs/@chenfengyuan/datepicker/datepicker.min.js"></script>
        <script src="/assignment-client/admin/asset/js/app.js"></script>
    </body>
</html>