var auth;

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