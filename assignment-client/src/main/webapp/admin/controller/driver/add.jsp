<%-- 
    Document   : add
    Created on : Aug 6, 2022, 9:47:53 AM
    Author     : thilan
--%>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@include file="../../includes/wsdlAdminConenction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    String firstName = request.getParameter("first_name");
    String lastName = request.getParameter("last_name") ;
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile") ;
    String drivingLicense = request.getParameter("driving_license");
    String licenseExpireDate = request.getParameter("license_expire_date");
    String nic  = request.getParameter("nic");
    
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MMMM d, yyyy", Locale.ENGLISH);
    LocalDate licenseExpireDateFromatted = LocalDate.parse(licenseExpireDate, formatter);
    
    if(!firstName.isEmpty() && !lastName.isEmpty() && !email.isEmpty() && !mobile.isEmpty() && !drivingLicense.isEmpty() && !licenseExpireDate.isEmpty() && !nic.isEmpty()) {
        HttpSession ses = request.getSession();
        if (admin_proxy.addDriver(firstName, lastName, email, mobile, drivingLicense, licenseExpireDateFromatted.toString(), nic)) {
            ses.setAttribute("success", "Driver added Successfully");
        } else {
            ses.setAttribute("error", "Driver add unsuccessful.");
        }

        response.sendRedirect("/assignment-client/admin/views/driver/add.jsp");
    }
%>
