<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Noaccess.aspx.cs" Inherits="Icab.Noaccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>iCab | Noaccess</title>
    <!-- Bootstrap 3.3.2 -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/css/animate.css"/>
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../assets/css/slick.css"/>
    <link rel="stylesheet" href="../assets/js/rs-plugin/css/settings.css"/>
    <link rel="stylesheet" href="../assets/css/styles.css"/>
    <link rel="stylesheet" href="~/ktvbaohanh/css/style.css"/>
    <style>
        .wrapper{
            padding-top: 10%;
        }
        h2{
            text-transform: uppercase;
            color: #fff;
            text-align: center;
        }
        h3{
            text-align: center;
            color:#fff;
        }
        a:hover{
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="homepage_">
		<div id="cd-action"><a href="../index.aspx">Trang chủ</a></div>
    </div><!--.homepage_-->
    <div class="wrapper">
        <h2>Bạn không có quyền truy cập chức năng này</h2>
        <h3>Vui lòng quay lại <a href="index.aspx">Trang chủ</a></h3>
    </div>
</body>
</html>
