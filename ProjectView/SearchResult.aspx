﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HomeUser_Masterpage.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="ProjectView.SearchResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <li class="active"><a href="index.aspx">Home</a></li>
    <li><a href="Location.aspx">Location</a></li>
    <li><a href="ContactPage.aspx">Contact</a></li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Section Background -->
    <section class="section-background">
        <div class="container">
            <h2 class="page-header">our Location
            </h2>
            <ol class="breadcrumb">
                <li><a href="index.aspx">Home</a></li>
                <li class="active">&nbsp;Locations</li>
            </ol>
        </div>
        <!-- /.container -->
    </section>
    <!-- /.section-background -->


    <section class="features section-wrapper">


        <div class="container">
            <h2 class="section-title">Features
                           <asp:Label ID="lblten" runat="server" Text="Label"></asp:Label>
            </h2>
            <p class="section-subtitle">
                Lorem Ipsum is simply dummy text of the industry.
		
            </p>
            <asp:Repeater ID="theLocation" runat="server" OnItemCommand="theLocation_ItemCommand">
                <ItemTemplate>
                    <div class="row custom-table">
                        <div class="grid-50 table-cell">
                            <p class="features-details">
                                <h2 style="color: #4800ff">
                                    <asp:Label runat="server" ID="nameLocation" Text='<%#Eval("NameLocation") %>'></asp:Label>
                                    <asp:Label hidden="true" runat="server" ID="Label1" Text='<%#Eval("LocationID") %>'></asp:Label>
                                    <asp:Label hidden="true" runat="server" ID="Label2" Text='<%#Eval("Viewer") %>'></asp:Label>
                                    <asp:Label hidden="true" runat="server" ID="Label3" Text='<%#Eval("Rate") %>'></asp:Label>
                                </h2>
                            </p>
                            <ul class="features-list">
                                <li>
                                    <asp:Label runat="server" Text='<%#Eval("LocationContent").ToString().Substring(0,Math.Min(200,Eval("LocationContent").ToString().Length)) %>'></asp:Label>
                                </li>
                                <li>
                                    <asp:LinkButton ID="lbt_sua" CommandName="chinhsua" runat="server">Lấy tên</asp:LinkButton>
                                </li>
                                <%--<li></li>--%>
                            </ul>

                        </div>

                         <div class="grid-50 table-cell">
                            <img src='<%#Eval("PicUrl") %>' alt="" class="features-img img-responsive _pos-abs">
                        </div>
                    </div>
                    <div style="background: #0026ff; width: 80%; height: 1px; margin-left: 90px">
                        &nbsp;
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <%--phan trang--%>


            <div style="overflow: hidden;">

                <asp:Repeater ID="rptPages" runat="server"
                    OnItemCommand="rptPages_ItemCommand1">

                    <ItemTemplate>

                        <asp:LinkButton ID="btnPage"
                            Style="padding: 1px 3px; margin: 1px; background: #ccc; border: solid 1px #666; font: 8pt tahoma;"
                            CommandName="Page" CommandArgument="<%# Container.DataItem %>"
                            runat="server"><%# Container.DataItem %>

                        </asp:LinkButton>

                    </ItemTemplate>

                </asp:Repeater>

            </div>

        </div>

        </div>
        <!-- /.row -->
        <!-- /.container -->
    </section>
    <!-- /.features -->



    <section class="additional-services section-wrapper">
        <div class="container">
            <h2 class="section-title">Additional services
            </h2>
            <p class="section-subtitle">
                Lorem Ipsum is simply dummy text of the industry.
		
            </p>
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="custom-table">
                        <img src="assets/images/add-srvc-1.png" alt="" class="add-srvc-img">
                        <div class="add-srvc-detail">
                            <h4 class="add-srvc-heading">Photography
                            </h4>
                            <p class="add-srvc">
                                Etiam pharetra ut ante eget ehy efficitur. Nullam quis felis at nunc vehicula sollicitudin euliquam quis felis atblan dit.
						
                            </p>
                        </div>
                        <!-- /.add-srvc-detail -->
                    </div>
                    <!-- /.custom-table -->
                </div>
                <!-- /.col-md-4 col-sm-6 -->

                <div class="col-md-4 col-sm-6">
                    <div class="custom-table">
                        <img src="assets/images/add-srvc-2.png" alt="" class="add-srvc-img">
                        <div class="add-srvc-detail">
                            <h4 class="add-srvc-heading">Cycling
                            </h4>
                            <p class="add-srvc">
                                Etiam pharetra ut ante eget ehy efficitur. Nullam quis felis at nunc vehicula sollicitudin euliquam quis felis atblan dit.
						
                            </p>
                        </div>
                        <!-- /.add-srvc-detail -->
                    </div>
                    <!-- /.custom-table -->
                </div>
                <!-- /.col-md-4 col-sm-6 -->

                <div class="col-md-4 col-sm-6">
                    <div class="custom-table">
                        <img src="assets/images/add-srvc-3.png" alt="" class="add-srvc-img">
                        <div class="add-srvc-detail">
                            <h4 class="add-srvc-heading">Waking
                            </h4>
                            <p class="add-srvc">
                                Etiam pharetra ut ante eget ehy efficitur. Nullam quis felis at nunc vehicula sollicitudin euliquam quis felis atblan dit.
						
                            </p>
                        </div>
                        <!-- /.add-srvc-detail -->
                    </div>
                    <!-- /.custom-table -->
                </div>
                <!-- /.col-md-4 col-sm-6 -->

                <div class="col-md-4 col-sm-6">
                    <div class="custom-table">
                        <img src="assets/images/add-srvc-4.png" alt="" class="add-srvc-img">
                        <div class="add-srvc-detail">
                            <h4 class="add-srvc-heading">Skiing
                            </h4>
                            <p class="add-srvc">
                                Etiam pharetra ut ante eget ehy efficitur. Nullam quis felis at nunc vehicula sollicitudin euliquam quis felis atblan dit.
						
                            </p>
                        </div>
                        <!-- /.add-srvc-detail -->
                    </div>
                    <!-- /.custom-table -->
                </div>
                <!-- /.col-md-4 col-sm-6 -->

                <div class="col-md-4 col-sm-6">
                    <div class="custom-table">
                        <img src="assets/images/add-srvc-5.png" alt="" class="add-srvc-img">
                        <div class="add-srvc-detail">
                            <h4 class="add-srvc-heading">Sea beach
                            </h4>
                            <p class="add-srvc">
                                Etiam pharetra ut ante eget ehy efficitur. Nullam quis felis at nunc vehicula sollicitudin euliquam quis felis atblan dit.
						
                            </p>
                        </div>
                        <!-- /.add-srvc-detail -->
                    </div>
                    <!-- /.custom-table -->
                </div>
                <!-- /.col-md-4 col-sm-6 -->

                <div class="col-md-4 col-sm-6">
                    <div class="custom-table">
                        <img src="assets/images/add-srvc-6.png" alt="" class="add-srvc-img">
                        <div class="add-srvc-detail">
                            <h4 class="add-srvc-heading">Hill tracking
                            </h4>
                            <p class="add-srvc">
                                Etiam pharetra ut ante eget ehy efficitur. Nullam quis felis at nunc vehicula sollicitudin euliquam quis felis atblan dit.
						
                            </p>
                        </div>
                        <!-- /.add-srvc-detail -->
                    </div>
                    <!-- /.custom-table -->
                </div>
                <!-- /.col-md-4 col-sm-6 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>
    <!-- /.Additional-services -->


    <section class="section-wrapper services-owl">
        <div class="container">
            <div class="owl-carousel services-owl-carousel row">
                <div class="item col-sm-8 col-sm-offset-2">
                    <div class="item-name">
                        David Martin
				
                    </div>
                    <p class="item-detail">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos omnis, architecto ipsam laudantium corporis eveniet blanditiis eaque ab ex eum, provident culpa tenetur adipisci libero aliquid quia dolores deleniti illo.
				
                    </p>
                </div>
                <!-- /.item -->

                <div class="item col-sm-8 col-sm-offset-2">
                    <div class="item-name">
                        David Martin
				
                    </div>
                    <p class="item-detail">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos omnis, architecto ipsam laudantium corporis eveniet blanditiis eaque ab ex eum, provident culpa tenetur adipisci libero aliquid quia dolores deleniti illo.
				
                    </p>
                </div>
                <!-- /.item -->

                <div class="item col-sm-8 col-sm-offset-2">
                    <div class="item-name">
                        David Martin
				
                    </div>
                    <p class="item-detail">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos omnis, architecto ipsam laudantium corporis eveniet blanditiis eaque ab ex eum, provident culpa tenetur adipisci libero aliquid quia dolores deleniti illo.
				
                    </p>
                </div>
                <!-- /.item -->
            </div>
            <!-- /.services-owl-carousel -->
        </div>
        <!-- /.container -->
    </section>
    <!-- /.services-owl -->


    <div class="section-wrapper sponsor">
        <div class="container">
            <div class="owl-carousel sponsor-carousel">
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-1.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-2.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-3.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-4.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-5.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-6.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-1.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-2.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-3.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-4.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-5.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-6.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-1.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-2.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-3.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-4.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-5.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
                <div class="item">
                    <a href="#">
                        <img src="assets/images/sp-6.png" alt="sponsor-brand" class="img-responsive sponsor-item">
                    </a>
                </div>
            </div>
            <!-- /.owl-carousel -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /.sponsor -->

    <div class="subscribe section-wrapper">
        <a class="brand-logo" href="Index.aspx" title="HOME"><i class="ion-paper-airplane"></i>VIETNAM <span>TOURISM</span></a>
        <p class="subscribe-now">
            Subscribe to our Newsletter
	
        </p>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">
                    <div class="input-group">
                        <input type="email" class="form-control border-radius" placeholder="Email address">
                        <span class="input-group-btn">
                            <button class="btn btn-default border-radius custom-sub-btn" type="button">DONE</button>
                        </span>
                    </div>
                    <!-- /input-group -->
                </div>
            </div>
        </div>



        <ul class="social-icon">
            <li><a href="#"><i class="ion-social-twitter"></i></a></li>
            <li><a href="#"><i class="ion-social-facebook"></i></a></li>
            <li><a href="#"><i class="ion-social-linkedin-outline"></i></a></li>
            <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
        </ul>
    </div>
    <!-- /.subscribe -->


    <footer>
        <div class="container">
            <div class="row">
                <div class="col-xs-4">
                    <div class="text-left">
                        &copy; Copyright 2015
				
                    </div>
                </div>
                <div class="col-xs-4">
                    Theme by MANHDNGC00490
                </div>
                <div class="col-xs-4">
                    <!-- <div class="top">
						<a href="#header">
							<i class="ion-arrow-up-b"></i>
						</a>
					</div> -->
                </div>
            </div>
        </div>
    </footer>

</asp:Content>
