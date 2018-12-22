<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Loại Hóa Đơn</title>
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
					<li class="breadcrumb-item active"><a href="/loaihoadon/">Loại Hóa Đơn</a></li>
				</ol>
				
				<!-- Bảng Loại Hóa Đơn -->
				<spring:url value="/loaihoadon/saveloaihoadon" var="saveURL" />
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> Danh sách loại hóa đơn
					</div>
					
					<div class="card-body">
						<div class="row">
							<div class="col-sm-12">
								<table class="table table-bordered dataTable" id="dataTable"
									role="grid" aria-describedby="dataTable_info"
									style="width: 100%;">
									<button class="btn btn-primary" data-toggle="modal"
										data-target="#LoaiHoaDon"
										onclick="document.getElementById('headermodal').innerHTML='Thêm loại hóa đơn mới';"
										style="float: right;">
										<i class="fas fa-plus"></i> Thêm loại hóa đơn
									</button>
									<thead>
										<tr role="row" align="center">
											<th class="sorting_asc" tabindex="0"
												aria-controls="dataTable" rowspan="1" colspan="1"
												aria-sort="ascending" style="width: auto;">Mã Loại Hóa Đơn</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Tên Loại Hóa Đơn
											</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Thao Tác
											</th>
										</tr>
									</thead>
									<tfoot>
										<tr align="center">
											<th rowspan="1" colspan="1">Mã Loại Hóa Đơn</th>
											<th rowspan="1" colspan="1">Tên Loại Hóa Đơn</th>
											<th rowspan="1" colspan="1">Thao tác</th>
										</tr>
									</tfoot>
									<tbody>
										<c:forEach items="${loaihoadonList }" var="lhd">
											<tr>
												<td align="center">${lhd.iMaLoaiHoaDon }</td>
												<td align="center">${lhd.sTenLoaiHoaDon}</td>
						
												<td align="center">
													
													<!-- Chỉnh sửa loại hóa đơn -->
													<a class="btn btn-primary fas fa-pen"
														href="#" id="updatebutton"
														onclick="document.getElementById('headermodal').innerHTML='Chỉnh sửa loại hóa đơn số #${lhd.iMaLoaiHoaDon}';
                                           				document.getElementById('iMaLoaiHoaDon').value = ${lhd.iMaLoaiHoaDon};"
														data-toggle="modal" data-target="#LoaiHoaDon"
														style="width: 50px;" role="button">
													</a>
													 
													<spring:url
														value="/loaihoadon/deleteloaihoadon/${lhd.iMaLoaiHoaDon }" var="deleteURL" /> 
														<a
															class="btn btn-danger fas fa-trash" href="${deleteURL }"
															onclick="return confirm('Bạn có chắc xóa loại hóa đơn số #${lhd.iMaLoaiHoaDon}?')"
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
				
				<!-- Modal Chỉnh Sửa Loại Hóa Đơn -->
				<div id="LoaiHoaDon" class="modal fade" role ="dialog">
					<div class="modal-dialog">
						<!-- Modal Content -->
						<div class="modal-content">
							<div class="modal-header">
								<h2 class="text-dark text-justify" id="headermodal"></h2>
								<i class="close fas fa-window-close" data-dismiss="modal"></i>
							</div>
							
							<div class="modal-body justify-content-center">
								<spring:url value="/loaihoadon/saveloaihoadon" var="saveURL" />
								<form:form modelAttribute="loaihoadonForm" method="post"
									action="${saveURL }" cssClass="form">
									
									<form:hidden path="iMaLoaiHoaDon" id="iMaLoaiHoaDon" />
									
									<div class="form-group">
           								 <label>Tên Loại Hóa Đơn</label>
           								 <form:input path="sTenLoaiHoaDon" cssClass="form-control" id="sTenLoaiHoaDon" value=""/>
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
