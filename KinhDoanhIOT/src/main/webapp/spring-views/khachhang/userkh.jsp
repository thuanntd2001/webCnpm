<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<jsp:include page="/common/webKH/head.jsp" />
</head>

<body>
	<jsp:include page="/common/webKH/header.jsp" />

	<div class="container-fluid main">
		<div class="container">
			<div class="content">
				<div class="header-content d-flex justify-content-center">
					THÔNG TIN TÀI KHOẢN</div>
				<section class="section profile">
					<div class="row">
						<div class="col-xl-4">

							<div class="card">
								<form:form modelAttribute="user"
									class="card-body profile-card pt-4 d-flex flex-column align-items-center">
									<img src="files/${sessionScope.USERKHMODEL.icon}" alt="Profile"
										class="rounded-circle">
									<h2>${user.hoTen }</h2>
									<h3>${user.userName }</h3>
								</form:form>
							</div>

						</div>
						<div class="col-xl-8">
							<div class="card">
								<div class="card-body pt-3">
									<!-- Bordered Tabs -->
									<ul class="nav nav-tabs nav-tabs-bordered">

										<li class="nav-item">
											<button class="nav-link active" data-bs-toggle="tab"
												data-bs-target="#profile-overview">Thông Tin</button>
										</li>


										<li class="nav-item">
											<button class="nav-link" data-bs-toggle="tab"
												data-bs-target="#profile-edit">Sửa Thông Tin</button>
										</li>

										<!-- <li class="nav-item">
											<button class="nav-link" data-bs-toggle="tab"
												data-bs-target="#profile-change-password">Đổi Mật
												Khẩu</button>
										</li> -->

										<!-- <li class="nav-item">
											<button class="nav-link" data-bs-toggle="tab"
												data-bs-target="#avata-edit">Đổi ảnh đại diện</button>
										</li> -->
									</ul>
									<div class="tab-content pt-2">
										<div class="tab-pane fade show active profile-overview"
											id="profile-overview">
											<form action="userkh.htm" method="post">
												<h5 class="card-title">Thông Tin Cá Nhân</h5>


												<div class="row">
													<div class="col-lg-3 col-md-4 label">Họ Tên</div>
													<div class="col-lg-9 col-md-8">${nv.hoTen }</div>
												</div>

												<div class="row">
													<div class="col-lg-3 col-md-4 label">Giới Tính</div>
													<div class="col-lg-9 col-md-8">${nv.gioiTinh?'Nam':'Nữ' }
													</div>
												</div>

												<div class="row">
													<div class="col-lg-3 col-md-4 label">Ngày Sinh</div>
													<div class="col-lg-9 col-md-8">${nv.ngaySinh }</div>
												</div>



												<div class="row">
													<div class="col-lg-3 col-md-4 label">SDT</div>
													<div class="col-lg-9 col-md-8">${nv.sdt }</div>
													<%-- <input type="text" name="sdt" value=${nv.sdt } /> --%>

												</div>



												<div class="row">
													<div class="col-lg-3 col-md-4 label">Email</div>
													<div class="col-lg-9 col-md-8">${user.email }</div>
												</div>

												<div class="row">
													<div class="col-lg-3 col-md-4 label">Địa Chỉ</div>
													<div class="col-lg-9 col-md-8">${nv.diaChi }</div>
													<%-- <input type="text" name="diaChi" value=${nv.diaChi } /> --%>

												</div>



												<div class="row">
													<div class="col-lg-3 col-md-4 label">Tên Tài Khoản</div>
													<div class="col-lg-9 col-md-8">${user.userName }</div>
												</div>
											</form>
										</div>


										<div class="tab-pane fade profile-edit pt-3" id="profile-edit">
											<!-- Profile Edit Form -->
											<form:form modelAttribute="nv" method="post"
												action="KHuser.htm" id="form1">
														${message1 }
														

														<div class="row mb-3">
													<label class="col-md-4 col-lg-3 col-form-label">Họ
														Tên</label>
													<div class="col-md-8 col-lg-9">
														<form:input id="hoTen" cssClass="form-control"
															path="hoTen" />
													</div>
													<form:input id="ee" cssClass="form-control"
															path="maKH" type="hidden" />
												</div>

												<div class="row mb-3">
													<label class="col-md-4 col-lg-3 col-form-label">Giới
														Tính</label>
													<div class="col-md-8 col-lg-9">
														<form:radiobutton path="gioiTinh" value="True" label="Nam" />
														<form:radiobutton path="gioiTinh" value="false" label="Nữ" />
													</div>
												</div>

											


												<div class="row mb-3">
													<label class="col-md-4 col-lg-3 col-form-label">SDT</label>
													<div class="col-md-8 col-lg-9">
														<form:input id="sdt" cssClass="form-control" path="sdt"
															minlength="10" maxlength="10" pattern="^[0-9]{10,15}$"
															required="true" />
													</div>

												</div>


												<div class="row mb-3">
													<label for="address"
														class="col-md-4 col-lg-3 col-form-label">Địa Chỉ</label>
													<div class="col-md-8 col-lg-9">
														<form:input id="diaChi" cssClass="form-control"
															path="diaChi" required="true"
															pattern="^[0-9aAàÀảẢãÃáÁạẠăĂằẰẳẲẵẴắẮặẶâÂầẦẩẨẫẪấẤậẬbBcCdDđĐeEèÈẻẺẽẼéÉẹẸêÊềỀểỂễỄếẾệỆ
