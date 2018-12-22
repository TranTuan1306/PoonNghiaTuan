<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Khách Hàng</title>
<!-- <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script> -->

<!-- Bootstrap core CSS-->
<link href="../Templates/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template-->
<link href="../Templates/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">

<!-- Page level plugin CSS-->
<link href="../Templates/vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../Templates/css/sb-admin.css" rel="stylesheet">

</head>
<body id="page-top">
	<!-- Header -->
	<jsp:include page="admin/header.jsp"></jsp:include>

	<!-- Body -->
	<div id="wrapper">
		<!-- Thanh Slide Bar -->
		<jsp:include page="admin/slidebar.jsp"></jsp:include>

		<!-- Phần Giữa -->
		<div id="content-wrapper">
			<div class="container-fluid">
				<!-- Thanh Địa Chỉ  -->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/">Trang Chủ</a></li>
					<li class="breadcrumb-item active"> <a href="/khachhang/">Khách Hàng</a></li>
				</ol>

				<!-- Nội Dung -->
				<%-- <jsp:include page="content.jsp"></jsp:include> --%>
				
				
				<!-- Bảng Khách Hàng -->
				<spring:url value="/khachhang/savekh" var="saveURL" />
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> Danh sách khách hàng
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-sm-12">
								<table class="table table-bordered dataTable" id="dataTable"
									role="grid" aria-describedby="dataTable_info"
									style="width: 100%;">
									<button class="btn btn-primary" data-toggle="modal"
										data-target="#KhachHangInsert"
										onclick="document.getElementById('headermodal').innerHTML='Thêm khách hàng mới';"
										style="float: right;">
										<i class="fas fa-plus"></i> Thêm khách hàng
									</button>
									<thead>
										<tr role="row" align="center">
											<th class="sorting_asc" tabindex="0"
												aria-controls="dataTable" rowspan="1" colspan="1"
												aria-sort="ascending" style="width: auto;">Mã Khách Hàng</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Tên Khách Hàng
											</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Giới Tính
											</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Địa Chỉ
											</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Loại Khách Hàng
											</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Số Điện Thoại
											</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Thành Phố
											</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Thao tác</th>
										</tr>
									</thead>
									<tfoot>
										<tr align="center">
											<th rowspan="1" colspan="1">Mã Khách Hàng</th>
											<th rowspan="1" colspan="1">Tên Khách Hàng</th>
											<th rowspan="1" colspan="1">Giới Tính</th>
											<th rowspan="1" colspan="1">Địa Chỉ</th>
											<th rowspan="1" colspan="1">Loại Khách Hàng</th>
											<th rowspan="1" colspan="1">Số Điện Thoại</th>
											<th rowspan="1" colspan="1">Thành Phố</th>
											<th rowspan="1" colspan="1">Thao tác</th>
										</tr>
									</tfoot>
									<tbody>
										<c:forEach items="${khList }" var="kh">
											<tr>
												<td align="center">${kh.iMaKhachHang }</td>
												<td align="center">${kh.sHoTen}</td>
												<td align="center">${kh.sGioiTinh}</td>
												<td align="center">${kh.sDiaChi }</td>
												<td align="center">${kh.iMaLoaiKhachHang.sTenLoaiKhachHang }</td> 
												<td align="center">${kh.iSoDienThoai }
												<td align="center">${kh.sThanhPho }
												<td align="center">
													<%-- <spring:url
															value="/chitiethoadon/list/${hd.iMaHD }"
															var="chitiethoadonURL" /> 
														<a
															class="btn btn-success fas fa-info"
															href="${chitiethoadonURL }" style="width: 50px;"
															role="button">
														</a> --%>
													
													<!-- Chỉnh sửa khách hàng -->
													<a class="btn btn-primary fas fa-pen"
														href="#" id="updatebutton"
														onclick="document.getElementById('headermodal').innerHTML='Chỉnh sửa khách hàng số #${kh.iMaKhachHang}';
                                           				document.getElementById('iMaKhachHang').value = ${kh.iMaKhachHang};"
														data-toggle="modal" data-target="#KhachHangEdit"
														style="width: 50px;" role="button">
													</a>
													 
													<spring:url
														value="/khachhang/deletekh/${kh.iMaKhachHang }" var="deleteURL" /> 
														<a
															class="btn btn-danger fas fa-trash" href="${deleteURL }"
															onclick="return confirm('Bạn có chắc xóa khách hàng số #${kh.iMaKhachHang}?')"
															style="width: 50px;" role="button">
														</a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Modal Chỉnh Sửa Khách Hàng -->
				<div id="KhachHangEdit" class="modal fade" role ="dialog">
					<div class="modal-dialog">
						<!-- Modal Content -->
						<div class="modal-content">
							<div class="modal-header">
								<h2 class="text-dark text-justify" id="headermodal"></h2>
								<i class="close fas fa-window-close" data-dismiss="modal"></i>
							</div>
							
							<div class="modal-body justify-content-center">
								<spring:url value="/khachhang/savekh" var="saveURL" />
								<form:form modelAttribute="khForm" method="post"
									action="${saveURL }" cssClass="form">
									
									<form:hidden path="iMaKhachHang" id="iMaKhachHang" />
									
									<div class="form-group">
           								 <label>Tên Khách Hàng</label>
           								 <form:input path="sHoTen" cssClass="form-control" id="sHoTen" value="Nghĩa"/>
        							</div>
									
									<div class="form-group">
           								 <label>Giới Tính</label>
           								 <form:input path="sGioiTinh" cssClass="form-control" id="sGioiTinh" />
        							</div>
									
									<div class="form-group">
           								 <label>Địa Chỉ</label>
           								 <form:input path="sDiaChi" cssClass="form-control" id="sDiaChi" />
        							</div>
        							        						
									<div class="form-group">
										<label><i class="fas fa-receipt"></i> Loại Khách Hàng</label>
										<form:select path="iMaLoaiKhachHang"
											cssClass="form-control dropdown-toggle"
											onmousedown="if(this.options.length>8){this.size=8;}"
											onchange="this.size=0;" onblur="this.size=0;">
											<c:forEach items="${lkhList }" var="lkh">
												<form:option value="${lkh.iMaLoaiKhachHang}"
													label="${lkh.sTenLoaiKhachHang}" />
											</c:forEach>
										</form:select>
									</div>
									
									<div class="form-group">
           								 <label>Số Điện Thoại</label>
           								 <form:input path="iSoDienThoai" cssClass="form-control" id="iSoDienThoai" />
        							</div>
        							
        							<div class="form-group">
           								 <label>Thành Phố</label>
           								 <form:input path="sThanhPho" cssClass="form-control" id="sThanhPho" />
        							</div>

									<button href="saveURL" type="submit" class="btn btn-primary"
										style="float: right;"
										onclick="return confirm('Bạn có chắc chắn lưu thay đổi này?')">
										<i class="fas fa-save"></i> Lưu thay đổi
									</button>
								</form:form>
							</div>
						</div>
					</div>
				</div>


				<!-- Modal Thêm Khách Hàng-->
				<div id="KhachHangInsert" class="modal fade" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<h2 class="text-dark text-justify" id="headermodal"></h2>
								<i class="close fas fa-window-close" data-dismiss="modal"></i>
							</div>

							<div class="modal-body justify-content-center">

								<spring:url value="/khachhang/savekh" var="saveURL" />
								
								<form:form modelAttribute="khForm" method="post"
									action="${saveURL }" cssClass="form">
									
									<form:hidden path="iMaKhachHang" id="iMaKhachHang" />
									
									<div class="form-group">
           								 <label>Tên Khách Hàng</label>
           								 <form:input path="sHoTen" cssClass="form-control" id="sHoTen" />
        							</div>
									
									<div class="form-group">
           								 <label>Giới Tính</label>
           								 <form:input path="sGioiTinh" cssClass="form-control" id="sGioiTinh" />
        							</div>
									
									<div class="form-group">
           								 <label>Địa Chỉ</label>
           								 <form:input path="sDiaChi" cssClass="form-control" id="sDiaChi" />
        							</div>
        							        						
									<div class="form-group">
										<label><i class="fas fa-receipt"></i> Loại Khách Hàng</label>
										<form:select path="iMaLoaiKhachHang"
											cssClass="form-control dropdown-toggle"
											onmousedown="if(this.options.length>8){this.size=8;}"
											onchange="this.size=0;" onblur="this.size=0;">
											<c:forEach items="${lkhList }" var="lkh">
												<form:option value="${lkh.iMaLoaiKhachHang}"
													label="${lkh.sTenLoaiKhachHang}" />
											</c:forEach>
										</form:select>
									</div>
									
									<div class="form-group">
           								 <label>Số Điện Thoại</label>
           								 <form:input path="iSoDienThoai" cssClass="form-control" id="iSoDienThoai" />
        							</div>
        							
        							<div class="form-group">
           								 <label>Thành Phố</label>
           								 <form:input path="sThanhPho" cssClass="form-control" id="sThanhPho" />
        							</div>

									<button href="saveURL" type="submit" class="btn btn-primary"
										style="float: right;"
										onclick="return confirm('Bạn có chắc chắn lưu thay đổi này?')">
										<i class="fas fa-save"></i> Lưu thay đổi
									</button>
								</form:form>

							</div>

						</div>

					</div>
				</div>
				
				
				
				
				<!-- Footer -->
				<jsp:include page="admin/footer.jsp"></jsp:include>
			</div>
		</div>
	</div>
	
	<!-- Thanh cuộn lên trang đầu -->
	<a class="scroll-to-top rounded" href="#page-top"
		style="display: inline;"> <i class="fas fa-angle-up"></i>
	</a>

	<!-- Script -->
	<jsp:include page="admin/script.jsp"></jsp:include>
