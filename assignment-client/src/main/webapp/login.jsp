<%@include file="./includes/html/header.html" %>    

    <title>Go Cheeta - Login</title>
</head>
<body>
    <div style="height: 100vh; width: 100vw; display: grid;">
        <div class="align-self-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4 bg-dark shadow rounded p-4">
                        <h1 class="text-center">Go Cheeta</h1>
                        <form action="controllers/userLogin.jsp" method="post" id="loginForm">
                            <div class="form-group">
                                <label for="mobile" class="form-lable">Enter Mobile Number</label>
                                <input type="text" name="user_mobile" class="form-control" placeholder="Enter Your Mobile Number" maxlength="40" minlength="5">
                            </div>
                            <div class="form-group mt-2">
                                <label for="password">Enter Password</label>
                                <input type="password" name="user_password" class="form-control" placeholder="Enter Your Password" maxlength="40" minlength="3">
                            </div>
                            <div class="form-group mt-2 d-grid">
                                <button type="submit" class="btn btn-success">Login</button>
                            </div>
                            <div class="from-group mt-2" style="display: flex; justify-content: space-around;">
                                <a href="/assignment-client/driver/view/login.jsp">Fogot Password</a>
                                <a href="./register_1.jsp">Create Account</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    	
    <%@include file="./includes/html/import-js.html" %>
    <%@include file="./includes/messages/saveSessionResponse.jsp" %>
    
    
        <script>
            $(function() {
                var loginForm = $("#loginForm");
                
                if(loginForm.length) {
                    loginForm.validate({
                        rules: {
                            user_mobile: {
                                required: true
                            }, user_password: {
                                required: true
                            }
                        },
                        messages: {
                            user_mobile: {
                                required: "Mobile number required!"
                            }, user_password: {
                                required: "Password required"
                            }
                        }
                    })
                }
            })
        </script>
</body>
</html>