<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sản Phẩm</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>

<style>
label {
	font-weight: bold;
}

body {
	background-color: #d7d7d7;
}

.form-message {
	color: red;
}
</style>
<body>
	<div style="margin-top: 7%;" class="container container card">
		<div class="card-header">
			<h4>Nhập Thông Tin Loai SP</h4>
		</div>
		<form:form id="form-1" class="card-body"
			action="admin-home/formLoaiSP.htm" modelAttribute="loaisp" method="post">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label>ID</label> <br>
					<form:input minlenth="1" readonly="true" id="id" path="id"
						type="text" placeholder=" " />
					<span class="form-message"></span>
				</div>

			</div>


			<div class="form-row">
				<div class="form-group col-md-6">
					<label>Tên Loai Sản Phẩm</label> <br> <form:input id="tenTU"
						required="true" minlength="1" value="${ten}" path="tenLoai"
						type="text" /> <span class="form-message"></span>
				</div>
				
			</div>

			<div class="card-footer">
				<button class="btn btn-primary" type="submit"
					name="${btnupdate ? 'btnupdate' : 'Insert'}">${btnupdate ? 'CẬP NHẬT' : 'THÊM MỚI'}</button>
				<a style="font-size: 16px; padding: 10px;" class="btn btn-secondary"
					href="admin-home/admin-qlloaisp.htm"> QUAY LẠI </a>
			</div>
		</form:form>
	</div>

	<script src="<c:url value='/template/admin/validation.js'/>"></script>
	<script>
		document.addEventListener('DOMContentLoaded', function() {
			// Mong muốn của chúng ta
			Validator({
				form : '#form-1',
				formGroupSelector : '.form-group',
				errorSelector : '.form-message',
				rules : [
						Validator.isRequired('#giathanh',
								'Vui lòng nhập vào giá thành'),
						Validator.isRequired('#tenTU',
								'Vui lòng nhập vào tên LSP'),

				/*  Validator.isEmail('#email'),
				   Validator.minLength('#password', 6),
				   Validator.isRequired('#password_confirmation'),
				   Validator.isConfirmed('#password_confirmation',  function () {
				     return document.querySelector('#form-1 #password').value;
				   }, 'Mật khẩu nhập lại không chính xác') */
				],

			});

		});
	</script>

</body>
</html>