<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="error.aspx.cs" Inherits="LookForCars.MyFinance.error" %>

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
                                     <h5>Error 504</h5>
                        <span>The internet is broken :-(</span>
                    </div>
                    <div class="body">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Search...">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="zmdi zmdi-search"></i></span>
                            </div>
                        </div>
                        <a href="login.aspx" class="btn btn-primary btn-block waves-effect waves-light">TRY AGAIN</a>                        
                        <div class="signin_with mt-3">
                            <a href="javascript:void(0);" class="link">Need Help?</a>
                        </div>
                    </div>
                </form>
                <div class="copyright text-center">
                    &copy;
                    <script>document.write(new Date().getFullYear())</script>,
                    <span>Designed by <a href="https://thememakker.com/" target="_blank">Revolution</a></span>
                </div>
            </div>
            <div class="col-lg-8 col-sm-12">
                <div class="card">
                    <img src="assets/images/signin.svg" alt="500"/>
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
