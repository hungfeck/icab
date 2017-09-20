﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Icab.index" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>iCab | Ứng dụng di động hỗ trợ nội bộ VTVCab</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
    
    <!-- Bootstrap 3.3.2 -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    
    <link rel="stylesheet" href="assets/css/animate.css" /> 
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/css/slick.css" />
    <link rel="stylesheet" href="assets/js/rs-plugin/css/settings.css" />

    <link rel="stylesheet" href="assets/css/styles.css" />


    <script type="text/javascript" src="assets/js/modernizr.custom.32033.js"></script>
</head>
<body>
    <div class="pre-loader">
        <div class="load-con">
            <img src="assets/img/freeze/logo.png" class="animated fadeInDown" alt=""/>
            <div class="spinner">
              <div class="bounce1"></div>
              <div class="bounce2"></div>
              <div class="bounce3"></div>
            </div>
        </div>
    </div>
    <header>
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="fa fa-bars fa-lg" style="color: #fff;"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">
                        <img src="assets/img/freeze/logo.png" alt="" class="logo"/>
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                    <ul class="nav navbar-nav navbar-right">
						<li><a href="#">Trang chủ</a></li>
                        <li class="dropdown">
							<a href="#" style="cursor: pointer;"  class="dropdown-toggle" data-toggle="dropdown">Chức năng<span class="caret" style="margin-left: 5px;  "></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#features">Giới thiệu</a></li>
								<li class="dropdown-submenu lilv2">
									<a  class="test" style="cursor: pointer;">Kỹ thuật viên<span style="margin-left: 15px; " class="menudown"><i class="fa fa-caret-right" aria-hidden="true"></i></span></a> 
									<ul class="dropdown-menu ullv2" role="menu">
										<li><a class="nodata">KTV lắp đặt</a></li>
										<li><a class="test1" target="_blank " href="ktvbaohanh/index.aspx">KTV bảo hành</a></li>
									</ul> 
								</li>
								<li><a class="test1" target="_blank" href="../sale/index.aspx">Nhân viên kinh doanh</a></li>
								<li><a class="test1 nodata">Người đi thu</a></li>
								<li class="dropdown-submenu lilv2">
									<a class="test" style="cursor: pointer;">Lãnh đạo<span style="margin-left: 15px; " class="menudown"><i class="fa fa-caret-right" aria-hidden="true"></i></span></a>
									<ul class="dropdown-menu ullv2" role="menu">
										<li><a class="test1 nodata" style="cursor: pointer;">Các phòng ban</a></li>
										<li><a class="test1 nodata">Chi nhánh</a></li>
									</ul>
								</li>
							</ul>
                        </li>
                        <li>
                            <a href="#"><span class="showlogin">Tải tài liệu</span></a>
                        </li>
                        <li>
							<a href="#"><span class="location">Quản lý vị trí</span></a>
                        </li>
                        <li>
							<a href="#support">Liên hệ</a>
                        </li>
                    </ul>
						
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-->
        </nav>
        <!--RevSlider-->
        <div class="tp-banner-container">
            <div class="tp-banner" >
                <ul>
                    <!-- SLIDE  -->
                    <li data-transition="fade" data-slotamount="7" data-masterspeed="1500" >
                        <!-- MAIN IMAGE -->
                        <img src="assets/img/transparent.png"  alt="slidebg1"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat"/>
                        <!-- LAYERS -->
                        <!-- LAYER NR. 1 -->
                        <div class="tp-caption lfl fadeout"
                            data-x="left"
                            data-y="bottom"
                            data-hoffset="30"
                            data-voffset="0"
                            data-speed="500"
                            data-start="700"
                            data-easing="Power4.easeOut">
                            <img src="assets/img/freeze/Slides/hand-freeze.png" alt=""/>
                        </div>

                        <!-- <div class="tp-caption lfl fadeout visible-xs" -->
                            <!-- data-x="left" -->
                            <!-- data-y="center" -->
                            <!-- data-hoffset="700" -->
                            <!-- data-voffset="0" -->
                            <!-- data-speed="500" -->
                            <!-- data-start="700" -->
                            <!-- data-easing="Power4.easeOut"> -->
                            <!-- <img src="assets/img/freeze/iphone-freeze.png" alt=""> -->
                        <!-- </div> -->

                        <div class="tp-caption large_white_bold sft" data-x="550" data-y="center" data-hoffset="0" data-voffset="-80" data-speed="500" data-start="1200" data-easing="Power4.easeOut">
                            <h1 style="color:#fff; font-size: 3vw ">Ứng dụng iCab</h1>
                        </div>
                            <div class="tp-caption medium_white_light sfb" data-x="550" data-y="center" data-hoffset="0" data-voffset="0" data-speed="1000" data-start="1500" data-easing="Power4.easeOut" style="white-space: normal">
                            <h1 style="color:#fff; font-size: 2.4vw">Người bạn đồng hành trong công việc</h1>
                        </div>

                        <div class="tp-caption sfb hidden-xs loadmore" data-x="550" data-y="center" data-hoffset="0" data-voffset="85" data-speed="1000" data-start="1700" data-easing="Power4.easeOut">
                            <a href="#about" class="btn btn-primary inverse btn-lg" style="font-size: 1.1vw;">Tìm hiểu thêm</a>
                        </div>
                        <div class="tp-caption sfr hidden-xs download" data-x="730" data-y="center" data-hoffset="0" data-voffset="85" data-speed="1500" data-start="1900" data-easing="Power4.easeOut">
                            <a href="#getApp" class="btn btn-primary inverse btn-lg" style="font-size: 1.1vw">Tải ứng dụng</a>
                        </div>

                    </li>
                    <!-- SLIDE 2 -->

                    
                </ul>
            </div>
        </div>
    </header>
    <div class="wrapper">
        <form role="form" runat="server">
        

            <section id="about">
                <div class="container">
                
                    <div class="section-heading scrollpoint sp-effect3">
                        <h1>Những con số biết nói về iCab</h1>
                        <div class="divider"></div>
                        <p>Trong suốt quá trình phát triển, iCab đã đạt được những thành công nhất định!</p>
                    </div>

                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="about-item scrollpoint sp-effect2">
                                <i class="fa fa-download fa-2x"></i>
                                <h3>Tổng lượt cài đặt</h3>
                                <p>Tính từ lúc ra mắt ứng dụng vào tháng 07/2016, hiện tại iCab đã có hơn <b>3000</b> lượt tải về</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6" >
                            <div class="about-item scrollpoint sp-effect5">
                                <i class="fa fa-mobile fa-2x"></i>
                                <h3>Hệ điều hành sử dụng</h3>
                                <p>Hiện tại iCab được phát triển trên 2 hệ điều hành Android và iOS với nhiều loại thiết bị khác nhau</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6" >
                            <div class="about-item scrollpoint sp-effect5">
                                <i class="fa fa-users fa-2x"></i>
                                <h3>Người sử dụng</h3>
                                <p>Tổng số người sử dụng trên hai hệ điều hành là <b><span class="count_user"></span> người sử dụng</b>. Con số này vẫn đang tăng!</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6" >
                            <div class="about-item scrollpoint sp-effect1">
                                <i class="fa fa-sliders fa-2x"></i>
                                <h3>Chức năng sử dụng</h3>
                                <p>iCab hiện đang có <b>20 chức năng</b> cho các đối tượng khác nhau như KTV, Sales, Người đi thu</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
              <section id="reviews">
                <div class="container">
                    <div class="section-heading inverse scrollpoint sp-effect3">
                        <h1>Đánh giá</h1>
                        <div class="divider"></div>
                        <p>Những ý kiến đánh giá, góp ý của người dùng về iCab</p>
                    </div>
                    <div class="row">
                        <div class="col-md-10 col-md-push-1 scrollpoint sp-effect3">
                            <div class="review-filtering">
                                <div class="review">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <div class="review-person">
                                                <img src="/assets/img/avatar/avatar1.png" alt="avatar" class="img-responsive"/>
                                            </div>
                                        </div>
                                        <div class="col-md-10">
                                            <div class="review-comment"  >
                                                <h3>“iCab đã hỗ trợ tôi rất nhiều trong công việc. Hy vọng sẽ còn nhiều chức năng mới nữa!”</h3>
                                                <p>
                                                    - Trần Đại Dương - KTV chi nhánh 3
                                                    <span>
                                                        <i class="fa fa-star fa-lg"></i>
                                                        <i class="fa fa-star fa-lg"></i>
                                                        <i class="fa fa-star fa-lg"></i>
                                                        <i class="fa fa-star fa-lg"></i>
                                                        <i class="fa fa-star fa-lg"></i>
                                                    </span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="review rollitin">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <div class="review-person">
                                                <img src="/assets/img/avatar/avatar2.png" alt="avatar" class="img-responsive"/>
                                            </div>
                                        </div>
                                        <div class="col-md-10">
                                            <div class="review-comment">
                                                <h3>“Thật tuyệt vời, mọi công việc Bảo hành & Lắp đặt giờ đây đã có thể xử lý trên iCab”</h3>
                                                <p>
                                                    - Nguyễn Công Sơn - KTV Chi nhánh 2
                                                    <span>
                                                        <i class="fa fa-star fa-lg"></i>
                                                        <i class="fa fa-star fa-lg"></i>
                                                        <i class="fa fa-star fa-lg"></i>
                                                        <i class="fa fa-star fa-lg"></i>
                                                        <i class="fa fa-star fa-lg"></i>
                                                    </span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="review rollitin">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <div class="review-person">
                                                <img src="/assets/img/avatar/avatar3.png" alt="avatar" class="img-responsive"/>
                                            </div>
                                        </div>
                                        <div class="col-md-10">
                                            <div class="review-comment">
                                                <h3>“Ứng dụng iCab thật hữu ích, bộ phận thông tin chi nhánh có thể dễ dàng làm việc với KTV thông qua iCab”</h3>
                                                <p>
                                                    - Huỳnh Thanh Thanh - Thông tin CN Bình Thuận
                                                    <span>
                                                        <i class="fa fa-star fa-lg"></i>
                                                        <i class="fa fa-star fa-lg"></i>
                                                        <i class="fa fa-star fa-lg"></i>
                                                        <i class="fa fa-star fa-lg"></i>
                                                        <i class="fa fa-star fa-lg"></i>
                                                    </span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section id="features">
                <div class="container">
                    <div class="section-heading scrollpoint sp-effect3">
                        <h1>iCab có gì?</h1>
                        <div class="divider"></div>
                        <p>iCab hiện tại đang hỗ trợ các đối tượng sử dụng như KTV, người đi thu, Sales, Lãnh đạo</p>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-sm-4 scrollpoint sp-effect1">
                            <div class="media text-right feature">
                                <a class="pull-right" href="#">
                                    <i class="fa fa-user fa-2x"></i>
                                </a>
                                <div class="media-body">
                                    <h3 class="media-heading">Thông tin người dùng</h3>
                                    Thông tin tài khoản, đổi mật khẩu...
                                </div>
                            </div>
                            <div class="media text-right feature">
                                <a class="pull-right" href="#">
                                    <i class="fa fa-cogs fa-2x"></i>
                                </a>
                                <div class="media-body">
                                    <h3 class="media-heading">Nghiệm thu yêu cầu BH</h3>
                                    Nghiệm thu toàn phần yêu cầu bảo hành
                                </div>
                            </div>
                            <div class="media text-right feature">
                                <a class="pull-right" href="#">
                                    <i class="fa fa-power-off fa-2x"></i>
                                </a>
                                <div class="media-body">
                                    <h3 class="media-heading">Kích hoạt dịch vụ SDHD</h3>
                                    Kích hoạt trả trước, trả sau và gia hạn
                                </div>
                            </div>
                            <div class="media text-right feature">
                                <a class="pull-right" href="#">
                                    <i class="fa fa-search fa-2x"></i>
                                </a>
                                <div class="media-body">
                                    <h3 class="media-heading">Tra cứu thông tin KH</h3>
                                    Cung cấp nhiều thông tin hữu ích về KH
                                </div>
                            </div>
                            <div class="media text-right feature">
                                <a class="pull-right" href="#">
                                    <i class="fa fa-calendar fa-2x"></i>
                                </a>
                                <div class="media-body">
                                    <h3 class="media-heading">Các tiện ích</h3>
                                    Xử lý lỗi với chức năng pairing, mở mã...
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4" >
                            <img src="assets/img/freeze/iphone-freeze.png" class="img-responsive scrollpoint sp-effect5" alt=""/>
                        </div>
                        <div class="col-md-4 col-sm-4 scrollpoint sp-effect2">
                            <div class="media feature">
                                <a class="pull-left" href="#">
                                    <i class="fa fa-map-marker fa-2x"></i>
                                </a>
                                <div class="media-body">
                                    <h3 class="media-heading">Vị trí khách hàng</h3>
                                    Hỗ trợ tiếp cận KH nhanh & chính xác nhất
                                </div>
                            </div>
                            <div class="media feature">
                                <a class="pull-left" href="#">
                                    <i class="fa fa-tasks fa-2x" ></i>
                                </a>
                                <div class="media-body">
                                    <h3 class="media-heading">Quản lý công việc</h3>
                                    Lãnh đạo có thể quản lý công việc KTV
                                </div>
                            </div>
                            <div class="media feature">
                                <a class="pull-left" href="#">
                                    <i class="fa fa-file fa-2x"></i>
                                </a>
                                <div class="media-body">
                                    <h3 class="media-heading">Gạch nợ khi thu cước</h3>
                                    Dễ dàng gạch nợ hoá đơn khi đi thu cước
                                </div>
                            </div>
                            <div class="media feature">
                                <a class="pull-left" href="#">
                                    <i class="fa fa-users fa-2x"></i>
                                </a>
                                <div class="media-body">
                                     <h3 class="media-heading">Giới thiệu khách hàng</h3>
                                    Giới thiệu KH sử dụng dịch vụ trên iCab
                                </div>
                            </div>
                            <div class="media feature">
                                <a class="pull-left" href="#">
                                    <i class="fa fa-plus fa-2x"></i>
                                </a>
                                <div class="media-body">
                                    <h3 class="media-heading">Và còn nhiều hơn nữa</h3>
                                    iCab thường xuyên cập nhật chức năng
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section id="getApp">
                <div class="container-fluid">
                    <div class="section-heading inverse scrollpoint sp-effect3">
                        <h1>Tải ứng dụng</h1>
                        <div class="divider"></div>
                        <p>Hãy bắt đầu sử dụng iCab bằng cách tải ứng dụng về điện thoại của bạn!</p>
                    </div>
                
                    <div class="row">
                        <div class="col-md-12">
                            <div class="hanging-phone scrollpoint sp-effect2 hidden-xs">
                                <img src="assets/img/freeze/freeze-angled2.png" alt="Bản đồ vị trí" class="imgMap"/>
                            </div>
                            <div class="platforms">
                                <a href="https://play.google.com/store/apps/details?id=com.vtvcab.app.vtvcabapp&hl=en" class="btn btn-primary inverse scrollpoint sp-effect1 btnDownload" style="width: 200px !important;">
                                    <i class="fa fa-android fa-3x pull-left"></i>
                                    <span>Tải ứng dụng</span><br/>
                                    <b>Android</b>
                                </a>
							    <a href="itms-services://?action=download-manifest&url=https://id.vtvcab.vn/icab/manifest.plist" class="btn btn-primary inverse scrollpoint sp-effect2 btnDownload showpopup" style="width: 200px !important;">
								    <i class="fa fa-apple fa-3x pull-left"></i>
								    <span>Tải ứng dụng</span><br/>
								    <b>Apple IOS</b>
							    </a>
                                <a href="https://www.youtube.com/watch?v=CnzHsP-OglY&feature=youtu.be" class="btn btn-primary inverse scrollpoint sp-effect2 btnDownload" style="width: 200px !important;">
								    <i class="fa fa-play-circle fa-3x pull-left"></i>
								    <span>Hướng dẫn cài </span><br/>
								    <b>đặt IOS</b>
							    </a>
							    <div class="wrapper_popup" id="wrapper_popup">
								    <div class="popup">
									    <span class="close_popup"><i class="fa fa-times" aria-hidden="true"></i></span>
									    <h2>Bạn vui lòng truy cập bằng thiết bị di động để sử dụng tính năng này</h2>
								    </div>
							    </div>

                                <div class="module form-module wrapper_login" id="wrapper_login">
                                    <div class="login">
                                        <div class="toggle">
                                            <i class="fa fa-times fa-window-close"></i>
                                        </div>
                                        <div class="form">
                                        <h2>Đăng nhập để sử dụng chức năng này</h2>
                                        <h5>Sử dụng tài khoản CRM hoặc ICAB để tải tài liệu</h5>
                                        <asp:TextBox ID="txtUsername" CssClass="username" placeholder="Tài khoản" runat="server"></asp:TextBox>
                                        <asp:TextBox  ID="txtPassword" CssClass="password" placeholder="Mật khẩu" runat="server" TextMode="Password"></asp:TextBox>
                                        <%--<input type="text" placeholder="Tài khoản" class="username"/>--%>
                                        <%--<input type="password" placeholder="Mật khẩu" class="password"/>--%>
                                        <span class="loginfail" style="color:#D80027; padding-bottom: 10px; display: block;">Sai tài khoản hoặc mật khẩu</span>
                                        <asp:Button ID="btn_login" Text="Đăng nhập" style="margin:0px;" CssClass="btn_login" runat="server" OnClick="btn_login_Click"/>
                                        <%--<button class="btn_login">Đăng nhập</button>--%>
                                    
                                        </div>
                                    </div><!--.login-->
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </section>

            <section id="support" class="doublediagonal">
                <div class="container">
                    <div class="section-heading scrollpoint sp-effect3">
                        <h1>Liên hệ</h1>
                        <div class="divider"></div>
                        <p>Mọi thắc mắc, góp ý cải thiện ứng dụng vui lòng liên hệ với TT CNTT!</p>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-8 col-sm-8 scrollpoint sp-effect1">
                                    <%--<form role="form" runat="server">--%>
                                        <div class="form-group">
                                            <asp:TextBox ID="txt_name" CssClass="form-control txt_name" placeholder="Họ tên của bạn" runat="server"></asp:TextBox> 
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txt_phone" CssClass="form-control txt_phone" placeholder="Số điện thoại" runat="server"> </asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox id="txt_content" CssClass="form-control txt_content" TextMode="multiline" Columns="30" Rows="10" placeholder="Nội dung" runat="server" ></asp:TextBox>
                                        </div>
                                            <input type="button" class="btn btn-primary btn-lg btn_Sendemail" value="Gửi thư" onclick="btn_Sendemail_Click"/> 
                                           <%--<asp:Button ID="btn_Sendemail" runat="server" CssClass="btn btn-primary btn-lg btn_Sendemail" Text="Gửi thư" OnClick="btn_Sendemail_Click" />--%>
                                    <%--</form>--%>
                                </div>
                                <div class="col-md-4 col-sm-4 contact-details scrollpoint sp-effect2">
                                    <div class="media">
                                        <a class="pull-left" href="#" >
                                            <i class="fa fa-map-marker fa-2x"></i>
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading">TT CNTT, tầng 5, toà nhà VTV, số 3/84 Ngọc Khánh, Ba Đình, Hà Nội</h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <a class="pull-left" href="#" >
                                            <i class="fa fa-envelope fa-2x"></i>
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading">
                                                <a href="mailto:it@vtvcab.vn">it@vtvcab.vn</a>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <a class="pull-left" href="#" >
                                            <i class="fa fa-phone fa-2x"></i>
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading"><span class="number">024.3689.3689</span> nhánh <span class="number">2132</span></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--<a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Click để lên đầu trang" data-toggle="tooltip" data-placement="left">--%>
                <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" >
                <i class="fa fa-chevron-up" aria-hidden="true"></i>
            </a>

            <footer>
                <div class="container">
                    <a href="index.html" class="scrollpoint sp-effect3">
                        <img src="assets/img/freeze/logo.png" alt="" class="logo"/>
                    </a>
                   <div class="rights">
                        <p>Bản quyền thuộc về VTVCab &copy; <span class="year"></span></p>
                        <p>Giao diện được thiết kế bởi <a href="http://www.scoopthemes.com" target="_blank">ScoopThemes</a></p>
                    </div>
                    <div>
                        <%--<a href="Tai_lieu_iCab.zip" class="downloadDocument" style="display: block;">Tải tài liệu</a>--%>
                        <%--<iframe id="my_iframe" style="display:none;"></iframe>--%>
                        <%--<asp:Button ID="btnDownload1" runat="server" Text="Download" OnClick="btnDownload1_Click"/>--%>
                    </div>
                </div>
            </footer>

            <asp:Label ID="lblMessage" CssClass="lblMessage" runat="server"></asp:Label>
            <asp:Label ID="lblUsername" CssClass="lblUsername" runat="server" style="display: none;" ></asp:Label>
            <asp:TextBox ID="txtUrl" CssClass="txtUrl" runat="server" style="display: none;"></asp:TextBox>
            <%--<asp:Label ID="lbl" runat="server"></asp:Label>--%>
        </form>
    </div><!--.wrapper-->

    <script src="assets/js/jquery-1.11.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/placeholdem.min.js"></script>
    <script src="assets/js/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
    <script src="assets/js/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/scripts.js"></script>
    <script>
        $(document).ready(function () {
            var url = "";// Đánh dấu trang khi click chuột
            var message = $.trim($('.lblMessage').text());
            if (message != null && message != '') {
                $('.wrapper_login').css("display", "block");
                $('.loginfail').css("display", "block");
            }
            else {
                $('.wrapper_login').css("display", "none");
                $('.loginfail').css("display", "none");
            }

            /*Đếm số người dùng*/
            $.ajax
                ({
                    type: "POST",
                    url: "Handler/CountUsers.ashx",
                    data: {},
                    async: false,
                    dataType: 'json',
                    success: function (data) {
                        if (data != null) {
                            $('.count_user').html(data);
                        }
                        else {
                            $('.count_user').html("1234");
                        }
                    },
                    error: function (result) {
                        $('.count_user').html("1234");
                    }
                });
            /* Tải năm cho footer */
            var datetime = new Date();
            var year = datetime.getFullYear();
            $('.year').html(year);
            /*Menu*/
            $('.dropdown-submenu a.test').on("click", function(e){
                if($(this).next('ul').css("display") == "block"){
                    $('ul.ullv2').css("display","none");
                }
                else{
                    $('ul.ullv2').css("display","none");
                    $(this).next('ul').css("display","block");
                }
					
				$('#bs-example-navbar-collapse-1').removeClass("collapse");
                $('#bs-example-navbar-collapse-1').addClass("collapse in");
                e.stopPropagation();
                e.preventDefault();
            });
            $('.test1').on("click", function(e){
                $('ul.ullv2').css("display", "none");
            });
            $('.nodata').on("click", function (e) {
                $('ul.ullv2').css("display", "none");
                alert("Nội dung đang được cập nhật mời bạn xem thêm nội dung khác");
                e.stopPropagation();
                e.preventDefault();
            });
			
            /******Kiểm tra thiết bị đang truy cập để hiển thị thông báo khi click vào download******/
            
            
                /* popup */
                
                $('.showpopup').click(function () {
                    var isMobile = false; //initiate as false
                    // device detection
                    if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(navigator.userAgent)
                        || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(navigator.userAgent.substr(0, 4))) isMobile = true;
                    if (!isMobile) {
                        $(".wrapper_popup").delay(500).fadeIn();
                    }
                });
                $('.close_popup').click(function () {
                    $('.wrapper_popup').css("display", "none");
                });
                $(document).keyup(function (e) {
                    if (e.keyCode == 27) {
                        $('.wrapper_popup').css("display", "none");
                        $('.wrapper_login').css("display", "none");
                    }
                });

                var modal = document.getElementById('wrapper_popup');
                $(window).click(function (e) {
                    if (e.target == modal) {
                        $(".wrapper_popup").css("display", "none");
                    }
                });
                /*End Popup*/
            

            /******End Kiểm tra thiết bị đang truy cập để hiển thị thông báo khi click vào download******/

            /*Login*/
            $(document).keypress(function (e) {
                if (e.which == 13) {
                    //$('.btn_login').click();
                }
            });

            /*Quản lý vị trí */
            $('.location').click(function () {
                url = "~/maps/index.aspx";
                $('.txtUrl').val(url);
                $.ajax
                ({
                    type: "POST",
                    url: "Handler/CheckAlive.ashx",
                    data: {},
                    async: false,
                    dataType: 'json',
                    success: function (data) {
                        if (data != null && data == 0) {
                            $('.loginfail').css("display", "none");
                            $(".wrapper_login").delay(500).fadeIn();
                        }
                        else {
                            window.location = "maps/index.aspx";
                        }
                    },
                    error: function (result) {
                    }
                });

            });
            $('.showlogin').click(function () {
                url = "~/Handler/Download.ashx";
                $('.txtUrl').val(url);
                $.ajax
                ({
                    type: "POST",
                    url: "Handler/CheckAlive.ashx",
                    data: {},
                    async: false,
                    dataType: 'json',
                    success: function (data) {
                        if (data != null && data == 0) {
                            $('.loginfail').css("display", "none");
                            $(".wrapper_login").delay(500).fadeIn();
                        }
                        else {
                            window.location = "Handler/Download.ashx";
                            //$('.showlogin_hide1').click();
                            //$.ajax
                            //({
                            //    type: "POST",
                            //    url: "Handler/Download.ashx",
                            //    data: {},
                            //    async: false,
                            //    dataType: 'json',
                            //    success: function (data) {
                            //    },
                            //    error: function (result) {
                            //    }
                            //});
                        }
                    },
                    error: function (result) {
                    }
                });
                
            });
            $('.toggle').click(function () {
                $('.wrapper_login').css("display", "none");
            });
            var modal1 = document.getElementById('wrapper_login');
            $(window).click(function (e) {
                if (e.target == modal1) {
                    $('.wrapper_login').css("display", "none");
                }
            });

            $('.btn_login').click(function (e) {
                var username = $.trim($('.username').val());
                var password = $.trim($('.password').val());
                if (username == null || username == '' || username == 'Tài khoản')
                {
                    alert('Bạn phải nhập tài khoản');
                    e.preventDefault();
                    e.stopPropagation();
                    return;
                }
                if (password == null || password == '' || password == 'Mật khẩu') {
                    alert('Bạn phải nhập mật khẩu');
                    e.preventDefault();
                    e.stopPropagation();
                    return;
                }
                $('.wrapper_login').css("display", "none");
                $('.loginfail').css("display", "none");
            });
            /*End Login*/

            $('.btn_Sendemail').click(function (e) {
                var name = $.trim($('.txt_name').val());
                var phone = $.trim($('.txt_phone').val());
                var content = $.trim($('.txt_content').val());
                if (name == null || name == "" || name == "Họ tên của bạn") {
                    alert('Bạn phải nhập Họ và Tên');
                    e.preventDefault();
                    return;
                }
                var regex_phone = /^(84|0)[0-9]{9,10}$/;
                if (!phone.match(regex_phone)) {
                    alert("Bạn phải nhập đúng định dạng số điện thoại");
                    e.preventDefault();
                    return;
                }
                if (content == null || content == "" || content == "Số điện thoại") {
                    alert('Bạn phải nhập Nội dung');
                    e.preventDefault();
                    return;
                }

                var params = { 'name': name, 'phone': phone, 'content': content };
                $.ajax
                ({
                    type: "POST",
                    url: "Handler/SendMail.ashx",
                    data: params,
                    async: false,
                    dataType: 'json',
                    success: function (data) {
                        if (data != null) {
                            alert('Bạn đã gửi thư thành công. TT CNTT sẽ phản hồi lại bạn sớm nhất. Trân trọng!');
                            $('.txt_name').val("");
                            $('.txt_phone').val("");
                            $('.txt_content').val("");
                        }
                        else {
                            alert('Có lỗi trong quá trình gửi thư! Vui lòng liên hệ trực tiếp qua số điện thoại 0436893689 nhánh 2132');
                            }
                    },
                    error: function (result) {
                        alert('Có lỗi trong quá trình gửi thư! Vui lòng liên hệ trực tiếp qua số điện thoại 0436893689 nhánh 2132');
                    }
                });
            });
            $('#back-to-top').tooltip('hide');

            $(window).scroll(function () {
                if ($(this).scrollTop() > 50) {
                    $('#back-to-top').fadeIn();
                } else {
                    $('#back-to-top').fadeOut();
                }
            });
            $('#back-to-top').click(function () {
                $('#back-to-top').tooltip('hide');
                $('body,html').animate({
                    scrollTop: 0
                }, 800);
                return false;
            });
            
			
            appMaster.preLoader();
        });
       
    </script>
    <!--Start of Zendesk Chat Script-->
	<script type="text/javascript">
	    window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
        d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
        _.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute("charset","utf-8");
	        $.src="https://v2.zopim.com/?4rXlB9tPlspUDVrovOg56RMCfHf1uRGV";z.t=+new Date;$.
            type="text/javascript";e.parentNode.insertBefore($,e)})(document,"script");
	</script>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-102849347-1', 'auto');
        ga('send', 'pageview');

</script>
<!--End of Zendesk Chat Script-->
</body>
</html>
