<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	>
<link rel="shortcut icon" type="image/png"
	href="https://www.logo.wine/a/logo/Costa_Coffee/Costa_Coffee-Logo.wine.svg" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="<c:url value='/template/login/style.css' />"
	rel="stylesheet" type="text/css" media="all" />

<style type="text/css">
.errors {
	color: red;
	font-style: italic;
}
</style>

<script src='https://www.google.com/recaptcha/api.js'></script>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Đăng nhập</title>
</head>
<body>

	<div class="col-6 offset-3 mt-5 ">
		<form action="" method="post">
			<div class="card">
				<div class="card-header">
					<img style="height: 50px; width: 50px; text-align: center;"
						src="<c:url value='/common/images/logo.webp'/>" alt="highland">
					Khách hàng IOT Shop

				</div>
				<c:if test="${not empty message}">
					<div class="alert alert-${alert}">${message}</div>
				</c:if>
				<div class="card-body">
					<div class="form-group">
						<label for="username">Tên Đăng Nhập</label> <input type="text"
							class="form-control" name="userName" id="userName"
							aria-describedby="helpId" placeholder="Tên Đăng Nhập">
						<!-- <small
							id="usernameHid" class="form-text text-muted">Username is
							invalid</small> -->
					</div>
					<div class="form-group">
						<label for="password">Mật Khẩu</label> <input type="password"
							class="form-control" name="passwd" id="passwd"
							aria-describedby="helpId" placeholder="Mật Khẩu">
						<!-- <small
							id="passwordHid" class="form-text text-muted">Password is
							invalid</small> -->
					</div>



				</div>
				<div class="card-footer text-muted">
					<button type="submit" class="btn btn-primary">Đăng Nhập</button>

					<button class="btn btn-secondary" type="reset">Làm Mới</button>
					<a href="khachhang-dangky.htm" class="btn btn-primary">Chưa có
						tài khoản? Đăng ký</a> <a href="khachhang-xacnhan.htm">Nhập mã
						xác thực tài khoản</a>

				</div>
			</div>
		</form>
	</div>

</body>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<a href="/dichvu/dang-nhap.htm?action=login" type="reset"> <!-- 	<button type="button" class="btn btn-warning">Thêm</button> -->
	<button type="button">Khách hàng</button>
</a>
</html>
