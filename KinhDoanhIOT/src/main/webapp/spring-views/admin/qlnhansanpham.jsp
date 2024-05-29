<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>IOT SHOP</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<link href="<c:url value='/template/web/styles.css'/>" rel="stylesheet"
	type="text/css">

</head>
<body>
	<jsp:include page="/common/admin/header.jsp" />
	<jsp:include page="/common/admin/menubar.jsp" />

	<!-- CONTEND -->
	<div class="row main">

            <div class="container">
            <div class="header-content d-flex justify-content-center">QUẢN LÝ TỪ NHÃN - SẢN PHẨM</div>
               <h4>${message}</h4>
			
			<%-- <jsp:useBean id="pagedListHolder" scope="request"
				type="org.springframework.beans.support.PagedListHolder" /> --%>
			<c:url value="admin-qlthucdon.htm" var="pagedLink">
				<c:param name="p" value="~" />
			</c:url>
			<!-- <form class="input-group" style="margin: 20px 0" method="post">
				<div>
					<input id="search-input" type="search" name="searchInput"
						class="form-control" placeholder="Tìm kiếm" />
				</div>
				<button id="search-button" type="submit" class="btn btn-primary"
					name="btnsearch">
					<i class="fas fa-search"></i>
				</button>
			</form> -->
                <table class="table table-striped shadow-box bg-white">
                    <thead>
                        <tr>
                            <th scope="row">Tên nhãn</th>
                            <th scope="row">ID sản phẩm</th>
                            <th scope="row">Ngày tạo</th>
                               <th scope="row">NV tạo</th>
                      
             
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach  var="nhansanpham" items="${list}">
                       
                     <tr>
							<td>${nhansanpham.nhan}</td>  
							<td>${nhansanpham.sanPham}</td>                        
                            <td>${nhansanpham.ngayTao}</td>
                             <td>${nhansanpham.nvTao}</td>
                    
        
                           

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

</html>