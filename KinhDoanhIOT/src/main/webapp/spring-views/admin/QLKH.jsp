<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>

<head>
<jsp:include page="/common/admin/head.jsp" />
</head>

<style>
.table thead th {
	vertical-align: baseline;
	border-bottom: 2px solid #dee2e6;
}

.table td, .table th {
	padding: 0.6rem;
	vertical-align: top;
	border-top: 1px solid #dee2e6;
}
</style>

<body>

	<jsp:include page="/common/admin/header.jsp" />
	<jsp:include page="/common/admin/menubar.jsp" />

	<!-- CONTEND -->
	<div class="container-fluid main">
		<div style="padding-left: 20px;">
			<div class="header-content d-flex justify-content-center">QUẢN
				LÝ KHÁCH HÀNG</div>
			<h4>${message}</h4>

			<div class="row"></div>
			<%-- 	<jsp:useBean id="pagedListHolder" scope="request"
				type="org.springframework.beans.support.PagedListHolder" /> --%>
			<c:url value="index.htm" var="pagedLink">
				<c:param name="p" value="~" />
			</c:url>
			<%-- <form class="input-group" style="margin: 20px 0" method="post">
				<div>
					<input id="search-input" type="search" name="searchInput"
						class="form-control" placeholder="Tìm kiếm" />
				</div>
				<button id="search-button" type="submit" class="btn btn-primary"
					name="btnsearch">
					<i class="fas fa-search"></i>
				</button>
			</form> --%>
			<table class="table table-striped shadow-box bg-white">
				<thead>
					<tr>


						<th scope="row">Mã KH</th>
						<th scope="row">Họ Tên</th>
						<th scope="row">Ngày sinh</th>
						<th scope="row">Phái</th>
						<th scope="row">Số Điện Thoại</th>
						<th scope="row">Địa Chỉ</th>
						<th scope="row"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="nv" items="${list}">
						<tr>
							<td>${nv.maKH}</td>
							<td>${nv.hoTen}</td>
							<td>${nv.ngaySinh}</td>
							<%-- <td>${nv.gioiTinh}</td> --%>


							<c:choose>
								<c:when test="${nv.gioiTinh ==true}">
									<td>Nam</td>
								</c:when>
								<c:when test="${nv.gioiTinh ==false}">
									<td>Nữ</td>
								</c:when>

							</c:choose>
							<td>${nv.sdt}</td>
							<td>${nv.diaChi}</td>
							<%-- <td><a
								href="/dichvu/admin-home/admin-indexkh.htm?linkDelete&id=${nv.maKH}"
																		href="/CNPM/admin-home/index.htm?linkDelete&id=${nv.maNV}"
																		>
									<button name="btnXOA" id="#exampleModal2" type="button"
										class="btn btn-warning">Khóa thông tin và tài khoản
										KH</button>
							</a></td> --%>
							<td>
								<!-- del -->


								<div class="row">
									<button name="btnxoa" type="button" class="btn btn-warning"
										data-toggle="modal" data-target="#n-${nv.maKH}">Khóa thông tin và tài khoản
										KH</button>

								</div> <!-- Modal -->
								<div class="modal fade" id="n-${nv.maKH}" tabindex="-1"
									role="dialog" aria-labelledby="exampleModalLabel"
									aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">!!!</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">Bạn có chắc muốn tiếp tục</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">Thoát</button>
												<!-- nut xoa -->
												<a
													href="/dichvu/admin-home/admin-indexkh.htm?linkDelete&id=${nv.maKH}">
													<button name="btnXOA" id="#exampleModal2" type="button"
														class="btn btn-warning">Đồng ý</button>
												</a>
											</div>
										</div>
									</div>
								</div> <!-- end del  -->

							</td>
							<td></td>
							<td></td>
						</tr>

					</c:forEach>
				</tbody>
			</table>
			<tg:paging pagedLink="${pagedLink}"
				pagedListHolder="${pagedListHolder}"></tg:paging>
		</div>
	</div>

	<jsp:include page="/common/admin/footer.jsp" />


</body>

<script>
const tongTiens = document.querySelectorAll("#tongtien");
tongTiens.forEach(tongTien => {
  const formattedTongTien = Number(tongTien.textContent.replace(/\D/g, '')).toLocaleString('vi-VN', {style: 'currency', currency: 'VND'});
  tongTien.textContent = formattedTongTien;
});
</script>
</html>