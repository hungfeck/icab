<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Icab.ktvbaohanh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>iCab | Chức năng dành cho KTV Bảo hành</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <%--<link rel="shortcut icon" href="favicon.png">--%>
    
    <!-- Bootstrap 3.3.2 -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/css/animate.css"/>
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../assets/css/slick.css"/>
    <link rel="stylesheet" href="../assets/js/rs-plugin/css/settings.css"/>
    <link rel="stylesheet" href="../assets/css/styles.css"/>
    <link rel="stylesheet" href="css/style.css"/>


    <script type="text/javascript" src="../assets/js/modernizr.custom.32033.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <div class="homepage_">
		<div id="cd-action"><a href="../index.aspx">Trang chủ</a></div>
    </div><!--.homepage_-->
    <div class="wrapper">
        <section id="about" style="margin-top: 30px;">
            <div class="container">
                
                <div class="section-heading scrollpoint sp-effect3">
                    <h1>Chức năng dành cho KTV Bảo hành</h1>
                    <div class="divider"></div>
                    <h2>Chọn một chức năng để xem hướng dẫn</h2>
                </div>

                <div class="row">
                <a href="#">
                    <div class="col-md-3 col-sm-3 col-xs-6">
                        <div class="about-item scrollpoint sp-effect2 nodata_vtkh">
                            <i class="fa fa-search fa-2x"></i>
                            <h3>Tra cứu thông tin KH</h3>
                            <p>KTV có thể dễ dàng tra cứu thông tin của khách hàng bao gồm thông tin cơ bản, dịch vụ, cước…..</p>
                        </div>
                    </div>
                </a>
                    <div class="col-md-3 col-sm-3 col-xs-6" >
                        <div class="about-item scrollpoint sp-effect5 nodata_vtkh">
                            <i class="fa fa-magnet fa-2x"></i>
                            <h3>Nghiệm thu bảo hành</h3>
                            <p>Bạn có thể nhận lịch bảo hành với iCab. Ngoài ra với 02 bước bạn đã có thể nghiệm thu một yêu cầu bảo hành.</p>
                        </div>
                    </div>
                    <a target="_blank" href="../vitrikhachhang/index.aspx">
                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="about-item scrollpoint sp-effect5">
                                <i class="fa fa-map-marker fa-2x"></i>
                                <h3>Bản đồ khách hàng</h3>
                                <p>Giờ đây vị trí khách hàng có đã được bản đồ hoá, iCab sẽ hỗ trợ bạn nghiệm thu yêu cầu bảo hành nhanh nhất.</p>
                            </div>
                        </div>
                    </a>
                    <div class="col-md-3 col-sm-3 col-xs-6" >
                        <div class="about-item scrollpoint sp-effect1 nodata_vtkh">
                            <i class="fa fa-sliders fa-2x"></i>
                            <h3>Các tiện ích</h3>
                            <p>Bạn có thể thực hiện pairing Nagra, Conax và nhiều tiện ích hơn nữa ngay trên ứng dụng iCab.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <script src="../assets/js/jquery-1.11.1.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/slick.min.js"></script>
    <script src="../assets/js/placeholdem.min.js"></script>
    <script src="../assets/js/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
    <script src="../assets/js/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
    <script src="../assets/js/waypoints.min.js"></script>
    <script src="../assets/js/scripts.js"></script>
    <script>
        $(document).ready(function() {
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
<!--End of Zendesk Chat Script-->
</body>
</html>
