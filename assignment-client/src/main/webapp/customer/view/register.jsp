<%-- 
    Document   : register
    Created on : Sep 2, 2022, 9:50:20 PM
    Author     : thilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <title>Customer Register</title>
        <link rel="stylesheet" href="/assignment-client/asset/js/sweetalert2/sweetalert2.min.css">

        <%@include file="../../admin/includes/new/head-css.jsp" %>

    </head>

    <body>
        <div class="account-pages my-5 pt-sm-5">
            <form class="form-horizontal" action="/assignment-client/customer/controller/register.jsp" method="POST" data-parsley-validate>
                <div class="container" id="mobileNumberView">
                    <div class="row justify-content-center">
                        <div class="col-md-8 col-lg-6 col-xl-5">
                            <div class="card overflow-hidden">
                                <div class="bg-primary bg-soft">
                                    <div class="row">
                                        <div class="col-7">
                                            <div class="text-primary p-4">
                                                <h5 class="text-primary"> Send OTP</h5>
                                                <p>Verifying mobile number</p>
                                            </div>
                                        </div>
                                        <div class="col-5 align-self-end">
                                            <img src="/assignment-client/asset/img/profile-img.png" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body pt-0">
                                    <div>
                                        <a href="/">
                                            <div class="avatar-md profile-user-wid mb-4">
                                                <span class="avatar-title rounded-circle bg-light">
                                                    <img src="/assignment-client/asset/img/branding/logo.png" alt="" class="rounded-circle" height="34">
                                                </span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="p-2">



                                        <div class="form-group row mb-3">
                                            <div class="col-3">
                                                <select name="country_code" id="country_code" class="form-select">
                                                    <option value="+94" selected>+94</option>
                                                    <option value="+44">+44</option>
                                                </select>
                                            </div>
                                            <div class="col">
                                                <input type="text" name="mobile_number" id="mobile_number" class="form-control"
                                                       onkeypress="return isNumberKey(event)" placeholder="Enter mobile number"
                                                       maxlength="10" minlength="9" autofocus>
                                            </div>
                                        </div>

                                        <div class="text-end">
                                            <div id="sign-in-button"></div>
                                            <button class="btn btn-primary w-md waves-effect waves-light" type="button" onclick="getVerificationCode()" id="sendOtpBtn">Send</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="container" id="varificationCodeView" style="display: none">
                    <!-- end row -->
                    <div class="row justify-content-center">
                        <div class="col-md-8 col-lg-6 col-xl-5">
                            <div class="card">

                                <div class="card-body">

                                    <div class="p-2">
                                        <div class="text-center">

                                            <div class="avatar-md mx-auto">
                                                <div class="avatar-title rounded-circle bg-light">
                                                    <i class="bx bxs-mobile h1 mb-0 text-primary"></i>
                                                </div>
                                            </div>
                                            <div class="p-2 mt-4">

                                                <h4>Verify your mobile</h4>
                                                <p class="mb-5">Please enter the 6 digit code sent to <span class="fw-semibold" id="show_mobile_number"></span></p>

                                                <div class="row">
                                                    <div class="col-2">
                                                        <div class="mb-3">
                                                            <label for="digit1-input" class="visually-hidden">Dight 1</label>
                                                            <input type="text" class="form-control form-control-lg text-center" onkeypress="return isNumberKey(event)" onkeyup="moveToNext(this, 2)" maxLength="1" name="veri_1" id="veri_1">
                                                        </div>
                                                    </div>

                                                    <div class="col-2">
                                                        <div class="mb-3">
                                                            <label for="digit2-input" class="visually-hidden">Dight 2</label>
                                                            <input type="text" class="form-control form-control-lg text-center" onkeypress="return isNumberKey(event)" onkeyup="moveToNext(this, 3)" maxLength="1" name="veri_2" id="veri_2" required>
                                                        </div>
                                                    </div>

                                                    <div class="col-2">
                                                        <div class="mb-3">
                                                            <label for="digit3-input" class="visually-hidden">Dight 3</label>
                                                            <input type="text" class="form-control form-control-lg text-center" onkeypress="return isNumberKey(event)" onkeyup="moveToNext(this, 4)" maxLength="1" name="veri_3" id="veri_3" required>
                                                        </div>
                                                    </div>

                                                    <div class="col-2">
                                                        <div class="mb-3">
                                                            <label for="digit4-input" class="visually-hidden">Dight 4</label>
                                                            <input type="text" class="form-control form-control-lg text-center" onkeypress="return isNumberKey(event)" onkeyup="moveToNext(this, 5)" maxLength="1" name="veri_4" id="veri_4" required>
                                                        </div>
                                                    </div>

                                                    <div class="col-2">
                                                        <div class="mb-3">
                                                            <label for="digit5-input" class="visually-hidden">Dight 4</label>
                                                            <input type="text" class="form-control form-control-lg text-center" onkeypress="return isNumberKey(event)" onkeyup="moveToNext(this, 6)" maxLength="1" name="veri_5" id="veri_5" required>
                                                        </div>
                                                    </div>

                                                    <div class="col-2">
                                                        <div class="mb-3">
                                                            <label for="digit6-input" class="visually-hidden">Dight 4</label>
                                                            <input type="text" class="form-control form-control-lg text-center" onkeypress="return isNumberKey(event)" onkeyup="moveToNext(this, 7)" maxLength="1" name="veri_6" id="veri_6" required>
                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="mt-4 d-grid">
                                                    <button type="button" class="btn btn-success w-md" onclick="verifyCode()">Verify</button>
                                                </div>

                                                <div class="form-group mt-2 d-grid">
                                                    <button type="button" class="btn btn-warning " onclick="resendtVerificationCode()"
                                                            style="display: none;" id="resendOTPBtn">Resend OTP</button>
                                                    <label class="text-center" for="timer" id="resendTimer">00:00</label>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="container" id="personalDetailsView" style="display: none">
                    <div class="row justify-content-center">
                        <div class="col-md-8 col-lg-6 col-xl-5">
                            <div class="card overflow-hidden">
                                <div class="bg-primary bg-soft">
                                    <div class="row">
                                        <div class="col-7">
                                            <div class="text-primary p-4">
                                                <h5 class="text-primary"> Personal Data</h5>
                                                <p>Enter required data to register</p>
                                            </div>
                                        </div>
                                        <div class="col-5 align-self-end">
                                            <img src="/assignment-client/asset/img/profile-img.png" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body pt-0">
                                    <div>
                                        <a href="/">
                                            <div class="avatar-md profile-user-wid mb-4">
                                                <span class="avatar-title rounded-circle bg-light">
                                                    <img src="/assignment-client/asset/img/branding/logo.png" alt="" class="rounded-circle" height="34">
                                                </span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="p-2">

                                        <div class="form-group mb-3 row">
                                            <div class="col-6">
                                                <label for="firstName" class="form-label">Frist Name</label>
                                                <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Enter first name" maxlength="40" minlength="5" required>
                                            </div>
                                            <div class="col-6">
                                                <label for="lastName" class="form-label">Last Name</label>
                                                <input type="text" name="last_name" id="last_name" class="form-control" placeholder="Enter last name" maxlength="40" minlength="5" required>
                                            </div>
                                        </div>

                                        <div class="mb-3">
                                            <label for="useremail" class="form-label">Enter Email</label>
                                            <input type="email" class="form-control" placeholder="Enter email" name="email" required>
                                        </div>
                                        
                                        <div class="mb-3">
                                            <label for="password" class="form-label">Enter Password</label>
                                            <input type="password" class="form-control" placeholder="Enter password" name="password" required>
                                        </div>

                                        <div class="text-end">
                                            <button class="btn btn-primary w-md waves-effect waves-light" type="submit">Register</button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </form>
        </div>
        <!-- end account-pages -->

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/firebase/8.6.7/firebase.js'></script>

        <script src="/assignment-client/asset/js/sweetalert2/sweetalert2.min.js"></script>
        <script src="/assignment-client/asset/js/custom-alerts.js"></script>
        <script src="/assignment-client/asset/js/main.js"></script>
        <script src="/assignment-client/asset/js/firebase/auth.js"></script>
        <script src="/assignment-client/asset/js/firebase/otp.js"></script>

        <script src="/assignment-client/asset/js/two-step-verification.init.js"></script>

        <%@include file="../../admin/includes/new/scripts.jsp" %>
        <!-- App js -->
        <script src="/assignment-client/admin/asset/js/app.js"></script>

    </body>

</html>