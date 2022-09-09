var otpResendingTimer;
var mboile_number;
var phoneNumber;
var appVerifier;


function getVerificationCode() {
    mboile_number = $("#mobile_number").val();
    phoneNumber = $('#country_code').val() + removeFirstZero(mboile_number);
    appVerifier = window.recaptchaVerifier;
    timer();
     verificationCodeSendSuccess()

    progressing("Sending OTP...", "Please wait...");
    firebase.auth().signInWithPhoneNumber(phoneNumber, appVerifier)
            .then((confirmationResult) => {
                // SMS sent. Prompt user to type the code from the message, then sign the
                // user in with confirmationResult.confirm(code).
                window.confirmationResult = confirmationResult;
                swal.close();
                showSuccess("OTP Successfully sent", "Check the mobile");
                verificationCodeSendSuccess();

                // ...
            }).catch((error) => {
        // Error; SMS not sent
        // ...
        swal.close();
        showError("OTP Unsuccessful");
        console.log(error);
    });
}

function verificationCodeSendSuccess() {
    $("#mobileNumberView").hide();
    $("#show_mobile_number").html(phoneNumber);
    $("#varificationCodeView").show();
    nextFocus(1);
}

function verifyCode() {
    var code = $("#veri_1").val() + $("#veri_2").val() + $("#veri_3").val() + $("#veri_4").val() + $("#veri_5").val() + $("#veri_6").val();
    clearTimeout(otpResendingTimer);

    progressing("Verifying OTP...", "Please wait...");
    confirmationResult.confirm(code).then(function (result) {
        swal.close();
        showSuccess("OTP Successfully verified", "");
        $("#varificationCodeView").hide();
        $("#personalDetailsView").show();
    }.bind($(this))).catch(function (error) {
        swal.close();
        showError("OTP unverified");
        console.log("error");
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
    if (next !== 0) {
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
            $("#resendTimer").hide();
            $('#resendOTPBtn').show();
        }
    }, 1000);
}