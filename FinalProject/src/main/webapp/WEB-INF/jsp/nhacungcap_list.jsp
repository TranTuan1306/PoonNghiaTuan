<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nhà Cung Cấp</title>

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
					<li class="breadcrumb-item active"><a href="/nhacungcap/">Nhà
							Cung Cấp</a></li>
				</ol>

				<!-- Bảng Nhà Cung Cấp -->
				<spring:url value="/nhacungcap/savenhacungcap" var="saveURL" />
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> Danh sách nhà cung cấp
					</div>

					<div class="card-body">
						<div class="row">
							<div class="col-sm-12">
								<table class="table table-bordered dataTable" id="dataTable"
									role="grid" aria-describedby="dataTable_info"
									style="width: 100%;">
									<button class="btn btn-primary" data-toggle="modal"
										data-target="#NhaCungCap"
										onclick="document.getElementById('headermodal').innerHTML='Thêm nhà cung cấp nguyên liệu mới';"
										style="float: right;">
										<i class="fas fa-plus"></i> Thêm nhà cung cấp
									</button>
									<thead>
										<tr role="row" align="center">
											<th class="sorting_asc" tabindex="0"
												aria-controls="dataTable" rowspan="1" colspan="1"
												aria-sort="ascending" style="width: auto;">Mã Nhà Cung
												Cấp</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Tên Nhà
												Cung Cấp</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Địa Chỉ</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Số Điện
												Thoại</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Thao tác</th>
										</tr>
									</thead>
									<tfoot>
										<tr align="center">
											<th rowspan="1" colspan="1">Mã Nhà Cung Cấp</th>
											<th rowspan="1" colspan="1">Tên Nhà Cung Cấp</th>
											<th rowspan="1" colspan="1">Địa Chỉ</th>
											<th rowspan="1" colspan="1">Số Điện Thoại</th>

											<th rowspan="1" colspan="1">Thao tác</th>
										</tr>
									</tfoot>
									<tbody>
										<c:forEach items="${nhacungcapList }" var="ncc">
											<tr>
												<td align="center">${ncc.iMaNhaCungCap }</td>
												<td align="center">${ncc.sTenNhaCungCap}</td>
												<td align="center">${ncc.sDiaChi}</td>
												<td align="center">${ncc.sSoDienThoai }</td>
												<td align="center">
													<!-- Chỉnh sửa nguyên liệu --> <a
													class="btn btn-primary fas fa-pen" href="#"
													id="updatebutton"
													onclick="document.getElementById('headermodal').innerHTML='Chỉnh sửa nhà cung cấp số #${ncc.iMaNhaCungCap}';
                                           				document.getElementById('iMaNhaCungCap').value = ${ncc.iMaNhaCungCap};"
													data-toggle="modal" data-target="#NhaCungCap"
													style="width: 50px;" role="button"> </a> <spring:url
														value="/nhacungcap/deletenhacungcap/${ncc.iMaNhaCungCap }"
														var="deleteURL" /> <a class="btn btn-danger fas fa-trash"
													href="${deleteURL }"
													onclick="return confirm('Bạn có chắc xóa nhà cung cấp số #${ncc.iMaNhaCungCap}?')"
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


				<!-- Modal Nhà Cung Cấp -->
				<div id="NhaCungCap" class="modal fade" role="dialog">
					<div class="modal-dialog">
						<!-- Modal Content -->
						<div class="modal-content">
							<div class="modal-header">
								<h2 class="text-dark text-justify" id="headermodal"></h2>
								<i class="close fas fa-window-close" data-dismiss="modal"></i>
							</div>

							<div class="modal-body justify-content-center">
								<spring:url value="/nhacungcap/savenhacungcap" var="saveURL" />
								<form:form modelAttribute="nhacungcapForm" method="post"
									action="${saveURL }" cssClass="form">

									<form:hidden path="iMaNhaCungCap" id="iMaNhaCungCap" />

									<div class="form-group">
										<label>Tên Nhà Cung Cấp</label>
										<form:input path="sTenNhaCungCap" cssClass="form-control"
											id="sTenNhaCungCap" value="" />
									</div>

									<div class="form-group">
										<label>Địa Chỉ</label>
										<form:input path="sDiaChi" cssClass="form-control"
											id="sDiaChi" />
									</div>

									<div class="form-group">
										<label>Số Điện Thoại</label>
										<form:input path="sSoDienThoai" cssClass="form-control"
											id="sSoDienThoai" />
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