fFgGhHiIìÌỉỈĩĨíÍịỊjJkKlLmMnNoOòÒỏỎõÕóÓọỌôÔồỒổỔỗỖốỐộỘơƠờỜởỞỡỠớỚợỢpPqQrRsStTu
UùÙủỦũŨúÚụỤưƯừỪửỬữỮứỨựỰvVwWxXyYỳỲỷỶỹỸýÝỵỴzZ\s]{1,50}$" />
													</div>
												</div>



												<div class="row mb-3">
													<label class="col-md-4 col-lg-3 col-form-label">Email</label>
													<div class="col-md-8 col-lg-9">
														<input id="email" class="form-control" type="email"
															name="email" value="${user.email }" required />
													</div>
												</div>

												<div class="row mb-3">
													<label for="username"
														class="col-md-4 col-lg-3 col-form-label">Tên Tài
														Khoản</label>
													<div class="col-md-8 col-lg-9">
														<input id="userName" class="form-control" type="text"
															value="${user.userName }" readonly="readonly" />
													</div>
												</div>
												<div class="text-center">
													<button type="submit" class="btn btn-primary"
														name="btnupdate-info">Lưu Thay Đổi</button>
												</div>
											</form:form>
											<!-- End Profile Edit Form -->

										</div>




										<div class="tab-pane fade pt-3" id="profile-change-password">
											<!-- Change Password Form -->
											<form:form modelAttribute="changePW" action="KHuser.htm"
												method="post">
														${message1}
														<div class="row mb-3">
													<label for="currentPassword"
														class="col-md-4 col-lg-3 col-form-label">Mật Khẩu
														Cũ</label>
													<div class="col-md-8 col-lg-9">
														<form:input path="password" type="password"
															class="form-control" minlength="3" required="true" />
													</div>
													<form:errors path="password" />
												</div>

												<div class="row mb-3">
													<label for="newPassword"
														class="col-md-4 col-lg-3 col-form-label">Mật Khẩu
														Mới</label>
													<div class="col-md-8 col-lg-9">
														<form:input path="newpassword" type="password"
															class="form-control" minlength="3" required="true" />
													</div>
													<form:errors path="newpassword" />
												</div>


												<div class="row mb-3">
													<label for="renewPassword"
														class="col-md-4 col-lg-3 col-form-label">Nhập Lại
														Mật Khẩu Mới</label>
													<div class="col-md-8 col-lg-9">
														<form:input path="renewpassword" type="password"
															class="form-control" minlength="3" required="true" />
													</div>
													<form:errors path="renewpassword" />
												</div>

												<div class="text-center">
													<button type="submit" class="btn btn-primary"
														name="btnChangePw">Đổi Mật Khẩu</button>
													<button type="reset" class="btn btn-danger">Hủy</button>
												</div>
											</form:form>
											<!-- End Change Password Form -->


										</div>
										<!-- ICON Tabs -->
										<div class="tab-pane fade pt-3" id="avata-edit">
											<label> ${message1} </label>
											<form action="user-avt.htm" method="post"
												enctype="multipart/form-data" class="row mb-3">
												<label for="profileImage"
													class="col-md-4 col-lg-3 col-form-label">Ảnh Đại
													Diện</label>
												<div class="col-md-8 col-lg-9" style="width: 100px;">
													<img src="files/${sessionScope.USERKHMODEL.icon}"
														alt="Ảnh đại diện" class="avt-pic" />
													<div class="pt-2">
														<div class="btn btn-primary btn-sm"
															style="position: relative;">
															<input type="file" accept=".jpg, .png"
																class="file-upload" name="avt" /> <i
																class="fas fa-upload"></i>
														</div>
														<input type="submit" value="Lưu"
															class="btn btn-info btn-sm">
													</div>
												</div>
											</form>
										</div>
									</div>


								</div>
							</div>

						</div>
					</div>
				</section>

			</div>

		</div>
	</div>
	<jsp:include page="/common/web/footer.jsp" />

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js">
		
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>