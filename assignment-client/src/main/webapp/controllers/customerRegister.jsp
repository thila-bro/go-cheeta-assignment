<%-- 
    Document   : customerRegister
    Created on : Jul 31, 2022, 6:35:51 PM
    Author     : thilan
--%>


<%@include file="../includes/wsdlConnection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    
    String firstName    = request.getParameter("first_name");
    String lastName     = request.getParameter("last_name");
    String email        = request.getParameter("email");
    String password     = request.getParameter("password");
    String mobile       = request.getParameter("mobile_number");
    
    int type = 3;
   

    HttpSession ses = request.getSession();
    
    if (proxy.addUser(firstName, lastName, email, password, mobile, type)) {
        ses.setAttribute("success", "User registered Successfully");
    } else {
        ses.setAttribute("error", "User registered unsuccessful. Please try again");
    }
    
    response.sendRedirect("/assignment-client/login.jsp");


%>