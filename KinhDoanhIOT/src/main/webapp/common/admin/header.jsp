<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!-- HEADER -->
    <div class="container-fluid header">
        <nav class="navbar navbar-expand-md">
            <div class="container-fluid">

                <a class="navbar-brand" href="#">
                    <img src="<c:url value='/common/images/logo.webp'/>" height="50" alt="">

                </a>
                <div class="dropdown">
                    <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false" style="color: azure; background-color: inherit">
                        <img src="/dicvu/files/${sessionScope.USERMODEL.icon}" alt="" class="rounded-circle" style="max-width: 46px;">
                        Chào mừng ${sessionScope.USERMODEL.userName}
                    </button>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="<c:url value='/admin-home/admin-user.htm'/>">Thông tin tài khoản</a>
                        <a class="dropdown-item" href="/dichvu/dang-nhap.htm?action=logout">Đăng xuất</a>
                    </div>
                </div>
            </div>
        </nav>
    </div>
<!-- END_HEADER -->