</body>
</html>






<%-- <div class="container">
		<h2>Danh Sách Khách Hàng</h2>
		<table class="table table-striped">
			<thead>
				<th scope="row">Mã Khách Hàng</th>
				<th scope="row">Họ Tên</th>
				<th scope="row">Giới Tính</th>
				<th scope="row">Địa Chỉ</th>
				<th scope="row">Loại Khách Hàng</th>
				<th scope="row">Số Điện Thoại</th>
				<th scope="row">Thành Phố</th>
				<th scope="row">Thao tác</th>
			</thead>
			<tbody>
				<c:forEach items="${khList }" var="kh">
					<tr>
						<td>${kh.iMaKhachHang }</td>
						<td>${kh.sHoTen}</td>
						<td>${kh.sGioiTinh }</td>
						<td>${kh.sDiaChi }</td>
						<td>${kh.iMaLoaiKhachHang.sTenLoaiKhachHang }
						<td>${kh.iSoDienThoai }
						<td>${kh.sThanhPho }
						<td><spring:url
								value="/khachhang/updatekhachhang/${kh.iMaKhachHang }"
								var="updateURL" /> <a class="btn btn-primary"
							href="${updateURL }" role="button">Update</a> <spring:url
								value="/khachhang/deletekh/${kh.iMaKhachHang }" var="deleteURL" />
							<a class="btn btn-danger" href="${deleteURL }" role="button">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<spring:url value="/khachhang/addkh/" var="addURL" />
		<a class="btn btn-primary" href="${addURL }" role="button">Thêm
			Khách Hàng</a>
	</div> --%>