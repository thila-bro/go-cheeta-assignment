<%-- 
    Document   : update
    Created on : Aug 7, 2022, 9:58:13 PM
    Author     : thilan
--%>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Locale"%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int branchId            = Integer.parseInt(request.getParameter("branch_id"));
    String firstName        = request.getParameter("first_name");
    String lastName         = request.getParameter("last_name") ;
    String email            = request.getParameter("email");
    String mobile           = request.getParameter("mobile") ;
    String drivingLicense   = request.getParameter("driving_license");
    String licenseExpireDate= request.getParameter("license_expire_date");
    String nic              = request.getParameter("nic");
    int driverId            = Integer.parseInt(request.getParameter("id"));
    
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MMMM d, yyyy", Locale.ENGLISH);
    LocalDate licenseExpireDateFromatted = LocalDate.parse(licenseExpireDate, formatter);
    

    
    if(!firstName.isEmpty() && !lastName.isEmpty() && !email.isEmpty() && !mobile.isEmpty() && !drivingLicense.isEmpty() && !licenseExpireDate.isEmpty() && !nic.isEmpty()) {
        HttpSession ses = request.getSession();
        if (admin_proxy.updateDriver(branchId, driverId, firstName, lastName, email, mobile, drivingLicense, licenseExpireDateFromatted.toString(), nic)) {
            ses.setAttribute("success", "Driver updated Successfully");
        } else {
            ses.setAttribute("error", "Driver updated unsuccessful.");
        }

        response.sendRedirect("/assignment-client/admin/views/driver/add.jsp");
    }
%>