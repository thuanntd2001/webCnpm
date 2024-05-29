<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm Chi Phí</title>
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
	<div style="margin-top: 3%;" class="container card">
		<div class="card-header">
			<h4>Nhập Thông Tin Nhập Hàng</h4>
		</div>
		<form:form id="form-1" action="/dichvu/admin-home/formNhapHang.htm"
			modelAttribute="pn" method="post">
			<div class="form-group">

				<form:input type="hidden" readonly="true" path="id" />
			</div>


			<div class="form-row">
				<div class="form-group col-md-4">
					<label>Nhà Cung Cấp</label> <br>
					<form:input id="nhaCC" path="ncc" type="text" />
					<span class="form-message"></span>
				</div>


				<div class="form-group row">
					<label class="col-sm-8 col-form-label">Tình Trạng</label>
					<div class="col-sm-10">
						<c:if test="${pn.tinhTrang !=1}">
							<div class="form-check form-check-inline">
								<form:radiobutton path="tinhTrang" value="0" />
								<label class="form-check-label">Dự kiến nhập hàng</label>
								<div class="form-check form-check-inline">
									<form:radiobutton path="tinhTrang" value="1" />
									<label class="form-check-label">Đã nhập hàng</label>
								</div>

							</div>
						</c:if>
						
						<c:if test="${pn.tinhTrang ==1}">

							<div class="form-check form-check-inline">
								<form:radiobutton path="tinhTrang" value="1" />
								<label class="form-check-label">Đã nhập hàng</label>
							</div>


						</c:if>
					</div>
				</div>

			</div>


			<div class="card-footer">
				<!-- <button type="submit" class="btn btn-primary" name="addctnh1">Thêm
					chi tiết nhập hàng</button> -->
				<button class="btn btn-primary" type="submit"
					name="${btnupdate ? 'btnupdate' : 'Insert'}">${btnupdate ? 'CẬP NHẬT' : 'THÊM MỚI'}</button>

				<a style="font-size: 16px; padding: 10px;" class="btn btn-secondary"
					href="admin-home/admin-nhaphang.htm"> QUAY LẠI </a>
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
						Validator.isRequired('#NL',
								'Vui lòng nhập tên Nguyên liệu'),
						Validator.isRequired('#SL', 'Vui lòng nhập số lượng'),
						Validator.isRequired('#giaMoiDV',
								'Vui lòng nhập giá mỗi dịch vụ'),
						Validator.isRequired('#set-date',
								'Vui lòng nhập vào ngày nhập hàng'),

				/* Validator.isRequired('#DV', 'Vui lòng nhập tên dịch vụ'), */
				/* Validator.isRequired('#loaiDV', 'Vui lòng loại dịch vụ'), */
				],
			});
		});
	</script>

</body>
</html>