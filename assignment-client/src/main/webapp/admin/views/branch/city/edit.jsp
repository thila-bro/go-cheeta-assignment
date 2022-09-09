<%-- 
    Document   : index2
    Created on : Aug 2, 2022, 4:11:02 PM
    Author     : thilan
--%>

<%@page import="java.util.List"%>
<%@page import="assignment.City"%>
<%@include file="../../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="assignment.City"%>
<%
    int city_id = Integer.parseInt(request.getParameter("id"));
    City city = admin_proxy.getCityById(city_id);
%>

<!DOCTYPE html>

<html lang="en">

    <head>
        
        <title>Go Cheeta - Edit City</title>        
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

                                        <h4 class="card-title">Edit City</h4>

                                        <form action="/assignment-client/admin/controller/branch/updateCity.jsp" method="post" class="custom-validation">
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">City Name</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="city" type="text" placeholder="Enter City Name" data-parsley-length="[2,40]" value="<% out.print(city.getName()); %>" required>
                                                    <div class="valid-feedback">
                                                        Looks good!
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3 row">
                                                <div class="col-md-10 offset-2">
                                                    <input name="id" type="hidden" value="<% out.print(city.getCityId()); %>">
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
