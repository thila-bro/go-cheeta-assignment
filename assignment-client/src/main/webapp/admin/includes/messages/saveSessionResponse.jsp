<script>
    <%

        HttpSession ses = request.getSession();

        if (ses.getAttribute("success") != null) {

    %>

    var message = `<% out.print(ses.getAttribute("success")); %>`;
    showFormSuccess(message);

    <%
            ses.removeAttribute("success");
        }

        if (ses.getAttribute("error") != null) {

    %>

    var message = `<% out.print(ses.getAttribute("error")); %>`;
    showFormError(message);

    <%
            ses.removeAttribute("error");
        }


    %>
</script>