<%-- 
    Document   : updateDistance
    Created on : 16 Aug 2022, 19:51:02
    Author     : thilanmaduranga
--%>

<%@page import="java.util.List"%>
<%@page import="assignment.City"%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% City sourceCity = admin_proxy.getCityById(Integer.parseInt(request.getParameter("source_city"))); %>
<% City destinationCity = admin_proxy.getCityById(Integer.parseInt(request.getParameter("destination_city"))); %>
<!DOCTYPE html>
<html lang="en">

    <head>
        
        <title>Go Cheeta - Modify Distance</title>
        <%@include file="../../includes/new/head-css.jsp" %>        

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
                                        <h4 class="card-title">Modify Distance from <% out.print(destinationCity.getName()); %> to <% out.print(sourceCity.getName()); %></h4>

                                        <form action="/assignment-client/admin/controller/distance/addDistance.jsp" method="post" class="custom-validation">
                                                                                                                                   
                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Enter City Distance</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" name="distance" type="text" placeholder="Enter City Distance" autofocus data-parsley-length="[1,4]" required>
                                                </div>
                                            </div>                                        
                                            
                                            <div class="mb-3 row">
                                                <div class="col-md-10 offset-2">
                                                    <input type="hidden" name="source_city" value="<% out.print(request.getParameter("source_city")); %>">
                                                    <input type="hidden" name="destination_city" value="<% out.print(request.getParameter("destination_city")); %>">
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
                

                
                
                <%@include file="../../includes/new/footer.jsp" %>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->        

        <%@include file="../../includes/new/scripts.jsp" %>
        
        <script src="/assignment-client/admin/asset/libs/parsleyjs/parsley.min.js"></script>

        <script src="/assignment-client/admin/asset/js/form-validation.init.js"></script>
        
        <script src="/assignment-client/admin/asset/js/app.js"></script>
        

    </body>
</html>
