<%@ Page Title="Policy Details" Language="C#" MasterPageFile="~/MyFinance/dashboard.Master" AutoEventWireup="true" CodeBehind="policy.aspx.cs" Inherits="LookForCars.MyFinance.policy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Main Content -->
    <section class="content">
        <div class="body_scroll">
            <div class="block-header">
                <div class="row">
                    <div class="col-lg-7 col-md-6 col-sm-12">
                        <h2>Application Details</h2>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index-2.html"><i class="zmdi zmdi-home"></i> Dashboard</a></li>
                            <li class="breadcrumb-item">Applications</li>
                            <li class="breadcrumb-item">Application Details</li>
                        </ul>
                        <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                    </div>
                    <div class="col-lg-5 col-md-6 col-sm-12">
                        <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
                        <button class="btn btn-success btn-icon float-right" type="button"><i class="zmdi zmdi-plus"></i></button>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row clearfix">
                    <div class="col-lg-4 col-md-12">
                        <div class="card mcard_4">
                            <div class="body">
                                <ul class="header-dropdown list-unstyled">
                                    <li class="dropdown">
                                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="zmdi zmdi-menu"></i></a>
                                        <ul class="dropdown-menu slideUp">
                                            <li><a href="javascript:void(0);">Edit</a></li>
                                            <li><a href="javascript:void(0);">Delete</a></li>
                                            <li><a href="javascript:void(0);">Report</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="img">
                                    <img src="assets/images/lg/testcar.jpg" class="rounded-circle" alt="vehicle-image" id="vehicleImage" runat="server">
                                </div>
                                <div class="user">
                                    <h5 class="mt-3 mb-1" id="txtMake" runat="server">VOLKSWAGEN POLO</h5>
                                    <small class="text-muted" id="txtModel" runat="server">VIVO GP 1.4 CONCEPTLINE 5DR</small>
                                    <ul class="list-unstyled mt-3 d-flex">
                                        <li class="mr-3"><strong>Estimated Repayments: </strong>R2900.00pm</li>

                                    </ul>
                                    <div id="txtStatus" runat="server" class="mt-2">
                                    </div>
                                    <div id="txtFinance" runat="server" class="mt-2">
                                    </div>

                                </div>
                                <button class="btn btn-success btn-round" style="width: 100%;" id="btnDeliver" runat="server" visible="false"><i class="zmdi zmdi-favorite-outline6"></i>Deliver My Car </button>

                            </div>
                        </div>

                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="card">
                            <div class="header">
                                <h2><strong>Policy</strong> Details</h2>
                            </div>
                            <div class="body">
                                <small class="text-muted">MyFinance ID: </small>
                                <p id="txtID" runat="server">L4C78614</p>
                                <hr>
                                <small class="text-muted">Policy Number: </small>
                                <p id="txtPolicyNumber" runat="server">L4C78614</p>
                                <hr>
                                <small class="text-muted">Vehicle Use: </small>
                                <p id="txtVehicleUse" runat="server">Lucid Side Menu Open OnClick</p>
                                <hr>
                                <small class="text-muted">Declining Comprehensive Insurance Quote: </small>
                                <p id="txtDeclineIns" runat="server">Lucid Side Menu Open OnClick</p>
                                <hr>
                                <small class="text-muted">Date Created: </small>
                                <p id="txtDateCreated" runat="server">02 Jan 2019</p>
                                <hr>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="card">
                            <div class="header">
                                <h2><strong>Finance</strong> Details</h2>
                            </div>
                            <div class="body">
                                <small class="text-muted">Purchase Amount: </small>
                                <p id="txtPurchAmount" runat="server">L4C78614</p>
                                <hr>
                                <small class="text-muted">Deposit Amount: </small>
                                <p id="txtDeposit" runat="server">L4C78614</p>
                                <hr>
                                <small class="text-muted">Preferred Interest Rate: </small>
                                <p id="txtInterestRate" runat="server">L4C78614</p>
                                <hr>
                                <small class="text-muted">Balloon Payment: </small>
                                <p id="txtBalloon" runat="server">Lucid Side Menu Open OnClick</p>
                                <hr>
                                <small class="text-muted">Payment Terms: </small>
                                <p id="txtTerms" runat="server">Lucid Side Menu Open OnClick</p>
                                <hr>
                                <small class="text-muted">First Payment Extended: </small>
                                <p id="txtFirstPaymentExtended" runat="server">Lucid Side Menu Open OnClick</p>
                                <hr>
                                <small class="text-muted">Take a break month: </small>
                                <p id="txtTakeABreakMonth" runat="server">Lucid Side Menu Open OnClick</p>
                                <hr>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="card">
                            <div class="header">
                                <h2><strong>Vehicle</strong> Info</h2>
                            </div>
                            <div class="body">
                                <div class="row">
                                    <div class="col-lg-6 col-md-12">
                                        <small class="text-muted">Vehicle Make: </small>
                                        <p id="txtMake2" runat="server">L4C78614</p>
                                        <hr>
                                        <small class="text-muted">Vehicle Model: </small>
                                        <p id="txtModel2" runat="server">Lucid Side Menu Open OnClick</p>
                                        <hr>
                                        <small class="text-muted">Year Model: </small>
                                        <p id="txtYear" runat="server">Lucid Side Menu Open OnClick</p>
                                        <hr>
                                        <small class="text-muted">Manufacturer Warranty: </small>
                                        <p id="txtManufacturerWarranty" runat="server"></p>
                                        <hr>
                                        <small class="text-muted">Existing Aftermarket Warranty: </small>
                                        <p id="txtAfterWarranty" runat="server"></p>
                                        <hr>
                                        <small class="text-muted">Manufacturer Plan Type: </small>
                                        <p id="txtPlanType" runat="server"></p>
                                        <hr>
                                        <small class="text-muted">Existing Aftermarket Plan Type: </small>
                                        <p id="txtAftermarketType" runat="server"></p>
                                        <hr>
                                    </div>
                                    <div class="col-lg-6 col-md-12">
                                        <small class="text-muted">Vehicle Registration Number: </small>
                                        <p id="txtRegNum" runat="server">02 Jan 2019</p>
                                        <hr>
                                        <small class="text-muted">Vehicle Identification Number (VIN): </small>
                                        <p id="txtVIN" runat="server">02 Jan 2019</p>
                                        <hr>
                                        <small class="text-muted">Vehicle Engine Number: </small>
                                        <p id="txtEngine" runat="server">02 Jan 2019</p>
                                        <hr>
                                        <small class="text-muted">Odometer Reading/Mileage: </small>
                                        <p id="txtMileage" runat="server">02 Jan 2019</p>
                                        <hr>
                                        <small class="text-muted">Full Service History: </small>
                                        <p id="txtFullServiceHistory" runat="server">02 Jan 2019</p>
                                        <hr>
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <script src="assets/js/pages/ticket-page.js"></script>
</asp:Content>
