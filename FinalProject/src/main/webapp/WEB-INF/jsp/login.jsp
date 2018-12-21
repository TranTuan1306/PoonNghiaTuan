<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="/templates/img/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/templates/css/fontawesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/templates/css/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/templates/css/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/templates/css/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/templates/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/templates/css/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/templates/css/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/templates/css/util.css">
    <link rel="stylesheet" type="text/css" href="/templates/css/main.css">
    <!--===============================================================================================-->
</head>
<body>

<div class="limiter">
    <div class="container-login100" style="background-image: url('/templates/img/bg-01.jpg');">
        <div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Account Login
				</span>
            <form class="login100-form validate-form p-b-33 p-t-5" action="/login" method="post">

                <div class="wrap-input100 validate-input" data-validate = "Enter username">
                    <input class="input100" type="text" name="username" placeholder="User name">
                    <span class="focus-input100" data-placeholder="&#xe82a;"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Enter password">
                    <input class="input100" type="password" name="pass" placeholder="Password">
                    <span class="focus-input100" data-placeholder="&#xe80f;"></span>
                </div>

                <div class="container-login100-form-btn m-t-32">
                    <button class="login100-form-btn">
                        Login
                    </button>
                </div>

            </form>
        </div>
    </div>
</div>


<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
<script src="/templates/js/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="/templates/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="/templates/js/select2.min.js"></script>
<!--===============================================================================================-->
<script src="/templates/js/moment.min.js"></script>
<script src="/templates/js/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="/templates/js/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="/templates/js/main.js"></script>

</body>
</html>