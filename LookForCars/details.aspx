<%@ Page Title="Look4Cars | Vehicle Details" Language="C#" ClientIDMode="Static" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="LookForCars.details" %>
<%@ Reference VirtualPath="~/master.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function myFunction() {
            var price = parseFloat(document.getElementById("txtPrice2").value);
            var init = parseFloat(1207.5);
            var period = document.getElementById("repayments").value;
            var deposit = parseFloat(document.getElementById("sliderdeposit").value);
            var balloon = parseFloat((document.getElementById("balloon").value / 100) * price);
            var interestRate = document.getElementById("interest").value / 100;
            var financed = (price + init - deposit - balloon) * 1;
            var a = financed * (interestRate / 12);
            var b = 1 + (interestRate / 12);
            var premium = a / (1 - (Math.pow(b, (-1 * period))));
            var balloonInterest = balloon * (1.125 / 100);
            var monthlyCharges = 69;
            var total = premium + balloonInterest + monthlyCharges;
            document.getElementById("demo").innerHTML = "R" + (Math.round(total * 100) / 100);
        }
    </script>

    <script>

</script>
    <script type="text/javascript" language="javascript">
    function Func() {
        alert("hello!")
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="txtPriceHidden" runat="server" />

    <!-- Page Inner-->
    <section>
        <div class="background-image-maker gradient gradient-lr"></div>
        <div class="holder-image">
            <img src="dist/images/bg2.jpg" alt="" class="img-fluid d-none" />
        </div>
        <div class="black-overlay overlay-full"></div>
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-12 justify-content-center text-center">
                    <h1 class="text-white c-font-weight-700">Vehicle Details</h1>
                </div>
            </div>
        </div>
    </section>
    <!-- End Page Inner-->

    <!-- Breadcrumb -->
    <section class="py-0 h-0">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-10 col-sm-5 col-lg-3 text-center">
                    <ol class="breadcrumb justify-content-center mb-0 c-bg-primary text-white py-3 position-relative">
                        <li class="breadcrumb-item"><a href="home.aspx">Home</a></li>
                        <li class="breadcrumb-item"><a href="preowned.aspx">Pre-Owned</a></li>
                        <li class="breadcrumb-item active" id="txtTitle2" runat="server">Vehicle Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- End Breadcrumb -->

    <!-- List Details -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8 mb-4 mb-lg-0">
                    <div class="car-listing">
                        <div class="flexslider c-bg-dark mb-4">
                            <ul class="slides" id="divImages" runat="server">
                            </ul>
                        </div>
                        <div class="c-bg-dark rounded-top">
                            <ul class="nav nav-tabs border-0 flex-column flex-sm-row text-white" id="myTab" role="tablist">
                                <li class="nav-item mb-0 rounded-left">
                                    <a class="nav-link redial-light border-0 py-3 active" data-toggle="tab" href="#finance" role="tab" aria-expanded="true">Buy Now</a>
                                </li>
                                <li class="nav-item mb-0 rounded-left">
                                    <a class="nav-link redial-light border-0 py-3" data-toggle="tab" href="#overview" role="tab" aria-expanded="false">Overview</a>
                                </li>
                                <li class="nav-item mb-0">
                                    <a class="nav-link redial-light rounded-0 border-0 py-3" data-toggle="tab" href="#features" role="tab" aria-expanded="false">Features</a>
                                </li>
                                <li class="nav-item mb-0">
                                    <a class="nav-link redial-light rounded-0 border-0 py-3" data-toggle="tab" href="#contact" role="tab" aria-expanded="false">Send Query</a>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-content" id="myTabContent2">
                            <div class="tab-pane fade active show" id="finance" role="tabpanel" aria-expanded="true">
                                <div class="card c-brd-light mb-4">
                                    <div class="c-bg-light">
                                        <div class="card-body p-3">
                                            <h6 class="mb-0"><i class="fa fa-shopping-cart pr-1"></i> Checkout</h6>
                                        </div>
                                    </div>
                                    <div class="card-body py-4 bg-white">
                                        
                                        <a href="#" class="btn btn-primary btn-md btn-block text-uppercase">Place Deposit</a>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade show" id="overview" role="tabpanel" aria-expanded="false">
                                <div class="border c-brd-light border-top-0">
                                    <div class="card-body pt-5">
                                        <p id="txtDescription" runat="server"></p>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="features" role="tabpanel" aria-expanded="false">
                                <div class="border c-brd-light border-top-0">
                                    <div class="card-body pt-4">
                                        <div class="row">
                                            <div class="col-12 col-sm-6">
                                                <ul class="list-unstyled c-line-height-3 mb-0" id="txtFeatures" runat="server">
                                                </ul>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="contact" role="tabpanel" aria-expanded="false">
                                <div class="card c-brd-light mb-4">
                                    <div class="c-bg-light">
                                        <div class="card-body p-3">
                                            <h6 class="mb-0">Contact us</h6>
                                        </div>
                                    </div>
                                    <div class="card-body py-4 bg-white">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Name" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Email" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Phone" />
                                        </div>
                                        <div class="form-group">
                                            <textarea class="form-control" placeholder="Message"></textarea>
                                        </div>
                                        <a href="#" class="btn btn-primary btn-lg text-uppercase">Send Message</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-4">
                    <div class="card c-brd-light mb-4">
                        <div class="card-body">
                            <h4 id="txtTitle" runat="server">Volvo xc90 inscription</h4>
                            <ul class="list-unstyled c-line-height-2_5 mb-0">
                                <li><small class="c-light">Price</small>
                                    <h4 class="d-inline-block c-primary mb-1" id="txtPrice" runat="server">$43,600 </h4>
                                </li>
                                <li id="txtInstallment" runat="server"><i class="fa fa-credit-card pr-1"></i></li>
                            </ul>
                        </div>
                        <table class="table mb-0 c-line-height-1_5 c-brd-light">
                            <tbody>
                                <tr>
                                    <td class="c-dark c-font-weight-600 b-r"><i class="flaticon-calendar pr-1"></i>Year:</td>
                                    <td id="txtYear" runat="server"></td>
                                </tr>
                                <tr>
                                    <td class="c-dark c-font-weight-600 b-r"><i class="flaticon-calendar pr-1"></i>Body Type:</td>
                                    <td id="txtBodyType" runat="server">2015</td>
                                </tr>
                                <tr>
                                    <td class="c-dark c-font-weight-600 b-r"><i class="flaticon-fuel pr-1"></i>Fuel Type:</td>
                                    <td id="txtFuelType" runat="server">Diesel</td>
                                </tr>
                                <tr>
                                    <td class="c-dark c-font-weight-600 b-r"><i class="flaticon-transport-2 pr-1"></i>Transmission:</td>
                                    <td id="txtTransmission" runat="server">Automatic</td>
                                </tr>
                                <tr>
                                    <td class="c-dark c-font-weight-600 b-r"><i class="flaticon-ammunition pr-1"></i>Colour:</td>
                                    <td id="txtColour" runat="server">White</td>
                                </tr>
                                <tr>
                                    <td class="c-dark c-font-weight-600 b-r"><i class="flaticon-clock pr-1"></i>Mileage:</td>
                                    <td id="txtMileage" runat="server">50,000 km</td>
                                </tr>
                                <tr>
                                    <td class="c-dark c-font-weight-600 b-r"><i class="flaticon-engine pr-1"></i>Drivetrain:</td>
                                    <td id="txtDrivetrain" runat="server">3500 cc</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="card c-brd-light mb-4 right-sidebar-widget">
                        <div class="c-bg-light">
                            <div class="card-body p-3">
                                <h6 class="mb-0">Finance Repyment Calculator</h6>
                            </div>
                        </div>
                        <div class="card-body py-4 bg-white">
                            <div style="display: none">
                                <label class="c-dark">Vehicle Price</label>
                                <div class="form-group">
                                    <input id="txtPrice2" runat="server" value="0" type="text" class="form-control" />
                                </div>
                            </div>
                            <label class="c-dark">Deposit(R)</label>
                            <div class="form-group">
                                <input id="sliderdeposit" runat="server" data-ui-slider="" type="text" value="" data-slider-min="0" data-slider-max="10000" data-slider-step="10000" data-slider-value="0" data-slider-orientation="horizontal" class="slider slider-horizontal" onchange="myFunction()">
                            </div>
                            <label class="c-dark mb-3">Interest Rate (%)</label>
                            <div class="form-group">
                                <input id="interest" data-ui-slider="" type="text" value="" data-slider-min="11" data-slider-max="18" data-slider-step="0.5" data-slider-value="13" data-slider-orientation="horizontal" class="slider slider-horizontal" onchange="myFunction()">
                            </div>
                            <label class="c-dark mb-3">Balloon Payment (%)</label>
                            <div class="form-group">
                                <input id="balloon" data-ui-slider="" type="text" value="" data-slider-min="0" data-slider-max="30" data-slider-step="2.5" data-slider-value="0" data-slider-orientation="horizontal" class="slider slider-horizontal" onchange="myFunction()">
                            </div>
                            <label class="c-dark mb-3">Loan Period (month)</label>
                            <div class="form-group">
                                <input id="repayments" data-ui-slider="" type="text" value="" data-slider-min="12" data-slider-max="72" data-slider-step="12" data-slider-value="72" data-slider-orientation="horizontal" class="slider slider-horizontal" onchange="myFunction()">
                            </div>

                            <dl class="row mb-0">
                                <dt class="col-sm-8 font-weight-normal">Monthly Installment:</dt>
                                <dd class="col-sm-4 c-dark text-sm-right" id="demo" runat="server">$4,02,238</dd>
                            </dl>
                            <a id="btnFinance" runat="server" onserverclick="btnFinance_ServerClick" class="btn btn-primary btn-md btn-block text-uppercase">Finance Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End List Details -->


</asp:Content>
