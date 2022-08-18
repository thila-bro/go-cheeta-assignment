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

        HttpSession ses = request.getSession();

        if (ses.getAttribute("success") != null) {

    %>

    var message = `<% out.print(ses.getAttribute("success")); %>`;
    formSuccess(message);

    <%
            ses.removeAttribute("success");
        }

        if (ses.getAttribute("error") != null) {

    %>

    var message = `<% out.print(ses.getAttribute("error")); %>`;
    formError(message);

    <%
            ses.removeAttribute("error");
        }


    %>
</script>