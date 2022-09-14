<%-- 
    Document   : index
    Created on : 26 Aug 2022, 12:58:35
    Author     : thilanmaduranga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>Go Cheeta Booking System</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->	
    <link rel="icon" type="image/png" href="/assignment-client/asset/img/branding/favicon.png"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/assignment-client/admin/asset/css/bootstrap-dark.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/assignment-client/asset/index_page/css/util.css">
    <link rel="stylesheet" type="text/css" href="/assignment-client/asset/index_page/css/main.css">
    <!--===============================================================================================-->
    <script src="/assignment-client/asset/index_page/js/font-awsome.js" crossorigin="anonymous"></script>
</head>
<body>

    <div class="limiter">
        <div class="container-login100" style="background-image: url('/assignment-client/asset/index_page/images/bg-01.jpg');">						
            
            <div class="row">
                <span class="main-title">Go Cheeta Taxi Service</span>
            </div>
            
            <div class="row">
                
                <div class="col-md-4">
                    <a href="/assignment-client/admin/controller/cookieCheck.jsp" target="_blank">
                        <div class="wrap-login100 p-b-50">
                            <span class="login100-form-title p-b-41">
                                Admin Pannel
                            </span>
                            <div class="login100-form p-5">
                                <i class="fa-solid fa-user-lock"></i>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="/assignment-client/customer/controller/customerCookieCheck.jsp" target="_blank">
                        <div class="wrap-login100 p-b-50">
                            <span class="login100-form-title p-b-41">
                                Customer Pannel
                            </span>
                            <div class="login100-form p-5">
                                <i class="fa-solid fa-users-line"></i>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="/assignment-client/driver/controller/driverCookieCheck.jsp" target="_blank">
                        <div class="wrap-login100 p-b-50">
                            <span class="login100-form-title p-b-41">
                                Driver Pannel
                            </span>
                            <div class="login100-form p-5">
                                <i class="fa-solid fa-car"></i>
                            </div>
                        </div>
                    </a>
                </div>
            </div>

        </div>
    </div>

</body>
</html>
