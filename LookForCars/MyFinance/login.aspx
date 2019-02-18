<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LookForCars.MyFinance.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

    <title>Look4Cars | Login</title>
    <!-- Favicon-->
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <!-- Custom Css -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.min.css">
</head>
<body class="theme-blush">
    <div>
        <div>
            <div class="authentication">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-sm-12">
                            <form class="card auth_form" id="form1" runat="server">
                                <div class="header">
                                    <img class="logo" src="assets/images/logo.png" alt="Look4Cars">
                                    <h5>Sign in</h5>
                                </div>
                                <div class="body">
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" placeholder="Username" id="txtUsername" runat="server"/>
                                        <div class="input-group-append">
                                            <span class="input-group-text"><i class="zmdi zmdi-account-circle"></i></span>
                                        </div>
                                    </div>
                                    <div class="input-group mb-3">
                                        <input type="password" class="form-control" placeholder="Password" id="txtPassword" runat="server"/>
                                        <div class="input-group-append">
                                            <span class="input-group-text"><a href="forgot-password.html" class="forgot" title="Forgot Password"><i class="zmdi zmdi-lock"></i></a></span>
                                        </div>
                                    </div>
                                    <div class="checkbox">
                                        <input id="remember_me" type="checkbox"/>
                                        <label for="remember_me">Remember Me</label>
                                    </div>
                                    <button id="btnLogin" runat="server" onserverclick="btnLogin_ServerClick" class="btn btn-primary btn-block waves-effect waves-light">SIGN IN</button>
                                    <div class="signin_with mt-0">
                                        <label class="mb-0 alert-danger" id="fail" runat="server" visible="false">Incorrect Username or Password</label>
                                    </div>
                                    <div class="signin_with mt-3">
                                        <p class="mb-0">Don't have an account? <a href="../register.aspx">Register Now</a></p>
                                    </div>
                                </div>
                            </form>
                            <div class="copyright text-center">
                                &copy;
                    <script>document.write(new Date().getFullYear())</script>
                                ,
                    <span>Designed by <a href="https://thememakker.com/" target="_blank">Revolution</a></span>
                            </div>
                        </div>
                        <div class="col-lg-8 col-sm-12">
                            <div class="card">
                                <img src="assets/images/signin.svg" alt="Sign In" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Jquery Core Js -->
            <script src="assets/bundles/libscripts.bundle.js"></script>
            <script src="assets/bundles/vendorscripts.bundle.js"></script>
            <!-- Lib Scripts Plugin Js -->
        </div>
    </div>
</body>
</html>
