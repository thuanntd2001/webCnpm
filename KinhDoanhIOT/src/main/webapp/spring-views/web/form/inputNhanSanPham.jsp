<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NHÃN SẢN PHẨM</title>
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
			<h4>Thêm nhãn-sản phẩm</h4>
		</div>
		<form:form id="form-1" class="card-body" action="formNhanSanPham.htm"
			modelAttribute="nsp" method="post">
			<div class="form-row"></div>
			<br>
			<div class="form-row">
				<div class="select-menu">

					<h5>
						<form:select path= "nhan" name="nhan">
							<c:forEach items="${nhans}" var="nhan">

								<form:option value="${nhan.tenNhan}">${nhan.tenNhan}</form:option>
							</c:forEach>
						</form:select>
					</h5>

				</div>









			</div>
			<div class="form-row">
				<div class="select-menu">

					<h5>
						<form:select path="sanPham" name="sanPham">
							<c:forEach items="${sanphams}" var="sanpham">

								<form:option value="${sanpham.ID}">${sanpham.ten}</form:option>
							</c:forEach>
						</form:select>
					</h5>

				</div>
			</div>


			<div class="form-group">
				<button class="btn btn-primary" type="submit"
					name="${btnupdate ? 'btnupdate' : 'Insert'}">${btnupdate ? 'CẬP NHẬT' : 'THÊM MỚI'}</button>
				<a style="font-size: 16px; padding: 10px;" class="btn btn-secondary"
					href="admin-home/admin-qlthucdon.htm"> QUAY LẠI </a>
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
								'Vui lòng nhập vào tên thức uống'),

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