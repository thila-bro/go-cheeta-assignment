<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="./asset/img/favicon.ico">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="./asset/css/main.css">
    <link rel="stylesheet" href="./asset/js/sweetalert2/sweetalert2.min.css">

    <title>Go Cheeta - Register</title>
</head>

<body>
    <div style="height: 100vh; width: 100vw; display: grid;">
        <div class="align-self-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4 bg-dark shadow rounded p-4">
                        <h1 class="text-center">Go Cheeta</h1>
                        <form action="" method="post" id="demo-form" data-parsley-validate>
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
                                            maxlength="10" minlength="9" required autofocus>
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
                                            placeholder="Enter last name" maxlength="40">
                                    </div>
                                </div>
                                <div class="form-group mt-2 d-grid">
                                    <div id="sign-in-button"></div>
                                    <button type="button" class="btn btn-success"
                                        onclick="getVerificationCode()">Register</button>
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

    <script src="./asset/js/sweetalert2/sweetalert2.min.js"></script>
    <script src="./asset/js/custom-alerts.js"></script>
    <script src="./asset/js/main.js"></script>

    <script>
        var auth;
    </script>
    <script>
        window.addEventListener('load', (event) => {
            clearTimeout(otpResendingTimer)

            const firebaseConfig = {
                apiKey: "AIzaSyBp7ICD5hXQP_M10ajPwNvDX20TCTrgdgU",
                authDomain: "assignment-ab0aa.firebaseapp.com",
                projectId: "assignment-ab0aa",
                storageBucket: "assignment-ab0aa.appspot.com",
                messagingSenderId: "938998638985",
                appId: "1:938998638985:web:a4e758d322cfe9abd61958",
                measurementId: "G-BG4305JNEQ"
            };

            // Initialize Firebase
            firebase.initializeApp(firebaseConfig);

            // Initialize Firebase
            firebase.auth().languageCode = 'en';

            window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier('sign-in-button', {
                'size': 'invisible',
                'callback': (response) => {
                    // reCAPTCHA solved, allow signInWithPhoneNumber.
                    onSignInSubmit();
                }
            });
        });

    </script>


    <script>
        var otpResendingTimer
        var mboile_number
        var phoneNumber
        var appVerifier


        function getVerificationCode() {
            mboile_number = $("#mobile_number").val();
            phoneNumber = $('#country_code').val() + removeFirstZero(mboile_number);
            appVerifier = window.recaptchaVerifier;
            timer()
            // verificationCodeSendSuccess()

            progressing("Sending OTP...", "Please wait...")
            firebase.auth().signInWithPhoneNumber(phoneNumber, appVerifier)
                .then((confirmationResult) => {
                    // SMS sent. Prompt user to type the code from the message, then sign the
                    // user in with confirmationResult.confirm(code).
                    window.confirmationResult = confirmationResult;
                    swal.close();
                    showSuccess("OTP Successfully sent", "Check the mobile")
                    verificationCodeSendSuccess();

                    // ...
                }).catch((error) => {
                    // Error; SMS not sent
                    // ...
                    swal.close();
                    showError("OTP Unsuccessful")
                    console.log(error)
                });
        }

        function verificationCodeSendSuccess() {
            $("#mobileNumberView").hide();
            $("#varificationCodeView").show();
            nextFocus(1)
        }

        function verifyCode() {
            var code = $("#veri_1").val() + $("#veri_2").val() + $("#veri_3").val() + $("#veri_4").val() + $("#veri_5").val() + $("#veri_6").val();
            clearTimeout(otpResendingTimer)

            progressing("Verifying OTP...", "Please wait...")
            confirmationResult.confirm(code).then(function (result) {
                swal.close();
                showSuccess("OTP Successfully verified", "")
                $("#varificationCodeView").hide();
                $("#personalDetailsView").show();
            }.bind($(this))).catch(function (error) {
                swal.close();
                showError("OTP unverified")
                console.log("error")
            }.bind($(this)));
        }

        function resendtVerificationCode() {
            firebase.auth().signInWithPhoneNumber(phoneNumber, appVerifier)
                .then((confirmationResult) => {
                    // SMS sent. Prompt user to type the code from the message, then sign the
                    // user in with confirmationResult.confirm(code).
                    window.confirmationResult = confirmationResult;
                    // ...
                }).catch((error) => {
                    // Error; SMS not sent
                    // ...
                });
        }

        function nextFocus(next) {
            if (next != 0) {
                $("#veri_" + next).focus();
            }
        }

        function timer() {
            var t = new Date();
            var countDownDate = t.setSeconds(t.getSeconds() + 90);

            otpResendingTimer = setInterval(function () {
                // Get today's date and time
                var now = new Date().getTime();

                // Find the distance between now and the count down date
                var distance = countDownDate - now;

                // Time calculations for days, hours, minutes and seconds
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);

                // Display the result in the element with id="demo"
                document.getElementById("resendTimer").innerHTML = minutes + "m " + seconds + "s ";

                // If the count down is finished, write some text
                if (distance < 0) {
                    $("#resendTimer").hide()
                    $('#resendOTPBtn').show()
                }
            }, 1000);
        }


    </script>

</body>

</html>