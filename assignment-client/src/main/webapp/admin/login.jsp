<%-- 
    Document   : login
    Created on : Sep 4, 2022, 7:05:31 PM
    Author     : thilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <title>Customer Login</title>

    <%@include file="../admin/includes/new/head-css.jsp" %>
    
    <!-- owl.carousel css -->
    <link rel="stylesheet" href="/assignment-client/admin/asset/libs/owl.carousel/assets/owl.carousel.min.css">

    <link rel="stylesheet" href="/assignment-client/admin/asset/libs/libs/owl.carousel/assets/owl.theme.default.min.css">

</head>

<body>
    
    <div>
        <div class="container-fluid p-0">
            <div class="row g-0">

                <div class="col-xl-9">
                    <div class="auth-full-bg pt-lg-5 p-4">
                        <div class="w-100">
                            <div class="bg-overlay"></div>
                            <div class="d-flex h-100 flex-column">

                                <div class="p-4 mt-auto">
                                    <div class="row justify-content-center">
                                        <div class="col-lg-7">
                                            <div class="text-center">

                                                <h4 class="mb-3"><i class="bx bxs-quote-alt-left text-primary h1 align-middle me-3"></i><span class="text-primary">5k</span>+ Satisfied clients</h4>

                                                <div dir="ltr">
                                                    <div class="owl-carousel owl-theme auth-review-carousel" id="auth-review-carousel">
                                                        <div class="item">
                                                            <div class="py-3">
                                                                <p class="font-size-16 mb-4">" Fantastic theme with a ton of options. If you just want the HTML to integrate with your project, then this is the package. You can find the files in the 'dist' folder...no need to install git and all the other stuff the documentation talks about. "</p>

                                                                <div>
                                                                    <h4 class="font-size-16 text-primary">Abs1981</h4>
                                                                    <p class="font-size-14 mb-0">- Skote User</p>
                                                                </div>
                                                            </div>

                                                        </div>

                                                        <div class="item">
                                                            <div class="py-3">
                                                                <p class="font-size-16 mb-4">" If Every Vendor on Envato are as supportive as Themesbrand, Development with be a nice experience. You guys are Wonderful. Keep us the good work. "</p>

                                                                <div>
                                                                    <h4 class="font-size-16 text-primary">nezerious</h4>
                                                                    <p class="font-size-14 mb-0">- Skote User</p>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end col -->

                <div class="col-xl-3">
                    <div class="auth-full-page-content p-md-5 p-4">
                        <div class="w-100">

                            <div class="d-flex flex-column h-100">
                                <div class="my-auto">

                                    <div>
                                        <h5 class="text-primary">Welcome Admin !</h5>
                                        <p class="text-muted">Sign in to continue to GoCheeta.</p>
                                    </div>

                                    <div class="mt-4">
                                        <form action="/assignment-client/admin/controller/login.jsp" method="post">

                                            <div class="mb-3">
                                                <label for="email" class="form-label">Admin E-mail</label>
                                                <input type="email" class="form-control" placeholder="Enter Admin E-mail" name="email" required>
                                            </div>

                                            <div class="mb-3">
<!--                                                <div class="float-end">
                                                    <a href="auth-recoverpw-2" class="text-muted">Forgot password?</a>
                                                </div>-->
                                                <label class="form-label">Password</label>
                                                <div class="input-group auth-pass-inputgroup">
                                                    <input type="password" class="form-control" placeholder="Enter Admin Password" aria-label="Password" aria-describedby="password-addon" name="password" required>
                                                    <button class="btn btn-light " type="button" id="password-addon"><i class="mdi mdi-eye-outline"></i></button>
                                                </div>
                                            </div>

                                            <div class="mt-3 d-grid">
                                                <button class="btn btn-primary waves-effect waves-light" type="submit">Log In</button>
                                            </div>

                                        </form>
                                    </div>
                                </div>

                                <div class="mt-4 mt-md-5 text-center">
                                    <p>© <script>
                                    document.write(new Date().getFullYear());
                                    </script> TopUp Advanced Programming <i class="mdi mdi-heart text-danger"></i> <br /> by B T MADURANGA (NG/BSCSD/07/12)</p>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container-fluid -->
    </div>
    

    <%@include file="../admin/includes/new/scripts.jsp" %>
    
    <!-- owl.carousel js -->
    <script src="/assignment-client/admin/asset/libs/owl.carousel/owl.carousel.min.js"></script>
    
    <!-- auth-2-carousel init -->
    <script src="/assignment-client/admin/asset/js/auth-2-carousel.init.js"></script>
    
    <!-- App js -->
    <script src="/assignment-client/admin/asset/js/app.js"></script>
    
    

    
    
</body>

</html>