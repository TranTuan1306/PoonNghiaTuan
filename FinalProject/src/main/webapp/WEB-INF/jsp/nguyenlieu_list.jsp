<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nguyên Liệu</title>
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
					<li class="breadcrumb-item active"><a href="/nguyenlieu/">Nguyên Liệu</a></li>
				</ol>

				<!-- Bảng Khách Hàng -->
				<spring:url value="/nguyenlieu/savenguyenlieu" var="saveURL" />
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
										data-target="#NguyenLieu"
										onclick="document.getElementById('headermodal').innerHTML='Thêm nguyên liệu mới';"
										style="float: right;">
										<i class="fas fa-plus"></i> Thêm nguyên liệu
									</button>
									<thead>
										<tr role="row" align="center">
											<th class="sorting_asc" tabindex="0"
												aria-controls="dataTable" rowspan="1" colspan="1"
												aria-sort="ascending" style="width: auto;">Mã Nguyên
												Liệu</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Tên Nguyên
												Liệu</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Đơn Vị
												Tính</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Giá Tiền</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Thao tác</th>
										</tr>
									</thead>
									<tfoot>
										<tr align="center">
											<th rowspan="1" colspan="1">Mã Nguyên Liệu</th>
											<th rowspan="1" colspan="1">Tên Nguyên Liệu</th>
											<th rowspan="1" colspan="1">Đơn Vị Tính</th>
											<th rowspan="1" colspan="1">Giá Tiền</th>

											<th rowspan="1" colspan="1">Thao tác</th>
										</tr>
									</tfoot>
									<tbody>
										<c:forEach items="${nguyenlieuList }" var="nl">
											<tr>
												<td align="center">${nl.iMaNguyenLieu }</td>
												<td align="center">${nl.sTenNguyenLieu}</td>
												<td align="center">${nl.sDonVi}</td>
												<td align="center">${nl.iGiaTien }</td>
												<td align="center">
													<!-- Chỉnh sửa nguyên liệu --> <a
													class="btn btn-primary fas fa-pen" href="#"
													id="updatebutton"
													onclick="document.getElementById('headermodal').innerHTML='Chỉnh sửa nguyên liệu số #${nl.iMaNguyenLieu}';
                                           				document.getElementById('iMaNguyenLieu').value = ${nl.iMaNguyenLieu};"
													data-toggle="modal" data-target="#NguyenLieu"
													style="width: 50px;" role="button"> </a> <spring:url
														value="/nguyenlieu/deletenguyenlieu/${nl.iMaNguyenLieu }"
														var="deleteURL" /> <a class="btn btn-danger fas fa-trash"
													href="${deleteURL }"
													onclick="return confirm('Bạn có chắc xóa nguyên liệu số #${nl.iMaNguyenLieu}?')"
													style="width: 50px;" role="button"> </a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

				<!-- Modal Nguyên Liệu -->
				<div id="NguyenLieu" class="modal fade" role="dialog">
					<div class="modal-dialog">
						<!-- Modal Content -->
						<div class="modal-content">
							<div class="modal-header">
								<h2 class="text-dark text-justify" id="headermodal"></h2>
								<i class="close fas fa-window-close" data-dismiss="modal"></i>
							</div>

							<div class="modal-body justify-content-center">
								<spring:url value="/nguyenlieu/savenguyenlieu" var="saveURL" />
								<form:form modelAttribute="nguyenlieuForm" method="post"
									action="${saveURL }" cssClass="form">

									<form:hidden path="iMaNguyenLieu" id="iMaNguyenLieu" />

									<div class="form-group">
										<label>Tên Nguyên Liệu</label>
										<form:input path="sTenNguyenLieu" cssClass="form-control"
											id="sTenNguyenLieu" value="" />
									</div>

									<div class="form-group">
										<label>Đơn Vị</label>
										<form:input path="sDonVi" cssClass="form-control" id="sDonVi" />
									</div>

									<div class="form-group">
										<label>Giá Tiền</label>
										<form:input path="iGiaTien" cssClass="form-control"
											id="iGiaTien" />
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
