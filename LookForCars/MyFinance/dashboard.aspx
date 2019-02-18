<%@ Page Title="My Finance | Dashboard7" Language="C#" MasterPageFile="~/MyFinance/dashboard.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="LookForCars.MyFinance.dashboard1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="content">
        <div class="">
            <div class="block-header">
                <div class="row">
                    <div class="col-lg-7 col-md-6 col-sm-12">
                        <h2>MyFinance</h2>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ul>
                        <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                    </div>
                    <div class="col-lg-5 col-md-6 col-sm-12">
                        <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row clearfix" id="divPolicies" runat="server">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="card widget_2 big_icon mcard_4">
                            <div class="body">
                                <h6>Pending Application</h6>
                                <h2>VOLKSWAGEN <small class="info">POLO VIVO GP 1.4 CONCEPTLINE 5DR</small></h2>
                                <small>Application Date: 16/02/2019</small>
                                <br />
                                <small>Status: Pending</small>
                                <br />
                                <button class="btn btn-primary mt-4 mb-4">View Application</button>
                                <div class="img-2">
                                    <img src="assets/images/lg/testcar.jpg" class="rounded-circle" alt="profile-image">
                                </div>
                                <div class="progress">
                                    <div class="progress-bar l-amber" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%;"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>

    </section>

</asp:Content>
