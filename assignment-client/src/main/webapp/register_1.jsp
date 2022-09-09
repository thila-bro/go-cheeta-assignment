<%@include file="./includes/html/header.html" %>

    <title>Go Cheeta - Register</title>
</head>
<body>
  
    <div style="height: 100vh; width: 100vw; display: grid;">
        <div class="align-self-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4 bg-dark shadow rounded p-4">
                        <h1 class="text-center">Go Cheeta</h1>
                        <form action="./controllers/customerRegister.jsp" method="post" id="demo-form" data-parsley-validate>
                            <!-- mobile number view -->
                            <div id="mobileNumberView">
                                <div class="form-group row">
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
                                        <div class="invalid-feedback">
                                            Operator required
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mt-2 d-grid">
                                    <div id="sign-in-button"></div>
                                    <button type="button" class="btn btn-warning" onclick="getVerificationCode()"
                                        id="sendOtpBtn">Send
                                        OTP</button>
                                </div>
                                <div class="from-group mt-2" style="display: flex; justify-content: space-around;">
                                    <a href="#">Login</a>
                                </div>
                            </div>
                            <!-- varification view -->
                            <div id="varificationCodeView" style="display: none;">
                                <div class="form-group mt-4 row">
                                    <div class="col-2">
                                        <input type="text" class="form-control" name="veri_1" id="veri_1"
                                            onkeypress="return isNumberKey(event)" maxlength="1" onkeyup="nextFocus(2)"
                                            autofocus>
                                    </div>
                                    <div class="col-2">
                                        <input type="text" class="form-control" name="veri_2" id="veri_2"
                                            onkeypress="return isNumberKey(event)" maxlength="1" onkeyup="nextFocus(3)">
                                    </div>
                                    <div class="col-2">
                                        <input type="text" class="form-control" name="veri_3" id="veri_3"
                                            onkeypress="return isNumberKey(event)" maxlength="1" onkeyup="nextFocus(4)">
                                    </div>
                                    <div class="col-2">
                                        <input type="text" class="form-control" name="veri_4" id="veri_4"
                                            onkeypress="return isNumberKey(event)" maxlength="1" onkeyup="nextFocus(5)">
                                    </div>
                                    <div class="col-2">
                                        <input type="text" class="form-control" name="veri_5" id="veri_5"
                                            onkeypress="return isNumberKey(event)" maxlength="1" onkeyup="nextFocus(6)">
                                    </div>
                                    <div class="col-2">
                                        <input type="text" class="form-control" name="veri_6" id="veri_6"
                                            onkeypress="return isNumberKey(event)" maxlength="1" onkeyup="nextFocus(0)">
                                    </div>
                                </div>
                                <div class="form-group mt-4 d-grid">
                                    <button type="button" class="btn btn-success" onclick="verifyCode()">Verify</button>
                                </div>
                                <div class="form-group mt-2 d-grid">
                                    <button type="button" class="btn btn-warning" onclick="resendtVerificationCode()"
                                        style="display: none;" id="resendOTPBtn">Resend OTP</button>
                                    <label class="text-center" for="timer" id="resendTimer">00:00</label>
                                </div>
                            </div>
                            <!-- personal details view -->
                            <div id="personalDetailsView" style="display: none;">
                                <div class="form-group mt-4 row">
                                    <div class="col-6">
                                        <input type="text" name="first_name" id="first_name" class="form-control"
                                            placeholder="Enter first name" maxlength="40" minlength="5">
                                    </div>
                                    <div class="col-6">
                                        <input type="text" name="last_name" id="last_name" class="form-control"
                                            placeholder="Enter last name" maxlength="40" minlength="5">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col mt-2">
                                        <input type="email" name="email" id="email" class="form-control"
                                            placeholder="Enter e-mail" maxlength="40">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col mt-2">
                                        <input type="password" name="password" id="password" class="form-control"
                                            placeholder="Enter password" maxlength="40">
                                    </div>
                                </div>
                                <div class="form-group mt-2 d-grid">
                                    <div id="sign-in-button"></div>
                                    <button type="submit" class="btn btn-success">Register</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/firebase/8.6.7/firebase.js'></script>
    <script src="./asset/js/firebase/auth.js"></script>
    <script src="./asset/js/firebase/otp.js"></script>
    <%@include file="./includes/html/import-js.html" %>          
    <%@include file="./includes/messages/saveSessionResponse.jsp" %>
</body>

</html>