<script>
    <%

        HttpSession ses = request.getSession();

        if (ses.getAttribute("success") != null) {

    %>

    var message = `<% out.print(ses.getAttribute("success")); %>`;
    showSuccess("Success", message);

    <%
            ses.removeAttribute("success");
        }

        if (ses.getAttribute("error") != null) {

    %>

    var message = `<% out.print(ses.getAttribute("error")); %>`;
    showError(message);

    <%
            ses.removeAttribute("error");
        }


    %>
</script>