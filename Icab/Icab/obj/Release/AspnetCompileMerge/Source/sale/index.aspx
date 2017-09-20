﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Icab.sale.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="css/style.css"> <!-- Resource style -->

	<script src="js/modernizr.js"></script> <!-- Modernizr -->
  	
	<title>iCab - Giới thiệu chức năng</title>
</head>
<body>
	<header class="cd-header">
		<div id="cd-logo">iCab</div>
		<div id="cd-action"><a href="../index.aspx" class="btn">Trang chủ</a></div>
	</header>

	<main class="cd-main-content">
		<div class="cd-product-intro">
			<h1>Chức năng iCab cho Nhân viên kinh doanh</h1>
			<p>Với một vài thao tác, bạn có thể dễ dàng giới thiệu một khách hàng cũng như theo dõi trạng thái lắp đặt dịch vụ của khách hàng!</p>
			<div class="cd-triggers">
				<a href="Tai_lieu_iCab.zip" class="btn">Tải tài liệu</a>
				<a href="#cd-product-tour" class="btn salmon" data-type="cd-tour">Khám phá</a>

			</div>
		</div> <!-- cd-product-intro -->

		<div id="cd-product-tour">
			<ul>
				<li class="cd-single-item cd-active">
					<div class="cd-caption"  style="margin-top: 25px">
						<h2>Tra cứu thông tin KH</h2>
						<p style="text-align: justify;">Trước đây bạn muốn xem nhà này đã & đang sử dụng dịch vụ gì của VTVCab, bạn sẽ làm gì? Với iCab bạn có thể tìm kiếm thông tin khách hàng một cách dễ dàng bằng số điện thoại, họ tên, mã thiết bị và số hợp đồng:
						</p>
						<div class="cd-caption-list">
							<p> 1. Đăng nhập vào iCab bằng tài khoản của bạn</p>
							<p> 2. Ở menu bên tay trái, chọn <b>Tra cứu khách hàng cho Sales</b></p>
							<p> 3. Chọn tiêu chí để tìm kiếm, mặc định sẽ là tìm kiếm theo họ tên KH <i>Bạn có thể tìm kiếm theo họ tên, số điện thoại, mã thiết bị hoặc số hợp đồng</i></p>
							<p> 4. Nhập từ khoá cần tra</p>
							<p> 5. Nhấn tìm kiếm để tìm kiếm thông tin KH</p>
						</div>
					</div>
					<div class="cd-image-container">
						<div>
							<div class="cd-phone-frame"></div>
							<div class="cd-image-wrapper">
							<iframe width="225" height="402" src="https://www.youtube-nocookie.com/embed/LIsWsuqWxyI?rel=0&amp;controls=0&amp;showinfo=0&amp;loop=1" frameborder="0" allowfullscreen volume = "0"></iframe>
							</div>
						</div>
					</div>
				</li>
				<li class="cd-single-item cd-not-visible cd-move-right">
					<div class="cd-caption"  style="margin-top: 25px">
						<h2>Giới thiệu khách hàng</h2>
						<p style="text-align: justify;">Bạn có thể giới thiệu khách hàng mới hoặc khách hàng cũ sử dụng thêm dịch vụ của VTVCab với một cú chạm. Mọi thứ được đơn giản hoá để bạn có thể thêm khách hàng nhanh và tiết kiệm thời gian. Các bước thực hiện như sau:
						</p>
						<div class="cd-caption-list">
							<p> 1. Chọn Giới thiệu khách hàng </p>
							<p> 2. Chọn giới thiệu khách hàng mới hoặc khách hàng cũ</p>
							<p> 3. Điền thông tin khách hàng (họ tên, số điện thoại, CMTND, địa chỉ...) <i>Đối với khách hàng cũ bạn phải điền số hợp đồng trước</i></p>
							<p> 4. Chụp ảnh chứng minh thư khách hàng cả mặt trước và mặt sau</p>
							<p> 5. Chọn hoàn thành để hoàn thành giới thiệu khách hàng</p>
						</div>
					</div>
					<div class="cd-image-container">
						<div>
							<div class="cd-phone-frame"></div>
							<div class="cd-image-wrapper">
								<iframe width="225" height="402" src="https://www.youtube-nocookie.com/embed/ef7MbvQfs0I?rel=0&amp;controls=0&amp;showinfo=0&amp;loop=1" frameborder="0" allowfullscreen volume = "0"></iframe>
							</div>
						</div>
					</div>
				</li>
				<li class="cd-single-item cd-not-visible cd-move-right">
					<div class="cd-caption" style="margin-top: -45px">
						<h2>Quản lý giới thiệu</h2>
						<p  style="text-align: justify;">Phuuùuu..., giờ đây bạn sẽ không cần sổ sách để ghi lại những khách hàng mà mình đã giới thiệu nữa. Tất cả bạn cần là chiếc Smartphone và iCab, bạn có thể dễ dàng theo dõi khách hàng của mình đã được hỗ trợ hay chưa:
						</p>
						<div class="cd-caption-list">
							<p> 1. Vào menu, chọn Quản lý giới thiệu </p>
							<p> 2. Chọn khoảng ngày muốn xem thống kê (Mặc định là 07 ngày)</p>
							<p> 3. Bạn có thể xem trạng thái lắp đặt của khách hàng (chưa xử lý hoặc đã xử lý)<i>Đối với các KH chưa xử lý có thể là do chưa được tạo Job (công việc) hoặc đã được tạo Job nhưng chưa hoàn thành lắp đặt</i></p>
							<p> 4. Ở tab <b>Đã xử lý</b>, bạn có thể xem KH đã lắp đặt thành công hay không thành công</p>
							<p> 5. Ở tab <b>Thống kê</b>, bạn có thể xem báo cáo nhanh số lượng KH mà bạn giới thiệu được trong khoảng ngày mà bạn muốn xem</p>
						</div>
					</div>
					<div class="cd-image-container">
						<div>
							<div class="cd-phone-frame"></div>
							<div class="cd-image-wrapper">
								<iframe width="225" height="402" src="https://www.youtube-nocookie.com/embed/l-1W_WBrWgI?rel=0&amp;controls=0&amp;showinfo=0&amp;loop=1" frameborder="0" allowfullscreen volume = "0"></iframe>
							</div>
						</div>
					</div>
				</li>
				<li class="cd-single-item cd-not-visible cd-move-right">
					<div class="cd-caption" style="margin-top: 0px">
						<h2>Quản lý Sales</h2>
						<p  style="text-align: justify;">Bạn là tổ trưởng, là giám sát sales? Chức năng này cho phép bạn theo dõi tiến độ và số lượng giới thiệu khách hàng của các nhân viên Sales khác thuộc sự quản lý của bạn.
						</p>
						<div class="cd-caption-list">
							<p> 1. Đăng nhập bằng tài khoản iCab của bạn</p>
							<p> 2. Chọn <b>Quản lý Sales</b> ở menu bên tay trái</p>
							<p> 3. Chọn khoảng ngày mà bạn muốn xem báo cáo/p>
							<p> 4. Sau khi dữ liệu hiển thị ra, bạn có thể xem được dữ liệu của các nhân viên mà bạn quản lý</p>
							<p> 5. Chọn vào một nhân viên để xem thông tin chi tiết</p>
						</div>
					</div>
					<div class="cd-image-container">
						<div>
							<div class="cd-phone-frame"></div>
							<div class="cd-image-wrapper">
								<iframe width="225" height="402" src="https://www.youtube-nocookie.com/embed/pKFAEnymup0?rel=0&amp;controls=0&amp;showinfo=0&amp;loop=1" frameborder="0" allowfullscreen volume = "0"></iframe>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div> <!-- cd-product-tour -->

		<div class="cd-slider-nav">
			<a class="cd-prev" href="#0">Previous</a>
			<a class="cd-next" href="#0">Next</a>
		</div> <!-- cd-slider-nav -->

		<div class="cd-loader"></div> <!-- top loading bar -->
	</main>
<script src="js/jquery-2.1.1.js"></script>
<script src="js/main.js"></script> <!-- Resource jQuery -->
</body>
</html>
