<%-- 
    Document   : scripts
    Created on : Aug 2, 2022, 4:33:49 PM
    Author     : thilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- JAVASCRIPT -->
<script src="/assignment-client/admin/asset/js/jquery.min.js"></script>
<script src="/assignment-client/admin/asset/js/bootstrap.bundle.min.js"></script>
<script src="/assignment-client/admin/asset/js/simplebar.min.js"></script>
<script src="/assignment-client/admin/asset/js/waves.min.js"></script>
<script src="/assignment-client/admin/asset/js/metisMenu.min.js"></script>

<!-- toastr plugin -->
<script src="/assignment-client/admin/asset/js/toastr.min.js"></script>

<script>
        function formSuccess(msg) {
            toastr.options = {
            "closeButton": true,        
            "progressBar": true,
            "positionClass": "toast-top-right",        
            "showDuration": 300,
                    "hideDuration": 1000,
                    "timeOut": 5000,
                    "extendedTimeOut": 1000,
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                }
                toastr["success"](msg);
            }

            function formError(msg) {
                toastr.options = {
                    "closeButton": true,
                    "progressBar": true,
                    "positionClass": "toast-top-right",
                    "showDuration": 300,
                    "hideDuration": 1000,
                    "timeOut": 5000,
                    "extendedTimeOut": 1000,
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                }
                toastr["error"](msg);
            }
            
            function formWarning(msg) {
                toastr.options = {
                    "closeButton": true,
                    "progressBar": true,
                    "positionClass": "toast-top-right",
                    "showDuration": 300,
                    "hideDuration": 1000,
                    "timeOut": 5000,
                    "extendedTimeOut": 1000,
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                }
                toastr["warning"](msg);
            }
    
</script>
<script>
    <%

        HttpSession adminSession = request.getSession();

        if (adminSession.getAttribute("success") != null) {

    %>

    var message = `<% out.print(adminSession.getAttribute("success")); %>`;
    formSuccess(message);

    <%
            adminSession.removeAttribute("success");
        }

        if (adminSession.getAttribute("error") != null) {

    %>

    var message = `<% out.print(adminSession.getAttribute("error")); %>`;
    formError(message);

    <%
            adminSession.removeAttribute("error");
        }


    %>
</script>