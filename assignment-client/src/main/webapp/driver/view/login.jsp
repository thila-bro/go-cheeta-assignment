<%-- 
    Document   : login.jsp
    Created on : Sep 4, 2022, 8:22:52 PM
    Author     : thilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <title>Driver Login</title>

    <%@include file="../../admin/includes/new/head-css.jsp" %>

</head>

<body>
    <div class="account-pages my-5 pt-sm-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6 col-xl-5">
                    <div class="card overflow-hidden">
                        <div class="bg-primary bg-soft">
                            <div class="row">
                                <div class="col-7">
                                    <div class="text-primary p-4">
                                        <h5 class="text-primary">Welcome Driver !</h5>
                                        <p>Sign in to GoCheeta</p>
                                    </div>
                                </div>
                                <div class="col-5 align-self-end">
                                    <img src="/assignment-client/asset/img/profile-img.png" alt="" class="img-fluid">
                                </div>
                            </div>
                        </div>
                        <div class="card-body pt-0">
                            <div class="auth-logo">
                                <a href="/" class="auth-logo-light">
                                    <div class="avatar-md profile-user-wid mb-4">
                                        <span class="avatar-title rounded-circle bg-light">
                                            <img src="/assignment-client/asset/img/branding/logo.png" alt="" class="rounded-circle" height="34">
                                        </span>
                                    </div>
                                </a>

                                <a href="/" class="auth-logo-dark">
                                    <div class="avatar-md profile-user-wid mb-4">
                                        <span class="avatar-title rounded-circle bg-light">
                                            <img src="/assignment-client/asset/img/branding/logo.png" alt="" class="" height="45">
                                        </span>
                                    </div>
                                </a>
                            </div>
                            <div class="p-2">
                                <form class="form-horizontal" action="/assignment-client/driver/controller/login.jsp" method="post">
                                    <div class="mb-3">
                                        <label for="email" class="form-label">E-mail</label>
                                        <input type="email" class="form-control" name="email" placeholder="Enter Driver E-mail" required autofocus>
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Password</label>
                                        <div class="input-group auth-pass-inputgroup">
                                            <input type="password" class="form-control" placeholder="Enter password" aria-label="Password" aria-describedby="password-addon" required name="password">
                                            <button class="btn btn-light " type="button" name="password" id="password-addon"><i class="mdi mdi-eye-outline"></i></button>
                                        </div>
                                    </div>

                                    <div class="mt-3 d-grid">
                                        <button class="btn btn-primary waves-effect waves-light" type="submit">Log In</button>
                                    </div>

<!--                                    <div class="mt-4 text-center">
                                        <a href="<?= route_to('password.request') ?>" class="text-muted"><i class="mdi mdi-lock me-1"></i> Forgot your password?</a>
                                    </div>-->
<!--                                    <div class="mt-4 text-center">
                                        <a href="./register.jsp" class="fw-medium text-primary"> Sign In here</a>
                                    </div>-->
                                </form>
                            </div>

                        </div>
                    </div>
                    <div class="mt-5 text-center">

                        <div>
                            <!-- <p>Don't have an account ? <a href="auth-register" class="fw-medium text-primary"> Signup now </a> </p> -->
                            <p>© <script>
                                    document.write(new Date().getFullYear());
                                </script> TopUp Advanced Programming <i class="mdi mdi-heart text-danger"></i> <br /> by B T MADURANGA (NG/BSCSD/07/12)</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- end account-pages -->

    <%@include file="../../admin/includes/new/scripts.jsp" %>
    <!-- App js -->
    <script src="/assignment-client/admin/asset/js/app.js"></script>
    
</body>

</html>