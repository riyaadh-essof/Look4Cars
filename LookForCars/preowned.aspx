<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="preowned.aspx.cs" Inherits="LookForCars.preowned" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                        <h1 class="text-white c-font-weight-700">Pre-Owned</h1>
                    </div>
                </div>7
            </div>
        </section>
        <!-- End Page Inner-->
        
        <!-- Breadcrumb -->
        <section class="py-0 h-0">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-10 col-sm-5 col-lg-3 text-center">
                        <ol class="breadcrumb justify-content-center mb-0 c-bg-primary text-white py-3 position-relative">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Pre-Owned</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Breadcrumb -->
        
        <!-- Grid Without Sidebar -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12">
                        <div class="card c-brd-light car-box mb-5">
                            <div class="card-body">
                                <div class="row">
                                    
                                    <div class="col-12 col-sm-6 col-md-4 col-xl-4">
                                        <label class="c-dark">Make</label>
                                        <div class="form-group">
                                            <select class="form-control rounded">
                                                <option value="">Select Make </option>
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
                                    </div> 

                                 
                                    <div class="col-12 col-sm-6 col-md-4 col-xl-2">
                                        <label class="c-dark">Search by Mileage</label>
                                        <div class="form-group">
                                            <select class="form-control rounded">
                                                <option value="">Slect Mileage</option>
                                                <option value="10000">&lt; 10,000km</option>
                                                <option value="20000">&lt; 20,000km</option>
                                                <option value="30000">&lt; 30,000km</option>
                                                <option value="40000">&lt; 40,000km</option>
                                                <option value="50000">&lt; 50,000km</option>
                                                <option value="60000">&lt; 60,000km</option>
                                                <option value="70000">&lt; 70,000km</option>
                                                <option value="80000">&lt; 80,000km</option>
                                                <option value="90000">&lt; 90,000km</option>
                                                <option value="100000">&lt; 100,000km</option>
                                                <option value="120000">&lt; 120,000km</option>
                                                <option value="160000">&lt; 160,000km</option>
                                                <option value="200000">&lt; 200,000km</option>
                                            </select>
                                        </div>
                                    </div> 
                                    <div class="col-12 col-sm-6 col-md-4 col-xl-2">
                                        <label class="c-dark">Fuel Type</label>
                                        <div class="form-group">
                                            <select class="form-control rounded">
                                                <option value="">Select Fuel Type</option>
                                                <option value="Petrol">Petrol</option>
                                                <option value="Diesal">Diesal</option>
                                                <option value="CNG">CNG</option>
                                                <option value="Electric">Electric</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-4 col-xl-4">
                                        <label class="c-dark">Transmission</label>
                                        <div class="form-group">
                                            <select class="form-control rounded">
                                                <option value="">Select Transmission</option>
                                                <option value="Automatic">Automatic</option>
                                                <option value="Manual">Manual</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-4 col-xl-2">
                                        <label class="c-dark">Year Model</label>
                                        <div class="form-group">
                                            <select class="form-control rounded">
                                                <option value="">Select Year</option>
                                                <option value="2018">2018</option>
                                                <option value="2017">2017</option>
                                                <option value="2016">2016</option>
                                                <option value="2015">2015</option>
                                                <option value="2014">2014</option>
                                                <option value="2013">2013</option>
                                                <option value="2012">2012</option>
                                                <option value="2011">2011</option>
                                                <option value="2010">2010</option>
                                                <option value="2009">2009</option>
                                                <option value="2008">2008</option>
                                                <option value="2007">2007</option>
                                                <option value="2006">2006</option>
                                                <option value="2005">2005</option>
                                                <option value="2004">2004</option>
                                                <option value="2003">2003</option>
                                                <option value="2002">2002</option>
                                                <option value="2001">2001</option>
                                                <option value="2000">2000</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-12 col-sm-6 col-md-4 col-xl-2">
                                        <label class="c-dark">Body Type</label>
                                        <div class="form-group">
                                            <select class="form-control rounded">
                                                <option value="">Select Body Type</option>
                                                <option value="Sedan">Sedan</option>
                                                <option value="Hatchback">Hatchback</option>
                                                <option value="SUV">SUV</option>
                                                <option value="Minivan">Minivan</option>
                                                <option value="Pickup">Pickup</option>
                                                <option value="Coupe Car">Coupe Car</option>
                                                <option value="Convertible">Convertible</option>
                                            </select>
                                        </div>
                                    </div> 
                                    <div class="col-12 col-sm-6 col-md-4 col-xl-4">
                                        <label class="c-dark">Budget (R)</label>
                                        <div class="form-group">
                                            <select class="form-control rounded">
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
                                    </div> 
                                    <div class="col-12 col-md-4 col-xl-4">
                                        <label class="mb-4"></label>
                                        <div class="form-group mb-0">
                                            <a href="#" class="btn btn-primary btn-md btn-block text-uppercase">Search</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-12">
                        <div class="row mb-4">
                            <div class="col-12 col-md-5 col-xl-6 align-self-center">
                                <p class="mb-0" id="txtCount" runat="server">9 Vehicles Matching</p>
                            </div>
                            <div class="col-12 col-md-7 col-xl-6 text-right">
                                <div class="d-inline-block pr-md-3 mt-3 mt-md-0">
                                    <div class="selector form-group mb-0 position-relative">
                                        <select class="form-control border-0 pl-4">                                                
                                            <option> Price (High to Low) </option>
                                            <option> Price (Low to High) </option>
                                            <option> Kms (Low to High) </option>
                                            <option> Model (Newest to Oldest) </option>
                                        </select>
                                        <div class="filter position-absolute">
                                            <i class="fa fa-sliders c-primary"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-inline-block mt-3 mt-md-0">
                                    <div class="listing-filter">
                                        <ul class="nav nav-pills justify-content-md-end mb-0" id="myTab" role="tablist">
                                            <li class="nav-item mr-2">
                                                <a class="nav-link redial-light rounded" data-toggle="tab" href="#id1" role="tab" aria-selected="true" aria-expanded="true"><i class="fa fa-th-list"></i></a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link redial-light rounded active" data-toggle="tab" href="#id2" role="tab" aria-selected="false" aria-expanded="false"><i class="fa fa-th"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row" id="divCars" runat="server">
                                                      
                        </div> 
                        <div class="row mt-4">
                            <div class="col-12 col-sm-12">
                                <ul class="pagination mb-0 text-center text-uppercase justify-content-center">
                                    <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-left pr-1"></i> Prev</a></li>
                                    <li class="page-item d-none d-sm-inline-block"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item d-none d-sm-inline-block active"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item d-none d-sm-inline-block"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item"><a class="page-link" href="#"> Next <i class="fa fa-angle-right pl-1"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Grid Without Sidebar -->
</asp:Content>

