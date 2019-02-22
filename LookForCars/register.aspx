<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="LookForCars.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Wilio Survey, Quotation, Review and Register form Wizard by Ansonika.">
    <meta name="author" content="Ansonika">
    <title>Look4Cars | MyFinance Registration</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png" />
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png" />
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png" />
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png" />

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:400,500,600" rel="stylesheet" />

    <!-- BASE CSS -->
    <link href="wizard/css/bootstrap.min.css" rel="stylesheet" />
    <link href="wizard/css/menu.css" rel="stylesheet" />
    <link href="wizard/css/style.css" rel="stylesheet" />
    <link href="wizard/css/vendors.css" rel="stylesheet" />

    <!-- YOUR CUSTOM CSS -->
    <link href="wizard/css/custom.css" rel="stylesheet" />

    <!-- MODERNIZR MENU -->
    <script src="wizard/js/modernizr.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="preloader">
            <div data-loader="circle-side"></div>
        </div>
        <!-- /Preload -->

        <div id="loader_form">
            <div data-loader="circle-side-2"></div>
        </div>
        <!-- /loader_form -->

        <nav>
            <ul class="cd-primary-nav">
                <li><a href="home.aspx" class="animated_link">Back Home</a></li>

            </ul>
        </nav>
        <!-- /menu -->

        <div class="container-fluid full-height">
            <div class="row row-height">
                <a href="home.aspx" id="logo">
                    <img src="dist/images/logo.png" alt="" width="200" /></a>
                <div class="main_title_2 margin_120">
                    <h2><em></em>Welcome to MyFinance at
                        <img src="dist/images/logo.png" alt="" width="200" />
                    </h2>
                    <p>
                        We require a few details in order to create your finance application in our system. Kindly fill out the form as correctly as possible.
                    </p>
                </div>
               
                <div class="col-lg-12 content-right" id="start">
                    <div id="wizard_container">
                        <div id="top-wizard">
                            <div id="progressbar"></div>
                        </div>
                        <!-- /top-wizard -->
                        <div id="wrapped" method="POST">
                            <input id="website" name="website" type="text" value=""/>
                            <!-- Leave for security protection, read docs for details -->
                            <div id="middle-wizard">
                                <div class="step">
                                    <h3 class="main_question"><strong>1/6</strong>Personal Details</h3>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>First Name</label>
                                                <input type="text" id="FirstNames" runat="server"  name="first_name" class="form-control required" placeholder="Enter Your First Name" onchange="getVals(this, 'first_name');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Last Name</label>
                                                <input type="text" id="LastNames" runat="server" name="last_name" class="form-control required" placeholder="Enter Your Last Name" onchange="getVals(this, 'last_name');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Email Address</label>
                                                <input type="email" id="EmailAddresss" runat="server" name="email" class="form-control required" placeholder="Enter Your Email" onchange="getVals(this, 'email');" />
                                            </div>
                                            <div class="form-group">
                                                <label>ID Type</label>
                                                <div class="styled-select clearfix">
                                                    <select class="wide required" id="IdTypes" runat="server" name="idType" onchange="getVals(this, 'idType');">
                                                        <option value="RSA ID">RSA ID</option>
                                                        <option value="Passport">Passport</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>ID/Passport Number</label>
                                                <input type="text" name="id" id="PassIDNum" runat="server" class="form-control required" placeholder="Enter ID/Passport Number" onchange="getVals(this, 'id');" />
                                            </div>

                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group terms">
                                                <label class="container_check">
                                                    I am insolvent
                                                    <input type="checkbox" id="Insolv" runat="server" name="insolvent" value="Yes" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </div>

                                            <div class="form-group terms">
                                                <label class="container_check">
                                                    I am currently subject to an Administrator Order?
                                                    <input type="checkbox" id="Adminbox" runat="server" name="administrator" value="Yes" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </div>

                                            <div class="form-group terms">
                                                <label class="container_check">
                                                    I am currently under sequestration
                                                    <input type="checkbox" id="seqBox" runat="server" name="sequestration" value="Yes" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </div>
                                            <div class="form-group terms">
                                                <label class="container_check">
                                                    I am currently under debt review
                                                    <input type="checkbox" id="DebtBox" runat="server" name="debt" value="Yes" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </div>
                                            <div class="form-group terms">
                                                <label class="container_check">
                                                    I am currently liable as a co-debtor
                                                    <input type="checkbox" id="CoDebtBox" runat="server" name="co-debtor" value="Yes" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </div>
                                            <div class="form-group terms">
                                                <label class="container_check">
                                                    I am currently liable as a guarantor
                                                    <input type="checkbox" id="guarBox" runat="server" name="guarantor" value="Yes" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </div>
                                            <div class="form-group terms">
                                                <label class="container_check">
                                                    I am currently liable as a surety
                                                    <input type="checkbox" id="suretyBox" runat="server" name="surety" value="Yes" />
                                                    <span class="checkmark"></span>
                                                </label>
                                            </div>

                                        </div>
                                        <div class="form-group terms">
                                            <label class="container_check">
                                                I understand that the details I capture in this application may be sent to one or more financial institutions and I consent to Credit Bureau processing of credit information, including income, employment, personal data for prescribed business as per NCA, POPIA and related Acts.
                                            <input type="checkbox" name="terms" id="termsBox" runat="server" value="Yes" class="required" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <!-- /step-->
                                <div class="step">
                                    <h3 class="main_question"><strong>2/6</strong>Vehicle Information</h3>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Car Type</label>
                                                <div class="styled-select clearfix">
                                                    <select class="wide required" id="newUsedselection" runat="server" name="newused" onchange="getVals(this, 'newused');">
                                                        <option value="Used">Used</option>
                                                        <option value="Demo">Demo</option>
                                                        <option value="New">New</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Vehicle Make</label>
                                                <input type="text" name="vehicle_make" id="VehMake" runat="server" class="form-control required" placeholder="Vehicle Make" value="VOLKSWAGEN" onchange="getVals(this, 'vehicle_make');" readonly="" />
                                            </div>
                                            <div class="form-group">
                                                <label>Vehicle Model</label>
                                                <input type="text" name="vehicle_model" id="VehMod" runat="server" class="form-control required" placeholder="Vehicle Model" value="POLO VIVO GP 1.4 CONCEPTLINE 5DR" onchange="getVals(this, 'vehicle_model');" readonly="" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Purchase Price</label>
                                                <input type="text" name="purcahse_price" id="PurchPrice" runat="server" class="form-control required" placeholder="Purchase Price" value="230000" onchange="getVals(this, 'purcahse_price');" readonly="" />
                                            </div>
                                            <div class="form-group">
                                                <label>Deposit</label>
                                                <input type="text" name="deposit" id="depositField" runat="server" class="form-control required" placeholder="Deposit (R)" onchange="getVals(this, 'deposit');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Payment Day</label>
                                                <div class="styled-select clearfix">
                                                    <select class="wide required" id="paymentDaySelect" runat="server" name="payment_day" onchange="getVals(this, 'payment_day');">
                                                        <option value="30">30</option>
                                                        <option value="1">1</option>
                                                        <option value="15">15</option>
                                                        <option value="20">20</option>
                                                        <option value="25">25</option>
                                                        <option value="27">27</option>
                                                      
                                                    </select>
                                                </div>
                                            </div>
                                          
                                        </div>
                                    </div>
                                </div>
                                <!-- /step-->
                                <div class="step">
                                    <h3 class="main_question"><strong>3/6</strong>Contact Information</h3>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Mobile Number</label>
                                                <input type="text" name="mobile_number" id="MobNum" runat="server" class="form-control required" placeholder="Enter Your Mobile Number" onchange="getVals(this, 'mobile_number');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Alternate Mobile Number</label>
                                                <input type="text" name="alt_mobile_number" id="AltNum1" runat="server" class="form-control" placeholder="Enter Your Alternate Mobile Number" onchange="getVals(this, 'alt_mobile_number');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Contract Type</label>
                                                <div class="styled-select clearfix">
                                                    <select class="wide" name="contract_type" id="ContractTypeSelect" runat="server" onchange="getVals(this, 'contract_type');">
                                                        <option value="CONTRACT">CONTRACT</option>
                                                        <option value="PERMANENT">PREPAID</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Home Telephone Number</label>
                                                <input type="text" name="home_telephone_number" id="homeTelNum" runat="server" class="form-control required" placeholder="Enter Your Home Telephone Number" onchange="getVals(this, 'home_telephone_number');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Fax Number</label>
                                                <input type="text" name="fax_number" id="faxNum" runat="server" class="form-control required" placeholder="Enter Your Fax Number" onchange="getVals(this, 'fax_number');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Prefered Contact Method</label>
                                                <div class="styled-select clearfix">
                                                    <select class="wide required" name="contract_type" id="PreferedMethodSelect" runat="server" onchange="getVals(this, 'contract_type');">
                                                        <option value="MOBILE">MOBILE</option>
                                                        <option value="HOME">HOME</option>
                                                        <option value="EMAIL">EMAIL</option>
                                                        <option value="WORK">WORK</option>
                                                        <option value="POST">POST</option>
                                                        <option value="FAX">FAX</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Address Line 1</label>
                                                <input type="text" name="address_line_1" id="AddsLine1" runat="server" class="form-control required" placeholder="Enter Your Address" onchange="getVals(this, 'address_line_1');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Address Line 2</label>
                                                <input type="text" name="address_line_2" id="AddLine2" runat="server" class="form-control required" placeholder="Enter Your Address" onchange="getVals(this, 'address_line_2');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Suburb</label>
                                                <input type="text" name="suburb" id="Suburb" runat="server" class="form-control required" placeholder="Enter Your Suburb" onchange="getVals(this, 'suburb');" />
                                            </div>
                                            <div class="form-group">
                                                <label>City</label>
                                                <input type="text" name="city" id="City" runat="server" class="form-control required" placeholder="Enter Your City" onchange="getVals(this, 'city');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Postal Code</label>
                                                <input type="text" name="postal_code" id="postalCode" runat="server" class="form-control required" placeholder="Enter Your Postal Code" onchange="getVals(this, 'postal_code');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Province</label>
                                                <div class="styled-select clearfix">
                                                    <select class="wide required" id="provinceSelect" runat="server" name="province" onchange="getVals(this, 'province');">
                                                      
                                                        <option value="GAUTENG">GAUTENG</option>
                                                        <option value="KWAZULU-NATAL">KWAZULU-NATAL</option>
                                                        <option value="WESTERN CAPE">WESTERN CAPE</option>
                                                        <option value="LIMPOPO">LIMPOPO</option>
                                                        <option value="MPUMALANGA">MPUMALANGA</option>
                                                        <option value="EASTERN-CAPE">EASTERN-CAPE</option>
                                                        <option value="EASTERN-CAPE">EASTERN-CAPE</option>
                                                        <option value="NORTHERN-CAPE">NORTHERN-CAPE</option>
                                                        <option value="NORTH-WEST">NORTH-WEST</option>
                                                        <option value="FREE-STATE">FREE-STATE</option>
                                                        <option value="FREE-STATE">FREE-STATE</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Date Occupied</label>
                                                <input type="date" id="DateOcc" runat="server" class="form-control required"/>
                                            </div>
                                            <div class="form-group">
                                                <label>Residential Status</label>
                                                <div class="styled-select clearfix">
                                                    <select class="wide required" id="ResStatus" runat="server" name="contract_type" onchange="getVals(this, 'contract_type');">
                                                        <option value="OWNER BONDED">OWNER BONDED</option>
                                                        <option value="OWNER BOND FREE">OWNER BOND FREE</option>
                                                        <option value="TENANT">TENANT</option>
                                                        <option value="BOARDER">BOARDER</option>
                                                    </select>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!-- /step-->
                                <div class="step">
                                    <h3 class="main_question"><strong>4/6</strong>Next Of Kin Information</h3>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Marital Status</label>
                                                <div class="styled-select clearfix">
                                                    <select id="selMaritalStatus" runat="server" class="wide" name="marital_status" onchange="getVals(this, 'marital_status');">
                                                        <option value="SINGLE">SINGLE</option>
                                                        <option value="MARRIED">MARRIED</option>
                                                        <option value="DIVORCED">DIVORCED</option>
                                                        <option value="WIDOWED">WIDOWED</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Marital Type</label>
                                                <div class="styled-select clearfix">
                                                    <select id="selMaritalType" runat="server" class="wide" name="marital_type" onchange="getVals(this, 'marital_type');">
                                                        <option value="ANC WITH ACCRUAL">ANC WITH ACCRUAL</option>
                                                        <option value="ANC WITH ACCRUAL">ANC WITH ACCRUAL</option>
                                                        <option value="IN COMMUNITY OF PROPERTY">IN COMMUNITY OF PROPERTY</option>
                                                        <option value="TRIBAL LAW">IN COMMUNITY OF PROPERTY</option>
                                                        <option value="FOREIGN LAW">FOREIGN LAW</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Marital Date</label>
                                                <input id="txtMaritalDate" runat="server" type="date" class="form-control required"/>
                                            </div>
                                            <div class="form-group">
                                                <label>Spouse First Name</label>
                                                <input id="txtSpouseFirstName" runat="server" type="text" name="spouse_first_name" class="form-control required" placeholder="Enter Your Spouse First Name" onchange="getVals(this, 'spouse_first_name');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Spouse Last Name</label>
                                                <input id="txtSpouseLastName" runat="server" type="text" name="spouse_last_name" class="form-control required" placeholder="Enter Your Spouse Last Name" onchange="getVals(this, 'spouse_last_name');" />
                                            </div>
                                            <div class="form-group">
                                                <label>ID Type</label>
                                                <div class="styled-select clearfix">
                                                    <select id="selIdType" runat="server" class="wide" name="spouse_id_type" onchange="getVals(this, 'spouse_id_type');">
                                                        <option value="RSA ID">Select ID Type</option>
                                                        <option value="RSA ID">RSA ID</option>
                                                        <option value="Passport">Passport</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Spouse ID Number</label>
                                                <input id="txtSpouseIdNumber" runat="server" type="text" name="spouse_id_number" class="form-control" placeholder="Enter Your Spouse ID Number" onchange="getVals(this, 'spouse_id_number');" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Next Of Kin First Name</label>
                                                <input id="txtNextFirstName" runat="server" type="text" name="nextofkin_first_name" class="form-control required" placeholder="Enter Your Next Of Kin First Name" onchange="getVals(this, 'nextofkin_first_name');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Next Of Kin Last Name</label>
                                                <input id="txtNextLastName" runat="server" type="text" name="nextofkin_last_name" class="form-control required" placeholder="Enter Your Next Of Kin Last Name" onchange="getVals(this, 'nextofkin_last_name');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Next Of Kin First Mobile Number</label>
                                                <input id="txtNextMobile" runat="server" type="text" name="nextofkin_mobile_number" class="form-control required" placeholder="Enter Your Next Of Kin Last Name" onchange="getVals(this, 'nextofkin_mobile_number');" />
                                            </div>
                                                  <div class="form-group">
                                                <label>Relationship Of Next Of Kin</label>
                                                <div class="styled-select clearfix">
                                                    <select id="txtKinRelation" runat="server" class="wide required" name="spouse_id_type" onchange="getVals(this, 'spouse_id_type');">
                                       
                                                        <option value="PARENT">PARENT</option>
                                                        <option value="SIBLING">SIBLING</option>
                                                        <option value="CHILD">CHILD</option>
                                                        <option value="DISTANT">DISTANT</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Address Line 1</label>
                                                <input id="txtKinAddress1" type="text" name="kin_address_line_1" class="form-control required" placeholder="Enter Address" onchange="getVals(this, 'kin_address_line_1');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Address Line 2</label>
                                                <input id="txtKinAddress2" type="text" name="kin_address_line_2" class="form-control" placeholder="Enter Address" onchange="getVals(this, 'kin_address_line_2');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Suburb / City</label>
                                                <input id="txtKinSuburb" type="text" name="kin_suburb" class="form-control required" placeholder="Enter  Suburb" onchange="getVals(this, 'kin_suburbs');" />
                                            </div>
                                            <div class="form-group">
                                                <label>City</label>
                                                <input id="txtKinCity" type="text" name="kin_city" class="form-control required" placeholder="Enter Your Kins City" onchange="getVals(this, 'kin_city');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Postal Code</label>
                                                <input id="txtKinPostalCode" type="text" name="kin_postal_code" class="form-control required" placeholder="Enter Your Kins Postal Code" onchange="getVals(this, 'kin_postal_code');" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /step-->
                                <div class="step">
                                    <h3 class="main_question"><strong>5/6</strong>Work And Salary Information</h3>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Industry</label>
                                                <div class="styled-select clearfix">
                                                    <select id="selIndustry" class="wide required" name="industry" onchange="getVals(this, 'industry');">
                                                        <option label="ADVERTISING" value="string:ADVERTISING">ADVERTISING</option>
                                                        <option label="AGRICULTURE" value="string:AGRICULTURE">AGRICULTURE</option>
                                                        <option label="ARTS AND CULTURE" value="string:ARTS AND CULTURE">ARTS AND CULTURE</option>
                                                        <option label="BEAUTY AND FASHION" value="string:BEAUTY AND FASHION">BEAUTY AND FASHION</option>
                                                        <option label="BUSINESS SERVICES" value="string:BUSINESS SERVICES">BUSINESS SERVICES</option>
                                                        <option label="COMMUNITY SERVICES" value="string:COMMUNITY SERVICES">COMMUNITY SERVICES</option>
                                                        <option label="CONSTRUCTION" value="string:CONSTRUCTION">CONSTRUCTION</option>
                                                        <option label="EDUCATION" value="string:EDUCATION">EDUCATION</option>
                                                        <option label="ENERGY" value="string:ENERGY">ENERGY</option>
                                                        <option label="ENGINEERING" value="string:ENGINEERING">ENGINEERING</option>
                                                        <option label="ENTERTAINMENT" value="string:ENTERTAINMENT">ENTERTAINMENT</option>
                                                        <option label="FINANCE" value="string:FINANCE">FINANCE</option>
                                                        <option label="GOVERNMENT" value="string:GOVERNMENT">GOVERNMENT</option>
                                                        <option label="HEALTH" value="string:HEALTH">HEALTH</option>
                                                        <option label="INFORMATION TECHNOLOGY" value="string:INFORMATION TECHNOLOGY">INFORMATION TECHNOLOGY</option>
                                                        <option label="INSURANCE" value="string:INSURANCE">INSURANCE</option>
                                                        <option label="LEGAL" value="string:LEGAL">LEGAL</option>
                                                        <option label="MANUFACTURING" value="string:MANUFACTURING">MANUFACTURING</option>
                                                        <option label="MEDIA" value="string:MEDIA">MEDIA</option>
                                                        <option label="MINING" value="string:MINING">MINING</option>
                                                        <option label="MOTOR" value="string:MOTOR">MOTOR</option>
                                                        <option label="RETAIL" value="string:RETAIL">RETAIL</option>
                                                        <option label="SECURITY" value="string:SECURITY">SECURITY</option>
                                                        <option label="TELECOMMUNICATION" value="string:TELECOMMUNICATION">TELECOMMUNICATION</option>
                                                        <option label="TOURISM" value="string:TOURISM">TOURISM</option>
                                                        <option label="TRANSPORT" value="string:TRANSPORT">TRANSPORT</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Occupation</label>
                                                <div class="styled-select clearfix">
                                                    <select id="selOccupation" class="wide required" name="occupation" onchange="getVals(this, 'occupation');">
                                                        <option label="ACCOUNTANT (BOOKKEEPER)" value="string:1">ACCOUNTANT (BOOKKEEPER)</option>
                                                        <option label="ACCOUNTANT (CHARTERED)" value="string:47">ACCOUNTANT (CHARTERED)</option>
                                                        <option label="ACTOR" value="string:2">ACTOR</option>
                                                        <option label="ACTUARY" value="string:3">ACTUARY</option>
                                                        <option label="ADMINISTRATIVE PERSONNEL" value="string:4">ADMINISTRATIVE PERSONNEL</option>
                                                        <option label="ADVOCATE" value="string:5">ADVOCATE</option>
                                                        <option label="AGENT" value="string:6">AGENT</option>
                                                        <option label="AGRICULTURALIST" value="string:7">AGRICULTURALIST</option>
                                                        <option label="ANALYST (NON PROFESSIONAL)" value="string:8">ANALYST (NON PROFESSIONAL)</option>
                                                        <option label="ANALYST (PROFESSIONAL)" value="string:9">ANALYST (PROFESSIONAL)</option>
                                                        <option label="APPRAISER" value="string:10">APPRAISER</option>
                                                        <option label="APPRENTICE (NON SKILLED)" value="string:11">APPRENTICE (NON SKILLED)</option>
                                                        <option label="APPRENTICE (SKILLED)" value="string:12">APPRENTICE (SKILLED)</option>
                                                        <option label="ARBITRATOR" value="string:13">ARBITRATOR</option>
                                                        <option label="ARCHEOLOGIST" value="string:14">ARCHEOLOGIST</option>
                                                        <option label="ARCHITECT" value="string:15">ARCHITECT</option>
                                                        <option label="ARTICLE CLERK" value="string:16">ARTICLE CLERK</option>
                                                        <option label="ARTISAN" value="string:17">ARTISAN</option>
                                                        <option label="ARTIST" value="string:18">ARTIST</option>
                                                        <option label="ASPHALTER" value="string:19">ASPHALTER</option>
                                                        <option label="ASSESSOR" value="string:20">ASSESSOR</option>
                                                        <option label="ASSISTANT (ADMINISTRATION)" value="string:21">ASSISTANT (ADMINISTRATION)</option>
                                                        <option label="ASSISTANT (SALES)" value="string:22">ASSISTANT (SALES)</option>
                                                        <option label="ASSISTANT (TRADE)" value="string:23">ASSISTANT (TRADE)</option>
                                                        <option label="ASTROLOGER" value="string:24">ASTROLOGER</option>
                                                        <option label="ASTRONOMER " value="string:25">ASTRONOMER </option>
                                                        <option label="ATTENDANT" value="string:26">ATTENDANT</option>
                                                        <option label="ATTORNEY" value="string:27">ATTORNEY</option>
                                                        <option label="AU PAIR" value="string:28">AU PAIR</option>
                                                        <option label="AUCTIONEER" value="string:29">AUCTIONEER</option>
                                                        <option label="AUDITOR" value="string:30">AUDITOR</option>
                                                        <option label="AUTHOR" value="string:31">AUTHOR</option>
                                                        <option label="BAILIFF" value="string:32">BAILIFF</option>
                                                        <option label="BAKER" value="string:33">BAKER</option>
                                                        <option label="BANK OFFICIAL" value="string:34">BANK OFFICIAL</option>
                                                        <option label="BARBER / HAIRDRESSER" value="string:35">BARBER / HAIRDRESSER</option>
                                                        <option label="BEAUTICIAN" value="string:36">BEAUTICIAN</option>
                                                        <option label="BISHOP" value="string:37">BISHOP</option>
                                                        <option label="BOOKMAKER" value="string:38">BOOKMAKER</option>
                                                        <option label="BREWER" value="string:39">BREWER</option>
                                                        <option label="BROADCASTER" value="string:40">BROADCASTER</option>
                                                        <option label="BROKER" value="string:41">BROKER</option>
                                                        <option label="BURSAR" value="string:42">BURSAR</option>
                                                        <option label="BUYER" value="string:43">BUYER</option>
                                                        <option label="CARETAKER" value="string:44">CARETAKER</option>
                                                        <option label="CARTOONIST" value="string:45">CARTOONIST</option>
                                                        <option label="CASHIERS" value="string:46">CASHIERS</option>
                                                        <option label="CHEF" value="string:48">CHEF</option>
                                                        <option label="CHILDCARE WORKER" value="string:49">CHILDCARE WORKER</option>
                                                        <option label="CLEANER" value="string:50">CLEANER</option>
                                                        <option label="CLERK" value="string:51">CLERK</option>
                                                        <option label="CLERK (ADMINISTRATION)" value="string:52">CLERK (ADMINISTRATION)</option>
                                                        <option label="CLERK (SALES)" value="string:53">CLERK (SALES)</option>
                                                        <option label="COLLECTOR" value="string:55">COLLECTOR</option>
                                                        <option label="COMMUNICATIONS OFFICER" value="string:58">COMMUNICATIONS OFFICER</option>
                                                        <option label="COMPUTER PROGRAMMER" value="string:59">COMPUTER PROGRAMMER</option>
                                                        <option label="CONSULTANT" value="string:60">CONSULTANT</option>
                                                        <option label="CONSULTANT (BUSINESS)" value="string:61">CONSULTANT (BUSINESS)</option>
                                                        <option label="CONSULTANT (CALL CENTRES)" value="string:62">CONSULTANT (CALL CENTRES)</option>
                                                        <option label="CONSULTANT (SALES)" value="string:63">CONSULTANT (SALES)</option>
                                                        <option label="CONTRACTOR" value="string:64">CONTRACTOR</option>
                                                        <option label="CONTROLLER" value="string:65">CONTROLLER</option>
                                                        <option label="COOK" value="string:66">COOK</option>
                                                        <option label="COPYWRITER" value="string:67">COPYWRITER</option>
                                                        <option label="CORRECTIONAL SERVICES OFFICER" value="string:68">CORRECTIONAL SERVICES OFFICER</option>
                                                        <option label="CRAFTSMAN" value="string:69">CRAFTSMAN</option>
                                                        <option label="CREDIT CONTROLLER" value="string:70">CREDIT CONTROLLER</option>
                                                        <option label="CURATOR" value="string:71">CURATOR</option>
                                                        <option label="CUSTOMS OFFICIAL" value="string:72">CUSTOMS OFFICIAL</option>
                                                        <option label="DANCER / CHOREOGRAPHER" value="string:73">DANCER / CHOREOGRAPHER</option>
                                                        <option label="DATA CAPTURER" value="string:74">DATA CAPTURER</option>
                                                        <option label="DEFENCE FORCE (COMMISSIONED OFFICER)" value="string:76">DEFENCE FORCE (COMMISSIONED OFFICER)</option>
                                                        <option label="DEFENCE FORCE (NON COMMISSIONED OFFICER)" value="string:77">DEFENCE FORCE (NON COMMISSIONED OFFICER)</option>
                                                        <option label="DEPUTY SHERIFF" value="string:78">DEPUTY SHERIFF</option>
                                                        <option label="DESIGNER" value="string:79">DESIGNER</option>
                                                        <option label="DESPATCHER" value="string:80">DESPATCHER</option>
                                                        <option label="DIPLOMAT" value="string:81">DIPLOMAT</option>
                                                        <option label="DIRECTOR" value="string:82">DIRECTOR</option>
                                                        <option label="DOMESTIC WORKER" value="string:84">DOMESTIC WORKER</option>
                                                        <option label="DRAUGHTSMAN" value="string:85">DRAUGHTSMAN</option>
                                                        <option label="DRESSMAKER" value="string:86">DRESSMAKER</option>
                                                        <option label="DRIVER" value="string:87">DRIVER</option>
                                                        <option label="ECONOMIST" value="string:89">ECONOMIST</option>
                                                        <option label="EDITOR" value="string:90">EDITOR</option>
                                                        <option label="EDUCATIONAL PRACTITIONER" value="string:91">EDUCATIONAL PRACTITIONER</option>
                                                        <option label="ELECTRICIAN" value="string:92">ELECTRICIAN</option>
                                                        <option label="ENGINEER" value="string:93">ENGINEER</option>
                                                        <option label="EVANGELIST" value="string:95">EVANGELIST</option>
                                                        <option label="FIRE FIGHTER" value="string:222">FIRE FIGHTER</option>
                                                        <option label="FISHERMAN (COMMERCIAL)" value="string:56">FISHERMAN (COMMERCIAL)</option>
                                                        <option label="FLIGHT ATTENDANT" value="string:98">FLIGHT ATTENDANT</option>
                                                        <option label="FLIGHT CONTROLLER" value="string:99">FLIGHT CONTROLLER</option>
                                                        <option label="FLORIST" value="string:100">FLORIST</option>
                                                        <option label="FORESTRY WORKER" value="string:101">FORESTRY WORKER</option>
                                                        <option label="FORTUNE TELLER" value="string:102">FORTUNE TELLER</option>
                                                        <option label="FUNERAL WORKER  " value="string:103">FUNERAL WORKER  </option>
                                                        <option label="GAMING / CASINO STAFF" value="string:104">GAMING / CASINO STAFF</option>
                                                        <option label="GOVERNMENT OFFICIAL" value="string:105">GOVERNMENT OFFICIAL</option>
                                                        <option label="GRAPHIC DESIGNER" value="string:106">GRAPHIC DESIGNER</option>
                                                        <option label="GUNSMITH" value="string:108">GUNSMITH</option>
                                                        <option label="HANDYMAN" value="string:109">HANDYMAN</option>
                                                        <option label="HOSPITALITY PRACTITIONER" value="string:112">HOSPITALITY PRACTITIONER</option>
                                                        <option label="HOSTESS" value="string:113">HOSTESS</option>
                                                        <option label="HOTELIER" value="string:114">HOTELIER</option>
                                                        <option label="HOUSEKEEPER / BUTLER" value="string:115">HOUSEKEEPER / BUTLER</option>
                                                        <option label="HOUSEWIFE" value="string:116">HOUSEWIFE</option>
                                                        <option label="HUNTER" value="string:117">HUNTER</option>
                                                        <option label="INSPECTOR" value="string:118">INSPECTOR</option>
                                                        <option label="INSURANCE / ASSURANCE (ADMINISTRATION)" value="string:120">INSURANCE / ASSURANCE (ADMINISTRATION)</option>
                                                        <option label="INTERNAL AUDITOR" value="string:121">INTERNAL AUDITOR</option>
                                                        <option label="INTERPRETER" value="string:122">INTERPRETER</option>
                                                        <option label="INVESTIGATOR" value="string:124">INVESTIGATOR</option>
                                                        <option label="JOURNALIST" value="string:125">JOURNALIST</option>
                                                        <option label="LABOURER (SKILLED)" value="string:126">LABOURER (SKILLED)</option>
                                                        <option label="LABOURER (UNSKILLED)" value="string:127">LABOURER (UNSKILLED)</option>
                                                        <option label="LAND SURVEYOR" value="string:128">LAND SURVEYOR</option>
                                                        <option label="LANDSCAPER" value="string:129">LANDSCAPER</option>
                                                        <option label="LECTURER" value="string:130">LECTURER</option>
                                                        <option label="LEGAL (PROFESSIONAL)" value="string:131">LEGAL (PROFESSIONAL)</option>
                                                        <option label="LEGAL OFFICER" value="string:132">LEGAL OFFICER</option>
                                                        <option label="LIBRARIAN" value="string:133">LIBRARIAN</option>
                                                        <option label="LIFEGUARD" value="string:134">LIFEGUARD</option>
                                                        <option label="MANAGER" value="string:136">MANAGER</option>
                                                        <option label="MANAGER (SENIOR)" value="string:223">MANAGER (SENIOR)</option>
                                                        <option label="MATHEMATICIAN" value="string:138">MATHEMATICIAN</option>
                                                        <option label="MECHANIC" value="string:224">MECHANIC</option>
                                                        <option label="MEDICAL (NON PROFESSIONAL)" value="string:141">MEDICAL (NON PROFESSIONAL)</option>
                                                        <option label="MEDICAL (PROFESSIONAL SELF-EMPLOYED)" value="string:225">MEDICAL (PROFESSIONAL SELF-EMPLOYED)</option>
                                                        <option label="MEDICAL (PROFESSIONAL)" value="string:142">MEDICAL (PROFESSIONAL)</option>
                                                        <option label="MEDICAL (TRADE)" value="string:143">MEDICAL (TRADE)</option>
                                                        <option label="MEDICAL SPECIALIST" value="string:144">MEDICAL SPECIALIST</option>
                                                        <option label="MEDICAL WORKER" value="string:145">MEDICAL WORKER</option>
                                                        <option label="MEMBER OF PARLIAMENT" value="string:146">MEMBER OF PARLIAMENT</option>
                                                        <option label="MESSENGER" value="string:149">MESSENGER</option>
                                                        <option label="METER READER" value="string:150">METER READER</option>
                                                        <option label="MILLWRIGHT" value="string:151">MILLWRIGHT</option>
                                                        <option label="MINER" value="string:152">MINER</option>
                                                        <option label="MINOR (SUPPORTED BY PARENT)" value="string:154">MINOR (SUPPORTED BY PARENT)</option>
                                                        <option label="MODEL" value="string:155">MODEL</option>
                                                        <option label="MUSIC CONDUCTOR" value="string:157">MUSIC CONDUCTOR</option>
                                                        <option label="NAVY (EMPLOYEE)" value="string:158">NAVY (EMPLOYEE)</option>
                                                        <option label="NAVY (SENIOR OFFICER)" value="string:159">NAVY (SENIOR OFFICER)</option>
                                                        <option label="OFFICE WORKER" value="string:160">OFFICE WORKER</option>
                                                        <option label="OPERATOR" value="string:161">OPERATOR</option>
                                                        <option label="OWNER OF BUSINESS (NON PROFESSIONAL)" value="string:162">OWNER OF BUSINESS (NON PROFESSIONAL)</option>
                                                        <option label="OWNER OF BUSINESS (PROFESSIONAL)" value="string:163">OWNER OF BUSINESS (PROFESSIONAL)</option>
                                                        <option label="PAINTER" value="string:165">PAINTER</option>
                                                        <option label="PARK WARDEN" value="string:166">PARK WARDEN</option>
                                                        <option label="PENSIONER" value="string:168">PENSIONER</option>
                                                        <option label="PHOTOGRAPHER" value="string:169">PHOTOGRAPHER</option>
                                                        <option label="PILOT" value="string:170">PILOT</option>
                                                        <option label="POLICE (COMMISSIONED OFFICER)" value="string:171">POLICE (COMMISSIONED OFFICER)</option>
                                                        <option label="POLICE (NON COMMISSIONED OFFICER)" value="string:172">POLICE (NON COMMISSIONED OFFICER)</option>
                                                        <option label="POLITICIAN" value="string:173">POLITICIAN</option>
                                                        <option label="POSTAL WORKER" value="string:174">POSTAL WORKER</option>
                                                        <option label="POSTMASTER" value="string:175">POSTMASTER</option>
                                                        <option label="PROBATION OFFICER" value="string:176">PROBATION OFFICER</option>
                                                        <option label="PRODUCTION CONTROL" value="string:177">PRODUCTION CONTROL</option>
                                                        <option label="PROFESSIONAL" value="string:178">PROFESSIONAL</option>
                                                        <option label="PROFESSOR" value="string:179">PROFESSOR</option>
                                                        <option label="PUBLIC RELATIONS OFFICER" value="string:182">PUBLIC RELATIONS OFFICER</option>
                                                        <option label="PUBLISHER" value="string:183">PUBLISHER</option>
                                                        <option label="QUANTITY SURVEYOR" value="string:185">QUANTITY SURVEYOR</option>
                                                        <option label="RAILWAY WORKER" value="string:186">RAILWAY WORKER</option>
                                                        <option label="RECEPTIONIST" value="string:187">RECEPTIONIST</option>
                                                        <option label="RECTOR" value="string:188">RECTOR</option>
                                                        <option label="REFUSE COLLECTOR" value="string:189">REFUSE COLLECTOR</option>
                                                        <option label="RELIGIOUS PRACTITIONER" value="string:190">RELIGIOUS PRACTITIONER</option>
                                                        <option label="REPAIRMAN" value="string:191">REPAIRMAN</option>
                                                        <option label="RESEARCHER" value="string:193">RESEARCHER</option>
                                                        <option label="SAFETY AND SECURITY WORKER" value="string:194">SAFETY AND SECURITY WORKER</option>
                                                        <option label="SAILOR" value="string:195">SAILOR</option>
                                                        <option label="SALES REPRESENTATIVE" value="string:196">SALES REPRESENTATIVE</option>
                                                        <option label="SCIENTIST" value="string:197">SCIENTIST</option>
                                                        <option label="SECRETARIAL" value="string:198">SECRETARIAL</option>
                                                        <option label="SELF EMPLOYED (NON PROFESSIONAL)" value="string:199">SELF EMPLOYED (NON PROFESSIONAL)</option>
                                                        <option label="SOCIAL WORKER" value="string:200">SOCIAL WORKER</option>
                                                        <option label="SPORTSPERSON (PROFESSIONAL)" value="string:201">SPORTSPERSON (PROFESSIONAL)</option>
                                                        <option label="STATISTICIAN" value="string:202">STATISTICIAN</option>
                                                        <option label="STOREMAN" value="string:203">STOREMAN</option>
                                                        <option label="STUDENT" value="string:204">STUDENT</option>
                                                        <option label="SUPERVISOR" value="string:205">SUPERVISOR</option>
                                                        <option label="TAXIDERMIST" value="string:206">TAXIDERMIST</option>
                                                        <option label="TECHNICIANS" value="string:207">TECHNICIANS</option>
                                                        <option label="TECHNOLOGIST" value="string:208">TECHNOLOGIST</option>
                                                        <option label="TELEPHONIST" value="string:209">TELEPHONIST</option>
                                                        <option label="THERAPIST (MEDICAL PRATITIONER)" value="string:210">THERAPIST (MEDICAL PRATITIONER)</option>
                                                        <option label="THERAPIST (NON-MEDICAL PRATITIONER)" value="string:211">THERAPIST (NON-MEDICAL PRATITIONER)</option>
                                                        <option label="TRADER" value="string:212">TRADER</option>
                                                        <option label="TRADESMAN" value="string:213">TRADESMAN</option>
                                                        <option label="TRADITIONAL HEALER" value="string:214">TRADITIONAL HEALER</option>
                                                        <option label="TRAINER" value="string:215">TRAINER</option>
                                                        <option label="UNION REPRESENTATIVE" value="string:217">UNION REPRESENTATIVE</option>
                                                        <option label="WILDLIFE SPECIALIST" value="string:218">WILDLIFE SPECIALIST</option>
                                                        <option label="WILDLIFE WORKER" value="string:219">WILDLIFE WORKER</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Level</label>
                                                <div class="styled-select clearfix">
                                                    <select id="selLevel" class="wide" name="level" onchange="getVals(this, 'level');">
                                                        <option label="SENIOR MANAGEMENT" value="string:SENIOR MANAGEMENT">SENIOR MANAGEMENT</option>
                                                        <option label="MANAGEMENT" value="string:MANAGEMENT">MANAGEMENT</option>
                                                        <option label="SUPERVISOR" value="string:SUPERVISOR">SUPERVISOR</option>
                                                        <option label="SKILLED WORKER" value="string:SKILLED WORKER">SKILLED WORKER</option>
                                                        <option label="SEMI-SKILLED WORKER" value="string:SEMI-SKILLED WORKER">SEMI-SKILLED WORKER</option>
                                                        <option label="UNSKILLED WORKER" value="string:UNSKILLED WORKER">UNSKILLED WORKER</option>
                                                        <option label="JUNIOR POSITION" value="string:JUNIOR POSITION">JUNIOR POSITION</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Employee Name</label>
                                                <input id="txtEmpoyeeName" type="text" name="employee_name" class="form-control required" placeholder="Enter Your employee Name" onchange="getVals(this, 'employee_name');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Employee Number</label>
                                                <input id="txtEmpoyeeNumber" type="text" name="employee_number" class="form-control required" placeholder="Enter Your employee Number" onchange="getVals(this, 'employee_number');" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Address Line 1</label>
                                                <input id="txtEmployeeAddress1" type="text" name="employee_address_line_1" class="form-control required" placeholder="Enter Your Employees Address" onchange="getVals(this, 'employee_address_line_1');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Address Line 2</label>
                                                <input id="txtEmployeeAddress2" type="text" name="employee_address_line_2" class="form-control" placeholder="Enter Your Employees Address" onchange="getVals(this, 'employee_address_line_2');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Suburb / City</label>
                                                <input id="txtEmployeeCity" type="text" name="employee_city_suburb" class="form-control required" placeholder="Enter Your Employees City / Suburb" onchange="getVals(this, 'employee_city_suburb');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Postal Code</label>
                                                <input id="txtEmployeePostalCode" type="text" name="employee_postal_code" class="form-control required" placeholder="Enter Your Employees Postal Code" onchange="getVals(this, 'employee_postal_code');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Province</label>
                                                <div class="styled-select clearfix">
                                                    <select id="selEmployeeProvince" class="wide required" name="employee_province" onchange="getVals(this, 'employee_province');">
                                                        <option value="GAUTENG">GAUTENG</option>
                                                        <option value="KWAZULU-NATAL">KWAZULU-NATAL</option>
                                                        <option value="WESTERN CAPE">WESTERN CAPE</option>
                                                        <option value="LIMPOPO">LIMPOPO</option>
                                                        <option value="MPUMALANGA">MPUMALANGA</option>
                                                        <option value="EASTERN-CAPE">EASTERN-CAPE</option>
                                                        <option value="EASTERN-CAPE">EASTERN-CAPE</option>
                                                        <option value="NORTHERN-CAPE">NORTHERN-CAPE</option>
                                                        <option value="NORTH-WEST">NORTH-WEST</option>
                                                        <option value="FREE-STATE">FREE-STATE</option>
                                                        <option value="FREE-STATE">FREE-STATE</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Date Employed</label>
                                                <input type="date" class="form-control required" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Salary Day</label>
                                                <div class="styled-select clearfix">
                                                    <select id="selSalaryDay" class="wide required" name="salary_day" onchange="getVals(this, 'salary_day');">
                                                        <option label="1" value="string:1">1</option>
                                                        <option label="2" value="string:2">2</option>
                                                        <option label="3" value="string:3">3</option>
                                                        <option label="4" value="string:4">4</option>
                                                        <option label="5" value="string:5">5</option>
                                                        <option label="6" value="string:6">6</option>
                                                        <option label="7" value="string:7">7</option>
                                                        <option label="8" value="string:8">8</option>
                                                        <option label="9" value="string:9">9</option>
                                                        <option label="10" value="string:10">10</option>
                                                        <option label="11" value="string:11">11</option>
                                                        <option label="12" value="string:12">12</option>
                                                        <option label="13" value="string:13">13</option>
                                                        <option label="14" value="string:14">14</option>
                                                        <option label="15" value="string:15">15</option>
                                                        <option label="16" value="string:16">16</option>
                                                        <option label="17" value="string:17">17</option>
                                                        <option label="18" value="string:18">18</option>
                                                        <option label="19" value="string:19">19</option>
                                                        <option label="20" value="string:20">20</option>
                                                        <option label="21" value="string:21">21</option>
                                                        <option label="22" value="string:22">22</option>
                                                        <option label="23" value="string:23">23</option>
                                                        <option label="24" value="string:24">24</option>
                                                        <option label="25" value="string:25">25</option>
                                                        <option label="26" value="string:26">26</option>
                                                        <option label="27" value="string:27">27</option>
                                                        <option label="28" value="string:28">28</option>
                                                        <option label="29" value="string:29">29</option>
                                                        <option label="30" value="string:30">30</option>
                                                        <option label="31" value="string:31">31</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Gross Monthly Salary</label>
                                                <input id="txtGrossSalary" type="text" name="gross_salary" class="form-control required" placeholder="Enter Your Gross Monthly Salary" onchange="getVals(this, 'gross_salary');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Car Allowance</label>
                                                <input id="txtCarAllowance" type="text" name="car_allowance" class="form-control required" placeholder="Enter Your Car Allowance (incl. in Gross)" onchange="getVals(this, 'car_allowance');" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /step-->
                                <div class="submit step">
                                    <h3 class="main_question"><strong>6/6</strong>Finish</h3>
                                    <div class="summary">
                                         <div class="form-group">
                                                <label>Password</label>
                                                <input class="form-control required" type="password" id="password1" runat="server" name="password1" placeholder="Password" onchange="getVals(this, 'password');" />
                                            </div>
                                            <div class="form-group">
                                                <label>Confirm Password</label>
                                                <input class="form-control required" type="password" id="password2" name="password2" placeholder="Confirm Password" />
                                            </div>
                                            <div id="pass-info" class="clearfix"></div>
                                    </div>
                                </div>
                                <!-- /step-->
                            </div>
                            <!-- /middle-wizard -->
                            <div id="bottom-wizard">
                                <button type="button" name="backward" class="backward">Prev</button>
                                <button type="button" name="forward" class="forward">Next</button>
                               <button type="button" id="SubmitForm" runat="server" onserverclick="SubmitForm_ServerClick" name="process" class="submit">Submit</button>
                           
                                </div>
                            <!-- /bottom-wizard -->
                        </div>
                    </div>
                    <!-- /Wizard container -->
                </div>
                <!-- /content-right-->
            </div>
            <!-- /row-->
        </div>
        <!-- /container-fluid -->

        <div class="cd-overlay-nav">
            <span></span>
        </div>
        <!-- /cd-overlay-nav -->

        <div class="cd-overlay-content">
            <span></span>
        </div>
        <!-- /cd-overlay-content -->

        <a href="#0" class="cd-nav-trigger">Menu<span class="cd-icon"></span></a>
        <!-- /menu button -->

        <!-- Modal terms -->
        <div class="modal fade" id="terms-txt" tabindex="-1" role="dialog" aria-labelledby="termsLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="termsLabel">Terms and conditions</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, in porro albucius qui, in <strong>nec quod novum accumsan</strong>, mei ludus tamquam dolores id. No sit debitis meliore postulant, per ex prompta alterum sanctus, pro ne quod dicunt sensibus.</p>
                        <p>Lorem ipsum dolor sit amet, in porro albucius qui, in nec quod novum accumsan, mei ludus tamquam dolores id. No sit debitis meliore postulant, per ex prompta alterum sanctus, pro ne quod dicunt sensibus. Lorem ipsum dolor sit amet, <strong>in porro albucius qui</strong>, in nec quod novum accumsan, mei ludus tamquam dolores id. No sit debitis meliore postulant, per ex prompta alterum sanctus, pro ne quod dicunt sensibus.</p>
                        <p>Lorem ipsum dolor sit amet, in porro albucius qui, in nec quod novum accumsan, mei ludus tamquam dolores id. No sit debitis meliore postulant, per ex prompta alterum sanctus, pro ne quod dicunt sensibus.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn_1" data-dismiss="modal">Close</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <!-- COMMON SCRIPTS -->
        <script src="wizard/js/jquery-3.2.1.min.js"></script>
        <script src="wizard/js/common_scripts.min.js"></script>
        <script src="wizard/js/velocity.min.js"></script>
        <script src="wizard/js/functions.js"></script>
        <script src="wizard/js/pw_strenght.js"></script>

        <!-- Wizard script -->
        <script src="wizard/js/registration_func.js"></script>
    </form>
</body>
</html>
