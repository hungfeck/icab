<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Icab.vitrikhachhang.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="css/style.css"> <!-- Resource style -->
	 <link rel="shortcut icon" href="favicon.png">
	<script src="js/modernizr.js"></script> <!-- Modernizr -->
  	
	<title>iCab - Giới thiệu chức năng</title>
</head>
<body>
	<header class="cd-header">
		<div id="cd-logo">iCab</div>
		<div id="cd-action"><a href="index.html" class="btn">Trang chủ</a></div>
	</header>

	<main class="cd-main-content">
		<div class="cd-product-intro">
			<h1>Chức năng bản đồ vị trí khách hàng</h1>
			<p>Bạn có thể theo dõi danh sách yêu cầu bảo hành ngay trên bản đồ với chỉ một cú chạm. Chức năng cho phép chỉ đường, đo khoảng cách và nhiều hơn nữa!</p>
			<div class="cd-triggers">
				<a href="Tai_lieu_iCab.zip" class="btn">Tải tài liệu</a>
				<a href="#cd-product-tour" class="btn salmon" data-type="cd-tour">Khám phá</a>

			</div>
		</div> <!-- cd-product-intro -->

		<div id="cd-product-tour">
			<ul>
				<li class="cd-single-item cd-active">
					<div class="cd-caption"  style="margin-top: 25px">
						<h2>Bản đồ vị trí khách hàng</h2>
						<p style="text-align: justify;">Cầm trên tay iCab đồng nghĩa với bạn đang sử dụng một chiếc bản đồ dành cho công việc bảo hành của mình. Chức năng này sẽ hiển thị những vị trí khách hàng lên bản đồ. Bạn có thể xem thông tin khoảng cách đến vị trí hiện tại của bạn!
						</p>
						<div class="cd-caption-list">
							<p> 1. Đăng nhập vào iCab bằng tài khoản của bạn</p>
							<p> 2. Ở menu bên tay trái, chọn <b>Bản đồ</b></p>
							<p> 3. Bản đồ sẽ hiện lên với những vị trí của khách hàng<i> Sẽ có một số vị trí khách hàng sẽ không hiển thị lên bản đồ được. Bạn có thể tự cập nhật lại ở chức năng cập nhật vị trí!</i></p>
						</div>
					</div>
					<div class="cd-image-container">
						<div>
							<div class="cd-phone-frame"></div>
							<div class="cd-image-wrapper">
							<iframe width="225" height="402" src="https://www.youtube-nocookie.com/embed/i2YgtqCpZPU?rel=0&amp;controls=0&amp;showinfo=0&amp;loop=1" frameborder="0" allowfullscreen volume = "0"></iframe>
							</div>
						</div>
					</div>
				</li>
				<li class="cd-single-item cd-not-visible cd-move-right">
					<div class="cd-caption"  style="margin-top: 25px">
						<h2>Chức năng chỉ đường</h2>
						<p style="text-align: justify;">Trong trường hợp bạn chưa biết vị trí nhà khách hàng chỗ nào, bạn sẽ làm gì? Chắc hẳn bạn sẽ mở 1 ứng dụng bản đồ như Google Maps, Here Map. Với iCab, mọi thứ sẽ được hỗ trợ. 
						</p>
						<div class="cd-caption-list">
							<p> 1. Chọn vào một vị trí khách hàng</p>
							<p> 2. Chọn nút chỉ đường  <img src="img/get-directions-button.png"> ở trên màn hình thông tin</p>
							<p> 3. iCab sẽ mở ứng dụng Google Maps để thực hiện chỉ đường</p>
							<p> 4. Chọn chỉ đường</p>
						</div>
					</div>
					<div class="cd-image-container">
						<div>
							<div class="cd-phone-frame"></div>
							<div class="cd-image-wrapper">
								<iframe width="225" height="402" src="https://www.youtube-nocookie.com/embed/YzBGK-KPr10?rel=0&amp;controls=0&amp;showinfo=0&amp;loop=1" frameborder="0" allowfullscreen volume = "0"></iframe>
							</div>
						</div>
					</div>
				</li>
				<li class="cd-single-item cd-not-visible cd-move-right">
					<div class="cd-caption" style="margin-top: -45px">
						<h2>Cập nhật vị trí KH</h2>
						<p  style="text-align: justify;">Nếu như trên bản đồ iCab hiển thị sai vị trí của khách hàng hoặc trên bản đồ không có vị trí của khách hàng đó thì bạn sẽ làm gì? Hãy cùng iCab cập nhật lại vị trí của khách hàng nhé!
						</p>
						<div class="cd-caption-list">
							<p> 1. Chọn vào một yêu cầu (trên bản đồ hoặc trên danh sách các yêu cầu)</p>
							<p> 2. Ứng dụng sẽ mở sang màn hình thông tin chi tiết yêu cầu đó</p>
							<p> 3. Ở góc dưới bên tay phải màn hình có một nút tròn dấu cộng màu xanh  <img src="img/add-button-inside-black-circle.png"> Bạn hãy chọn vào đó</i></p>
							<p> 4. Chọn <img src="img/ic-addplace.png"> để cập nhật vị trí của khách hàng</p>
							<p> 5. Mặc định bản đồ sẽ hiển thị vị trí của bạn, tuy nhiên, nếu bạn muốn thay đổi thì có thể nhấn chặt vào bản đồ 2s thì vị trí sẽ được thay đổi</p>
							<p> 6. Sau khi xác định được vị trí của KH, nhấn vào nút cập nhật vị trí để cập nhật</p>
						</div>
					</div>
					<div class="cd-image-container">
						<div>
							<div class="cd-phone-frame"></div>
							<div class="cd-image-wrapper">
								<iframe width="225" height="402" src="https://www.youtube-nocookie.com/embed/ON3gE90K8MI?rel=0&amp;controls=0&amp;showinfo=0&amp;loop=1" frameborder="0" allowfullscreen volume = "0"></iframe>
							</div>
						</div>
					</div>
				</li>
				<li class="cd-single-item cd-not-visible cd-move-right">
					<div class="cd-caption" style="margin-top: 0px">
						<h2>Chế độ bản đồ</h2>
						<p  style="text-align: justify;">Bạn có nghĩ là iCab thực sự hiểu bạn không? Khi bạn đi làm việc vào buổi tối, iCab sẽ tự động thay đổi chế độ bản đồ sang chế độ ban đêm để bạn có thể dễ dàng nắm bắt thông tin hơn. Bạn cũng có thể tự chuyển chế độ bản đồ giữa ngày và đêm với các bước sau: 
						</p>
						<div class="cd-caption-list">
							<p> 1. Chọn menu <img src="img/ic-menu.png"></p>
							<p> 2. Bạn có thể dễ dàng chuyển chế độ Ban đêm ở phần <b>Chế độ ban đêm</b></p>
						</div>
					</div>
					<div class="cd-image-container">
						<div>
							<div class="cd-phone-frame"></div>
							<div class="cd-image-wrapper">
								<iframe width="225" height="402" src="https://www.youtube-nocookie.com/embed/G2NeFqMswps?rel=0&amp;controls=0&amp;showinfo=0&amp;loop=1" frameborder="0" allowfullscreen volume = "0"></iframe>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div> <!-- cd-product-tour -->

		<div class="cd-slider-nav">
			<a class="cd-prev" href="#0">Trước</a>
			<a class="cd-next" href="#0">Sau</a>
		</div> <!-- cd-slider-nav -->

		<div class="cd-loader"></div> <!-- top loading bar -->
	</main>
<script src="js/jquery-2.1.1.js"></script>
<script src="js/main.js"></script> <!-- Resource jQuery -->
</body>
</html>
