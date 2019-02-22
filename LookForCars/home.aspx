<%@ Page Title="Look4Cars" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="LookForCars.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <!-- Base MasterSlider style sheet -->
      <link rel="stylesheet" href="dist/js/masterslider/style/masterslider.css" />
      <link rel="stylesheet" href="dist/js/masterslider/skins/default/style.css" />
      <link rel="stylesheet" href="dist/js/masterslider/style/style.css" />
      <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600%7CSource+Sans+Pro:400,400i,600" rel="stylesheet">
      <!-- JavaScripts -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Slider-->
    <section class="py-0">
         <!-- Master Slider -->
      <div class="master-slider ms-skin-default" id="masterslider">
         <!-- slide 1 -->
         <div class="ms-slide slide-1"  data-delay="5">
            <!-- slide background --> 
            <img src="dist/js/masterslider/style/blank.gif" data-src="dist/images/slider1.png" alt="Slide1 background"/>
            <!-- slide thumbnail Image -->
       
            <h3 class="ms-layer title4 font-white font-uppercase font-thin-xs"
               style="color:#d40a01 ;left:120px; top:150px;"
               data-type="text"
               data-delay="1000"
               data-duration="5000"
               data-ease="easeOutExpo"
               data-effect="skewleft(30,80)">1. Find a Car</h3>
            <h3 class="ms-layer title4 font-white font-thin-xs"
               style="left:120px; top:210px;"
               data-type="text"
               data-delay="2500"
               data-duration="2000"
               data-ease="easeOutExpo"
               data-effect="skewleft(30,80)"><span class="font-color font-thin-xs heading-color">2. Finance </span></h3>
            <h3 class="ms-layer title4 font-white"
               style="color:#d40a01;left: 120px; top: 280px;"
               data-type="text"
               data-effect="bottom(45)"
               data-duration="2500"
               data-delay="3000"
               data-ease="easeOutExpo"><span class="font-color font-thin-xs heading-color">3. Have it Delivered </span>
            </h3>
            
         </div>
         <!-- end of slide --> 
         <!-- slide 2 -->
         <div class="ms-slide slide-3" data-delay="5">
            <!-- slide background --> 
            <img src="dist/js/masterslider/style/blank.gif" data-src="dist/images/gallery_14.png" alt="Slide1 background"/>
            <h3 class="ms-layer title4 font-white font-uppercase font-thin-xs"
               style="left:120px; top:150px;"
               data-type="text"
               data-delay="2000"
               data-duration="2000"
               data-ease="easeOutExpo"
               data-effect="skewleft(30,80)">No Pushy Salesman</h3>
            <h3 class="ms-layer title4 font-white font-thin-xs"
               style="left:120px; top:210px;"
               data-type="text"
               data-delay="2500"
               data-duration="2000"
               data-ease="easeOutExpo"
               data-effect="skewleft(30,80)"><span class="font-color font-thin-xs heading-color">7 Day Exchange Plan</span></h3>
            <h5 class="ms-layer text1 font-white"
               style="color:#d40a01; left: 120px; top: 280px;"
               data-type="text"
               data-effect="bottom(45)"
               data-duration="2500"
               data-delay="3000"
               data-ease="easeOutExpo">Guaranteed Customer Satisfaction.
            </h5>
    
         </div>

         <!-- slide 2 -->
         <!-- end of slide --> 
      </div>
      <!-- end Master Slider -->
    </section>
    <!-- End Slider-->
    <!-- Sell Car -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12 col-xl-5 mb-5 mb-xl-0 align-self-center">
                    <h1 class="c-font-weight-300 c-line-height-1_2">Buy <span class="c-primary c-font-weight-700">Hassle Free</span> today</h1>
                    <ul class="list-unstyled service-list text-white mb-0">
                        <li class="list-one mb-3">
                            <div class="media d-block d-sm-flex c-bg-primary p-3 p-sm-2 text-center text-sm-left">
                                <h2 class="rounded-circle bg-white list-icon d-sm-flex mr-sm-4 mb-0 text-center mx-auto mb-3 mb-sm-0"><span class="lnr lnr-magic-wand"></span></h2>
                                <div class="media-body align-self-center">
                                    <h5 class="mb-1 text-white">7 Day Exchange</h5>
                                    Need Description
                                </div>
                            </div>
                        </li>
                        <li class="list-two mb-3">
                            <div class="media d-block d-sm-flex c-bg-primary p-3 p-sm-2 text-center text-sm-left">
                                <h2 class="rounded-circle bg-white list-icon d-sm-flex mr-sm-4 mb-0 text-center mx-auto mb-3 mb-sm-0"><span class="lnr lnr-users"></span></h2>
                                <div class="media-body align-self-center">
                                    <h5 class="mb-1 text-white">No pushy salespeople</h5>
                                    Need Description
                                </div>
                            </div>
                        </li>
                        <li class="list-three mb-3">
                            <div class="media d-block d-sm-flex c-bg-primary p-3 p-sm-2 text-center text-sm-left">
                                <h2 class="rounded-circle bg-white list-icon d-sm-flex mr-sm-4 mb-0 text-center mx-auto mb-3 mb-sm-0"><span class="lnr lnr-alarm"></span></h2>
                                <div class="media-body align-self-center">
                                    <h5 class="mb-1 text-white">Balance of Warranty</h5>
                                    All our vehicles come with a balance of the warranty.
                                </div>
                            </div>
                        </li>


                    </ul>
                </div>
                <div class="col-12 col-xl-6 ml-auto text-center text-xl-right">
                    <img src="dist/images/sell-car.png" alt="" class="img-fluid" />
                </div>
            </div>
        </div>
    </section>
    <!-- End Sell Car -->

    <!-- Work -->
    <section class="image-bg">
        <div class="background-image-maker"></div>
        <div class="holder-image">
            <img src="dist/images/bg3.jpg" alt="" class="img-fluid d-none" />
        </div>
        <div class="black-overlay black1"></div>
        <div class="container">
            <div class="row d-flex justify-content-center text-center">
                <div class="col-12 col-lg-6 pb-3">
                    <h3 class="text-white">How it Works</h3>
                    <p>Look4Cars has completely revolutionized the way South African consumers buy their vehicles by proving them with a simple process that ensures customer satisfaction and guarantees the customer peace of mind. </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-sm-6 col-lg-3 mb-4 mb-lg-0">
                    <div class="process text-center">
                        <div class="block rounded-circle mx-auto c-bg-primary h1 mb-4 text-white c-line-height-2_5 c-font-weight-300 block-arrow position-relative brd-primary">
                            01
                        </div>
                        <h6 class="text-white mb-2">Find a car</h6>
                        Find a Car online at www.look4cars.co.za
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3 mb-4 mb-lg-0">
                    <div class="process text-center">
                        <div class="block rounded-circle mx-auto c-bg-light-blue h1 mb-4 text-white c-line-height-2_5 c-font-weight-300 block-arrow2 position-relative brd-primary">
                            02
                        </div>
                        <h6 class="text-white mb-2">Apply for Finance</h6>
                        Take control of your finance application by tailoring a package that suits you, giving you the best rates.
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-lg-3 mb-4 mb-sm-0">
                    <div class="process text-center">
                        <div class="block rounded-circle mx-auto c-bg-pink h1 mb-4 text-white c-line-height-2_5 c-font-weight-300 block-arrow3 position-relative brd-primary">
                            03
                        </div>
                        <h6 class="text-white mb-2">Choose the best deal</h6>
                        Select desired finance package from our finance hosues.
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="process text-center">
                        <div class="block rounded-circle mx-auto c-bg-green h1 mb-4 text-white c-line-height-2_5 c-font-weight-300 block-arrow4 position-relative brd-primary">
                            04
                        </div>
                        <h6 class="text-white mb-2">Have your vehicle delivered</h6>
                        Once your finance application has been finalised and approved, we will have your vehicle delivered to your door.
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Work -->



    <!-- Car Featured-->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-12 d-flex justify-content pb-4">
                    <h3>Featured Used Cars</h3>
                </div>
            </div>
            <div class="slider multiple-items2" id="divVehicles" runat="server">
            </div>
        </div>
    </section>
    <!-- End Car Featured-->

    <!-- Brand-->
    <section class="pt-0">
        <div class="container">
            <div class="row d-flex justify-content-center text-center">
                <div class="col-12 col-lg-6 pb-3">
                    <h3>Browse Cars by Top Brands</h3>
                    <p>Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi.</p>
                </div>
            </div>
            <div id="owl-client" class="owl-carousel owl-theme">
                <div class="item">
                    <div class="row">
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand1.png" alt="Cadillac" title="Cadillac" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand2.png" alt="Acura" title="Acura" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand3.png" alt="Chevrolet" title="Chevrolet" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand4.png" alt="Bugatti" title="Bugatti" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand5.png" alt="Mazda" title="Mazda" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand6.png" alt="Bentley" title="Bentley" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4 mb-xl-0">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand7.png" alt="Lamborghini" title="Lamborghini" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4 mb-xl-0">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand8.png" alt="Jaguar" title="Jaguar" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4 mb-xl-0">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand9.png" alt="Porsche" title="Porsche" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4 mb-sm-0">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand10.png" alt="Audi" title="Audi" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4 mb-sm-0">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand11.png" alt="Ford" title="Ford" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand12.png" alt="Hyundai" title="Hyundai" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="row">
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand1.png" alt="Cadillac" title="Cadillac" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand2.png" alt="Acura" title="Acura" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand3.png" alt="Chevrolet" title="Chevrolet" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand4.png" alt="Bugatti" title="Bugatti" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand5.png" alt="Mazda" title="Mazda" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand6.png" alt="Bentley" title="Bentley" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4 mb-xl-0">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand7.png" alt="Lamborghini" title="Lamborghini" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4 mb-xl-0">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand8.png" alt="Jaguar" title="Jaguar" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4 mb-xl-0">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand9.png" alt="Porsche" title="Porsche" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4 mb-sm-0">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand10.png" alt="Audi" title="Audi" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4 mb-sm-0">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand11.png" alt="Ford" title="Ford" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand12.png" alt="Hyundai" title="Hyundai" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="row">
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand1.png" alt="Cadillac" title="Cadillac" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand2.png" alt="Acura" title="Acura" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand3.png" alt="Chevrolet" title="Chevrolet" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand4.png" alt="Bugatti" title="Bugatti" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand5.png" alt="Mazda" title="Mazda" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand6.png" alt="Bentley" title="Bentley" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4 mb-xl-0">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand7.png" alt="Lamborghini" title="Lamborghini" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4 mb-xl-0">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand8.png" alt="Jaguar" title="Jaguar" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4 mb-xl-0">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand9.png" alt="Porsche" title="Porsche" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4 mb-sm-0">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand10.png" alt="Audi" title="Audi" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2 mb-4 mb-sm-0">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand11.png" alt="Ford" title="Ford" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4 col-xl-2">
                            <a href="#">
                                <div class="card c-brd-light rounded-0 text-center">
                                    <div class="card-body py-0">
                                        <img src="dist/images/brand12.png" alt="Hyundai" title="Hyundai" class="img-fluid" />
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Brand-->

    <!-- Testimonial-->
    <section class="image-bg">
        <div class="background-image-maker"></div>
        <div class="holder-image">
            <img src="dist/images/bg1.jpg" alt="" class="img-fluid d-none" />
        </div>
        <div class="black-overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-12 d-flex justify-content-center pb-4">
                    <h3 class="text-white mb-0">What Say Our Customers</h3>
                </div>
            </div>
            <div class="slider testimonial text-white">
                <div>
                    <div class="card c-brd-primary c-bg-primary mb-5">
                        <div class="card-body p-4">
                            <ul class="list-inline mb-2">
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                            </ul>
                            <h6 class="text-white">John Deo </h6>
                            <blockquote class="mb-0 font-italic c-line-height-2 position-relative">
                                Maecenas tempus, tellus eget condimntum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.
                            </blockquote>
                            <span class="sprite"></span>
                        </div>
                    </div>
                    <div class="media ml-5">
                        <img src="dist/images/author3.jpg" alt="" class="rounded-circle img-fluid d-flex mr-2" width="50" />
                        <div class="media-body align-self-center">
                            <h6 class="mb-0 text-white">Marry Anderson</h6>
                            <small>Manager of XYZ</small>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="card c-brd-primary c-bg-primary mb-5">
                        <div class="card-body p-4">
                            <ul class="list-inline mb-2">
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                            </ul>
                            <h6 class="text-white">Customer Support </h6>
                            <blockquote class="mb-0 font-italic c-line-height-2 position-relative">
                                Maecenas tempus, tellus eget condimntum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.
                            </blockquote>
                            <span class="sprite"></span>
                        </div>
                    </div>
                    <div class="media ml-5">
                        <img src="dist/images/author1.jpg" alt="" class="rounded-circle img-fluid d-flex mr-2" width="50" />
                        <div class="media-body align-self-center">
                            <h6 class="mb-0 text-white">Alex Anderson</h6>
                            <small>Manager of XYZ</small>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="card c-brd-primary c-bg-primary mb-5">
                        <div class="card-body p-4">
                            <ul class="list-inline mb-2">
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                            </ul>
                            <h6 class="text-white">Customer Support </h6>
                            <blockquote class="mb-0 font-italic c-line-height-2 position-relative">
                                Maecenas tempus, tellus eget condimntum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.
                            </blockquote>
                            <span class="sprite"></span>
                        </div>
                    </div>
                    <div class="media ml-5">
                        <img src="dist/images/author2.jpg" alt="" class="rounded-circle img-fluid d-flex mr-2" width="50" />
                        <div class="media-body align-self-center">
                            <h6 class="mb-0 text-white">Marry Anderson</h6>
                            <small>Manager of XYZ</small>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="card c-brd-primary c-bg-primary mb-5">
                        <div class="card-body p-4">
                            <ul class="list-inline mb-2">
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                            </ul>
                            <h6 class="text-white">John Deo </h6>
                            <blockquote class="mb-0 font-italic c-line-height-2 position-relative">
                                Maecenas tempus, tellus eget condimntum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.
                            </blockquote>
                            <span class="sprite"></span>
                        </div>
                    </div>
                    <div class="media ml-5">
                        <img src="dist/images/author3.jpg" alt="" class="rounded-circle img-fluid d-flex mr-2" width="50" />
                        <div class="media-body align-self-center">
                            <h6 class="mb-0 text-white">Marry Anderson</h6>
                            <small>Manager of XYZ</small>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="card c-brd-primary c-bg-primary mb-5">
                        <div class="card-body p-4">
                            <ul class="list-inline mb-2">
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                            </ul>
                            <h6 class="text-white">Customer Support </h6>
                            <blockquote class="mb-0 font-italic c-line-height-2 position-relative">
                                Maecenas tempus, tellus eget condimntum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.
                            </blockquote>
                            <span class="sprite"></span>
                        </div>
                    </div>
                    <div class="media ml-5">
                        <img src="dist/images/author1.jpg" alt="" class="rounded-circle img-fluid d-flex mr-2" width="50" />
                        <div class="media-body align-self-center">
                            <h6 class="mb-0 text-white">Alex Anderson</h6>
                            <small>Manager of XYZ</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Testimonial-->

    <!-- Review-->
    <section class="bg-light">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-sm-12 pb-4">
                    <h3 class="mb-2">Expert Reviews</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-xl-6 mb-4 mb-xl-0">
                    <div class="review">
                        <div class="card c-brd-light positon-relative gradient gradient-bt">
                            <img src="dist/images/img8.jpg" alt="" class="img-fluid rounded w-96" />
                            <div class="card-body review position-absolute w-100 h-100">
                                <div class="d-table w-100 h-100 ">
                                    <div class="d-table-cell align-bottom">
                                        <ul class="list-inline mb-2 c-primary">
                                            <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item mr-0"><i class="fa fa-star-o"></i></li>
                                            <li class="list-inline-item mr-0">5/3.5</li>
                                        </ul>
                                        <a href="#">
                                            <h5 class="mb-0 text-white">Ford Vignale Mondeo Turnier Review</h5>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-xl-6">
                    <div class="media d-block d-sm-flex mb-4">
                        <a href="#">
                            <img src="dist/images/img9.jpg" alt="" class="img-fluid d-sm-flex mr-sm-3 mb-3 mb-sm-0 border c-brd-light" width="170" /></a>
                        <div class="media-body align-self-center">
                            <ul class="list-inline mb-2 c-primary">
                                <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item mr-0"><i class="fa fa-star-half-o"></i></li>
                                <li class="list-inline-item mr-0"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item mr-0">5/3.5</li>
                            </ul>
                            <a href="#">
                                <h5 class="mb-2">BMW X6 M 2015 Blue Review</h5>
                            </a>
                            Nulla consequat massa quis enim. Donec Justo, frilla vel, aliquet nec, vulputate eget, arcu.
                        </div>
                    </div>
                    <div class="media d-block d-sm-flex mb-4">
                        <a href="#">
                            <img src="dist/images/img10.jpg" alt="" class="img-fluid d-sm-flex mr-sm-3 mb-3 mb-sm-0 border c-brd-light" width="170" /></a>
                        <div class="media-body align-self-center">
                            <ul class="list-inline mb-2 c-primary">
                                <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item mr-0"><i class="fa fa-star-half-o"></i></li>
                                <li class="list-inline-item mr-0"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item mr-0"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item mr-0">5/2.5</li>
                            </ul>
                            <a href="#">
                                <h5 class="mb-2">Ford Mustang Car Review</h5>
                            </a>
                            Nulla consequat massa quis enim. Donec Justo, frilla vel, aliquet nec, vulputate eget, arcu.
                        </div>
                    </div>
                    <div class="media d-block d-sm-flex">
                        <a href="#">
                            <img src="dist/images/img11.jpg" alt="" class="img-fluid d-sm-flex mr-sm-3 mb-3 mb-sm-0 border c-brd-light" width="170" /></a>
                        <div class="media-body align-self-center">
                            <ul class="list-inline mb-2 c-primary">
                                <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item mr-0"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item mr-0">5/4.0</li>
                            </ul>
                            <a href="#">
                                <h5 class="mb-2">Nissan GT R Black Review</h5>
                            </a>
                            Nulla consequat massa quis enim. Donec Justo, frilla vel, aliquet nec, vulputate eget, arcu.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Review-->

    <!-- News-->
    <section>
        <div class="container">
            <div class="row d-flex justify-content-center text-center">
                <div class="col-12 col-lg-6 pb-4">
                    <h3>Latest Auto News</h3>
                    <p>What's hot today?</p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4 mb-md-0">
                    <a href="#">
                        <div class="blog">
                            <img src="dist/images/blog1.jpg" alt="" class="img-fluid rounded">
                        </div>
                    </a>
                    <div class="pt-4">
                        <a href="single-blog.html">
                            <h6 class="mb-2">2020 Supra, Mixed feelings</h6>
                        </a>
                        <small><strong class="c-dark">John Doe </strong>-  Feb 20, 2019</small>
                        <p class="mb-0 pt-2">The Ducati flagship is priced at  19,250 (Rs 16.51 lakh), with deliveries starting from Januarya</p>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4 mb-md-0">
                    <a href="#">
                        <div class="blog">
                            <img src="dist/images/blog2.jpg" alt="" class="img-fluid rounded">
                        </div>
                    </a>
                    <div class="pt-4">
                        <a href="single-blog.html">
                            <h6 class="mb-2">Hot Hatch Haven</h6>
                        </a>
                        <small><strong class="c-dark">John Doe </strong>-  Feb 20, 2019</small>
                        <p class="mb-0 pt-2">The Ducati flagship is priced at  19,250 (Rs 16.51 lakh), with deliveries starting from Januarya</p>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <a href="#">
                        <div class="blog">
                            <img src="dist/images/blog3.jpg" alt="" class="img-fluid rounded">
                        </div>
                    </a>
                    <div class="pt-4">
                        <a href="single-blog.html">
                            <h6 class="mb-2">Ducati Panigale V4 Hits Production</h6>
                        </a>
                        <small><strong class="c-dark">John Doe </strong>-  Feb 26, 2017</small>
                        <p class="mb-0 pt-2">The Ducati flagship is priced at  19,250 (Rs 16.51 lakh), with deliveries starting from Januarya</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End News-->
    <!-- =-=-=-=-=-=-= JQUERY =-=-=-=-=-=-= -->
      <script src="dist/js/jquery.min.js"></script>

      <!-- Jquery Easing -->
      <script src="dist/js/easing.js"></script>
    
      <!-- Jquery Appear Plugin -->
      <script src="dist/js/jquery.appear.min.js"></script>
      
      
      <!-- noUiSlider -->
    <!-- MasterSlider -->
    <script src="dist/js/masterslider/masterslider.min.js"></script>
    <script type="text/javascript">	
         (function($) {
           "use strict";	
         
         
         	    var slider = new MasterSlider();
         
         	    // adds Arrows navigation control to the slider.
         	    slider.control('arrows');
         	  
         	     slider.setup('masterslider' , {
         	         width:1400,    // slider standard width
         	         height:560,   // slider standard height
         	         layout:'fullwidth',
         	         loop:true,
         	         preload:0,
         fillMode:'fill',
         	         instantStartLayers:true,
         	         autoplay:true,
         view:"basic"
         
         	    });
         // add scroll parallax effect
         
         })(jQuery);
         

    </script>
</asp:Content>

