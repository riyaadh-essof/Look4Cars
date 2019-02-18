<%@ Page Title="Look4Cars" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="LookForCars.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- Slider-->
        <section  class="py-0">
            <div id="owl-demo" class="owl-carousel owl-theme">
                <div class="item">
                    <div class="background-image-maker gradient gradient-lr"></div>
                    <div class="holder-image">
                        <img src="dist/images/bg-1.png" alt="" class="img-fluid d-none" />
                    </div>
                </div>
                <div class="item">
                    <div class="background-image-maker gradient gradient-lr"></div>
                    <div class="holder-image">
                        <img src="dist/images/slider2.jpg" alt="" class="img-fluid d-none" />
                    </div>
                </div>
                <div class="item">
                    <div class="background-image-maker gradient gradient-lr"></div>
                    <div class="holder-image">
                        <img src="dist/images/slider3.jpg" alt="" class="img-fluid d-none" />
                    </div>
                </div>
            </div>
            <div class="owl-text-overlay">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-xl-5 col-lg-6">
                            <h5 class="text-white text-center">Welcome to the future of Motor Vehicle Shopping</h5>
                            <div class="row">
                                <div class="col-3 pr-0">
                                    <ul class="nav flex-column nav-pills text-uppercase font-weight-bold text-center" id="myTab" role="tablist">
                                        <li class="nav-item mb-1">
                                            <a class="nav-link redial-light rounded-left active" data-toggle="tab" href="#tab1" role="tab" aria-selected="true" aria-expanded="true">Search</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-9 pl-0">
                                    <div class="tab-content bg-white rounded-bottom rounded-right full-block" id="myTabContent2">
                                        <div class="tab-pane fade active show" id="tab1" role="tabpanel" aria-expanded="true">
                                            <div class="card-body p-4">
                                                <ul class="nav nav-tabs border-0 justify-content-center mb-4  flex-column flex-sm-row text-center" id="myTab" role="tablist">
                                                    <li class="nav-item mr-sm-3 mb-3 mb-sm-0">
                                                        <a class="nav-link redial-light rounded active" data-toggle="tab" href="#id1" role="tab" aria-selected="true" aria-expanded="true">By Budget</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link redial-light rounded" data-toggle="tab" href="#id2" role="tab" aria-selected="false" aria-expanded="false">By Make </a>
                                                    </li>
                                                </ul>
                                                <div class="tab-content bg-white rounded-bottom rounded-right" id="myTabContent3">
                                                    <div class="tab-pane fade active show" id="id1" role="tabpanel" aria-expanded="true">
                                                        <form>
                                                            <div class="form-group">
                                                                <select class="form-control">
                                                                    <option value="">Search by Price</option>
									                                <option value="50000">&lt; R50,000</option>
									                                <option value="100000">&lt; R100,000</option>
									                                <option value="150000">&lt; R150,000</option>
									                                <option value="200000">&lt; R200,000</option>
									                                <option value="250000">&lt; R250,000</option>
									                                <option value="300000">&lt; R300,000</option>
									                                <option value="350000">&lt; R350,000</option>
									                                <option value="400000">&lt; R400,000</option>
									                                <option value="450000">&lt; R450,000</option>
									                                <option value="500000">&lt; R500,000</option>
									                                <option value="550000">&lt; R550,000</option>
									                                <option value="600000">&lt; R600,000</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <select class="form-control">
                                                                    <option value="">--- Select City ---</option>
                                                                    <option value="New Delhi">New Delhi</option>
                                                                    <option value="Bangalore">Bangalore</option>
                                                                    <option value="Mumbai">Mumbai</option>
                                                                    <option value="Hyderabad">Hyderabad</option>
                                                                    <option value="Chennai">Chennai</option>
                                                                    <option value="Jaipur">Jaipur</option>
                                                                    <option value="Pune">Pune</option>
                                                                    <option value="Kolkata">Kolkata</option>
                                                                    <option value="Gurgaon">Gurgaon</option>
                                                                    <option value="Ahmedabad">Ahmedabad</option>
                                                                    <option value="Noida">Noida</option>
                                                                    <option value="Chandigarh">Chandigarh</option>
                                                                    <option value="Indore">Indore</option>
                                                                    <option value="Kochi">Kochi</option>
                                                                    <option value="" disabled="">--------------------</option>
                                                                    <option value="Agra">Agra</option>
                                                                    <option value="Ahmedabad">Ahmedabad</option>
                                                                    <option value="Ajmer">Ajmer</option>
                                                                    <option value="Akola">Akola</option>
                                                                    <option value="Alibag">Alibag</option>
                                                                    <option value="Aligarh">Aligarh</option>
                                                                    <option value="Allahabad">Allahabad</option>
                                                                    <option value="Alwar">Alwar</option>
                                                                    <option value="Amalapuram">Amalapuram</option>
                                                                    <option value="Ambala">Ambala</option>
                                                                    <option value="Ambernath">Ambernath</option>
                                                                    <option value="Ambikapur">Ambikapur</option>
                                                                    <option value="Amethi">Amethi</option>
                                                                    <option value="Amravati">Amravati</option>
                                                                    <option value="Amreli">Amreli</option>
                                                                    <option value="Amritsar">Amritsar</option>
                                                                    <option value="Amroha">Amroha</option>
                                                                    <option value="Anantapur">Anantapur</option>
                                                                    <option value="Aurangabad(bh)">Aurangabad(bh)</option>
                                                                    <option value="Avadi">Avadi</option>
                                                                    <option value="Azamgarh">Azamgarh</option>
                                                                    <option value="Baddi">Baddi</option>
                                                                    <option value="Badlapur">Badlapur</option>
                                                                    <option value="Baran">Baran</option>
                                                                    <option value="Barasat">Barasat</option>
                                                                    <option value="Baraut">Baraut</option>
                                                                    <option value="Bardhaman">Bardhaman</option>
                                                                    <option value="Bardoli">Bardoli</option>
                                                                    <option value="Bareilly">Bareilly</option>
                                                                    <option value="Bargarh">Bargarh</option>
                                                                    <option value="Baripada">Baripada</option>
                                                                    <option value="Barmer">Barmer</option>
                                                                    <option value="Barnala">Barnala</option>
                                                                    <option value="Barpeta">Barpeta</option>
                                                                    <option value="Barrackpore">Barrackpore</option>
                                                                    <option value="Barsar">Barsar</option>
                                                                    <option value="Barshi">Barshi</option>
                                                                    <option value="Baruipur">Baruipur</option>
                                                                </select>
                                                            </div>
                                                            <a href="#" class="btn btn-primary btn-block btn-md text-uppercase font-weight-bold">Find Car</a>
                                                        </form>
                                                    </div>
                                                    <div class="tab-pane fade" id="id2" role="tabpanel" aria-expanded="false">
                                                        <form>
                                                            <div class="form-group">
                                                                <select class="form-control rounded">
                                                                    <option>--- Select Model ---</option>
                                                                    <option value="Ford Mustang">Mustang </option>
                                                                    <option value="Volvo XC90 Inscription">Volvo XC90 Inscription</option>
                                                                    <option value="BMW X6 M">BMW X6 M</option>
                                                                    <option value="Aston Martin DB5">Aston Martin DB5</option>
                                                                    <option value="Chevrolet Camaro">Chevrolet Camaro</option>
                                                                    <option value="Honda City i VTEC SV">Honda City i VTEC SV</option>
                                                                    <option value="Volkswagen Jetta">Volkswagen Jetta</option>
                                                                    <option value="Tata Aria Pure 4x2">Tata Aria Pure 4x2</option>.
                                                                    <option value="Skoda Octavia Ambition 1.4 TSI MT">Skoda Octavia Ambition 1.4 TSI MT</option>
                                                                    <option value="Audi A4 35 TDI Premium">Audi A4 35 TDI Premium</option>
                                                                    <option value="Renault Fluence E4 D">Renault Fluence E4 D</option>
                                                                    <option value="Nissan Micra AT">Nissan Micra AT</option>
                                                                    <option value="Mahindra Scorpio S10 AT 2WD">Mahindra Scorpio S10 AT 2WD</option>
                                                                    <option value="Toyota Etios G">Toyota Etios G</option>
                                                                    <option value="Maruti Swift ZXI">Maruti Swift ZXI</option>
                                                                    <option value="Hyundai I20">Hyundai I20</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <select class="form-control rounded">
                                                                    <option value="">--- Select Brand ---</option>
                                                                    <option value="Ford">Ford </option>
                                                                    <option value="Volvo">Volvo</option>
                                                                    <option value="BMW">BMW</option>
                                                                    <option value="Aston">Aston</option>
                                                                    <option value="Chevrolet">Chevrolet</option>
                                                                    <option value="Honda">Honda City i VTEC SV</option>
                                                                    <option value="Volkswagen">Volkswagen</option>
                                                                    <option value="Tata">Tata</option>.
                                                                    <option value="Skoda">Skoda</option>
                                                                    <option value="Audi">Audi</option>
                                                                    <option value="Ranault">Ranault</option>
                                                                    <option value="Nissan">Nissan</option>
                                                                    <option value="Mahindra">Mahindra</option>
                                                                    <option value="Toyota">Toyota</option>
                                                                    <option value="Maruti">Maruti</option>
                                                                    <option value="Hyundai">Hyundai</option>
                                                                </select>
                                                            </div>
                                                            <a href="#" class="btn btn-primary btn-block btn-md text-uppercase font-weight-bold">Find Car</a>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tab2" role="tabpanel" aria-expanded="false">
                                            <div class="card-body p-4">
                                                <ul class="nav nav-tabs border-0 justify-content-center mb-4  flex-column flex-sm-row text-center" id="myTab" role="tablist">
                                                    <li class="nav-item mr-sm-3 mb-3 mb-sm-0">
                                                        <a class="nav-link redial-light rounded active" data-toggle="tab" href="#id3" role="tab" aria-selected="true" aria-expanded="true">By Budget</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link redial-light rounded" data-toggle="tab" href="#id4" role="tab" aria-selected="false" aria-expanded="false">By Brand</a>
                                                    </li>
                                                </ul>
                                                <div class="tab-content bg-white rounded-bottom rounded-right" id="myTabContent3">
                                                    <div class="tab-pane fade active show" id="id3" role="tabpanel" aria-expanded="true">
                                                        <form>
                                                            <div class="form-group">
                                                                <select class="form-control">
                                                                    <option>--- Select Budget ---</option>
                                                                    <option value="0">-Select Budget-</option>
                                                                    <option value="1-lakh-5-lakh">1 Lakh - 5 Lakh</option>
                                                                    <option value="5-lakh-10-lakh">5 Lakh - 10 Lakh</option>
                                                                    <option value="10-lakh-20-lakh">10 Lakh - 20 Lakh</option>
                                                                    <option value="20-lakh-50-lakh">20 Lakh - 50 Lakh</option>
                                                                    <option value="50-lakh-1-crore">50 Lakh - 1 Crore</option>
                                                                    <option value="above-1-crore">Above 1 Crore</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <select class="form-control">
                                                                    <option value="">--- Select City ---</option>
                                                                    <option value="New Delhi">New Delhi</option>
                                                                    <option value="Bangalore">Bangalore</option>
                                                                    <option value="Mumbai">Mumbai</option>
                                                                    <option value="Hyderabad">Hyderabad</option>
                                                                    <option value="Chennai">Chennai</option>
                                                                    <option value="Jaipur">Jaipur</option>
                                                                    <option value="Pune">Pune</option>
                                                                    <option value="Kolkata">Kolkata</option>
                                                                    <option value="Gurgaon">Gurgaon</option>
                                                                    <option value="Ahmedabad">Ahmedabad</option>
                                                                    <option value="Noida">Noida</option>
                                                                    <option value="Chandigarh">Chandigarh</option>
                                                                    <option value="Indore">Indore</option>
                                                                    <option value="Kochi">Kochi</option>
                                                                    <option value="" disabled="">--------------------</option>
                                                                    <option value="Agra">Agra</option>
                                                                    <option value="Ahmedabad">Ahmedabad</option>
                                                                    <option value="Ajmer">Ajmer</option>
                                                                    <option value="Akola">Akola</option>
                                                                    <option value="Alibag">Alibag</option>
                                                                    <option value="Aligarh">Aligarh</option>
                                                                    <option value="Allahabad">Allahabad</option>
                                                                    <option value="Alwar">Alwar</option>
                                                                    <option value="Amalapuram">Amalapuram</option>
                                                                    <option value="Ambala">Ambala</option>
                                                                    <option value="Ambernath">Ambernath</option>
                                                                    <option value="Ambikapur">Ambikapur</option>
                                                                    <option value="Amethi">Amethi</option>
                                                                    <option value="Amravati">Amravati</option>
                                                                    <option value="Amreli">Amreli</option>
                                                                    <option value="Amritsar">Amritsar</option>
                                                                    <option value="Amroha">Amroha</option>
                                                                    <option value="Anantapur">Anantapur</option>
                                                                    <option value="Aurangabad(bh)">Aurangabad(bh)</option>
                                                                    <option value="Avadi">Avadi</option>
                                                                    <option value="Azamgarh">Azamgarh</option>
                                                                    <option value="Baddi">Baddi</option>
                                                                    <option value="Badlapur">Badlapur</option>
                                                                    <option value="Baran">Baran</option>
                                                                    <option value="Barasat">Barasat</option>
                                                                    <option value="Baraut">Baraut</option>
                                                                    <option value="Bardhaman">Bardhaman</option>
                                                                    <option value="Bardoli">Bardoli</option>
                                                                    <option value="Bareilly">Bareilly</option>
                                                                    <option value="Bargarh">Bargarh</option>
                                                                    <option value="Baripada">Baripada</option>
                                                                    <option value="Barmer">Barmer</option>
                                                                    <option value="Barnala">Barnala</option>
                                                                    <option value="Barpeta">Barpeta</option>
                                                                    <option value="Barrackpore">Barrackpore</option>
                                                                    <option value="Barsar">Barsar</option>
                                                                    <option value="Barshi">Barshi</option>
                                                                    <option value="Baruipur">Baruipur</option>
                                                                </select>
                                                            </div>
                                                            <a href="#" class="btn btn-primary btn-block btn-md text-uppercase font-weight-bold">Find Car</a>
                                                        </form>
                                                    </div>
                                                    <div class="tab-pane fade" id="id4" role="tabpanel" aria-expanded="false">
                                                        <form>
                                                            <div class="form-group">
                                                                <select class="form-control">
                                                                    <option>--- Select Budget ---</option>
                                                                    <option value="0">-Select Budget-</option>
                                                                    <option value="1-lakh-5-lakh">1 Lakh - 5 Lakh</option>
                                                                    <option value="5-lakh-10-lakh">5 Lakh - 10 Lakh</option>
                                                                    <option value="10-lakh-20-lakh">10 Lakh - 20 Lakh</option>
                                                                    <option value="20-lakh-50-lakh">20 Lakh - 50 Lakh</option>
                                                                    <option value="50-lakh-1-crore">50 Lakh - 1 Crore</option>
                                                                    <option value="above-1-crore">Above 1 Crore</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <select class="form-control">
                                                                    <option value="">--- Select City ---</option>
                                                                    <option value="New Delhi">New Delhi</option>
                                                                    <option value="Bangalore">Bangalore</option>
                                                                    <option value="Mumbai">Mumbai</option>
                                                                    <option value="Hyderabad">Hyderabad</option>
                                                                    <option value="Chennai">Chennai</option>
                                                                    <option value="Jaipur">Jaipur</option>
                                                                    <option value="Pune">Pune</option>
                                                                    <option value="Kolkata">Kolkata</option>
                                                                    <option value="Gurgaon">Gurgaon</option>
                                                                    <option value="Ahmedabad">Ahmedabad</option>
                                                                    <option value="Noida">Noida</option>
                                                                    <option value="Chandigarh">Chandigarh</option>
                                                                    <option value="Indore">Indore</option>
                                                                    <option value="Kochi">Kochi</option>
                                                                    <option value="" disabled="">--------------------</option>
                                                                    <option value="Agra">Agra</option>
                                                                    <option value="Ahmedabad">Ahmedabad</option>
                                                                    <option value="Ajmer">Ajmer</option>
                                                                    <option value="Akola">Akola</option>
                                                                    <option value="Alibag">Alibag</option>
                                                                    <option value="Aligarh">Aligarh</option>
                                                                    <option value="Allahabad">Allahabad</option>
                                                                    <option value="Alwar">Alwar</option>
                                                                    <option value="Amalapuram">Amalapuram</option>
                                                                    <option value="Ambala">Ambala</option>
                                                                    <option value="Ambernath">Ambernath</option>
                                                                    <option value="Ambikapur">Ambikapur</option>
                                                                    <option value="Amethi">Amethi</option>
                                                                    <option value="Amravati">Amravati</option>
                                                                    <option value="Amreli">Amreli</option>
                                                                    <option value="Amritsar">Amritsar</option>
                                                                    <option value="Amroha">Amroha</option>
                                                                    <option value="Anantapur">Anantapur</option>
                                                                    <option value="Aurangabad(bh)">Aurangabad(bh)</option>
                                                                    <option value="Avadi">Avadi</option>
                                                                    <option value="Azamgarh">Azamgarh</option>
                                                                    <option value="Baddi">Baddi</option>
                                                                    <option value="Badlapur">Badlapur</option>
                                                                    <option value="Baran">Baran</option>
                                                                    <option value="Barasat">Barasat</option>
                                                                    <option value="Baraut">Baraut</option>
                                                                    <option value="Bardhaman">Bardhaman</option>
                                                                    <option value="Bardoli">Bardoli</option>
                                                                    <option value="Bareilly">Bareilly</option>
                                                                    <option value="Bargarh">Bargarh</option>
                                                                    <option value="Baripada">Baripada</option>
                                                                    <option value="Barmer">Barmer</option>
                                                                    <option value="Barnala">Barnala</option>
                                                                    <option value="Barpeta">Barpeta</option>
                                                                    <option value="Barrackpore">Barrackpore</option>
                                                                    <option value="Barsar">Barsar</option>
                                                                    <option value="Barshi">Barshi</option>
                                                                    <option value="Baruipur">Baruipur</option>
                                                                </select>
                                                            </div>
                                                            <a href="#" class="btn btn-primary btn-block btn-md text-uppercase font-weight-bold">Find Car</a>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Slider-->
        <!-- Sell Car -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-12 col-xl-5 mb-5 mb-xl-0 align-self-center">
                        <h1 class="c-font-weight-300 c-line-height-1_2"> Buy <span class="c-primary c-font-weight-700">Hassle Free</span> today</h1>
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
                                        <h5 class="mb-1 text-white"> No pushy salespeople</h5>
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
                                            <a href="#"><h5 class="mb-0 text-white">Ford Vignale Mondeo Turnier Review</h5></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                    </div>
                    <div class="col-12 col-xl-6">
                        <div class="media d-block d-sm-flex mb-4">
                            <a href="#"><img src="dist/images/img9.jpg" alt="" class="img-fluid d-sm-flex mr-sm-3 mb-3 mb-sm-0 border c-brd-light" width="170" /></a>
                            <div class="media-body align-self-center">
                                <ul class="list-inline mb-2 c-primary">
                                    <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                    <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                    <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                    <li class="list-inline-item mr-0"><i class="fa fa-star-half-o"></i></li>
                                    <li class="list-inline-item mr-0"><i class="fa fa-star-o"></i></li>
                                    <li class="list-inline-item mr-0">5/3.5</li>
                                </ul>
                                <a href="#"><h5 class="mb-2">BMW X6 M 2015 Blue Review</h5></a>
                                Nulla consequat massa quis enim. Donec Justo, frilla vel, aliquet nec, vulputate eget, arcu.
                            </div> 
                        </div>
                        <div class="media d-block d-sm-flex mb-4">
                            <a href="#"><img src="dist/images/img10.jpg" alt="" class="img-fluid d-sm-flex mr-sm-3 mb-3 mb-sm-0 border c-brd-light" width="170" /></a>
                            <div class="media-body align-self-center">
                                <ul class="list-inline mb-2 c-primary">
                                    <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                    <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                    <li class="list-inline-item mr-0"><i class="fa fa-star-half-o"></i></li>
                                    <li class="list-inline-item mr-0"><i class="fa fa-star-o"></i></li>
                                    <li class="list-inline-item mr-0"><i class="fa fa-star-o"></i></li>
                                    <li class="list-inline-item mr-0">5/2.5</li>
                                </ul>
                                <a href="#"><h5 class="mb-2">Ford Mustang Car Review</h5></a>
                                Nulla consequat massa quis enim. Donec Justo, frilla vel, aliquet nec, vulputate eget, arcu.
                            </div> 
                        </div>
                        <div class="media d-block d-sm-flex">
                            <a href="#"><img src="dist/images/img11.jpg" alt="" class="img-fluid d-sm-flex mr-sm-3 mb-3 mb-sm-0 border c-brd-light" width="170" /></a>
                            <div class="media-body align-self-center">
                                <ul class="list-inline mb-2 c-primary">
                                    <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                    <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                    <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                    <li class="list-inline-item mr-0"><i class="fa fa-star"></i></li>
                                    <li class="list-inline-item mr-0"><i class="fa fa-star-o"></i></li>
                                    <li class="list-inline-item mr-0">5/4.0</li>
                                </ul>
                                <a href="#"><h5 class="mb-2">Nissan GT R Black Review</h5></a>
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
                        <p>Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi.</p>
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
                            <a href="single-blog.html"><h6 class="mb-2">Ducati Panigale V4 Hits Production</h6></a>
                            <small><strong class="c-dark">John Doe </strong> -  Feb 26, 2017</small>
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
                            <a href="single-blog.html"><h6 class="mb-2">Ducati Panigale V4 Hits Production</h6></a>
                            <small><strong class="c-dark">John Doe </strong> -  Feb 26, 2017</small>
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
                            <a href="single-blog.html"><h6 class="mb-2">Ducati Panigale V4 Hits Production</h6></a>
                            <small><strong class="c-dark">John Doe </strong> -  Feb 26, 2017</small>
                            <p class="mb-0 pt-2">The Ducati flagship is priced at  19,250 (Rs 16.51 lakh), with deliveries starting from Januarya</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End News-->
</asp:Content>

