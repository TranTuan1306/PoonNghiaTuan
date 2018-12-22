<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nhân Viên</title>

<!-- <script type="text/javascript" th:src="@{js/main.js}" src="../templates/js/main.js"></script> -->

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
<body id ="page-top">
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
					<li class="breadcrumb-item active"><a href="/nhanvien/">Nhân Viên</a></li>
				</ol>

				<!-- Nội Dung -->
				<%-- <jsp:include page="content.jsp"></jsp:include> --%>

				<spring:url value="/nhanvien/savenv" var="saveURL" />
				<div class="card mb-3">
					<div class="card-header">
						<!-- <i class="fas fa-table"></i> -->
						Danh sách nhân viên
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-sm-12">
								<table class="table table-bordered dataTable" id="dataTable"
									role="grid" aria-describedby="dataTable_info"
									style="width: 100%;">
									<button class="btn btn-primary" data-toggle="modal"
										data-target="#NhanVien"
										onclick="document.getElementById('headermodal').innerHTML='Thêm nhân viên mới';"
										style="float: right;">
										<i class="fas fa-plus"></i> Thêm nhân viên
									</button>
									<thead>
										<tr role="row" align="center">
											<th class="sorting_asc" tabindex="0"
												aria-controls="dataTable" rowspan="1" colspan="1"
												aria-sort="ascending" style="width: auto;">Mã Nhân Viên</th>
												
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Họ Tên
											</th>
											
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Giới Tính
											</th>
											
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Tuổi
											</th>
											
										<!-- 	<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Địa Chỉ
												</th>
												
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Ngày Bắt Đầu
												</th>
												
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Lương
												</th>
												
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Tài Khoản
												</th>
												
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Mật Khẩu
												</th> -->
											
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Công Việc
												</th>	
											
											<!-- <th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Trạng Thái
												</th>	 -->
											
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Thao tác</th>
										</tr>
									</thead>
									<tfoot>
										<tr align="center">
											<th rowspan="1" colspan="1">Mã Nhân Viên</th>
											<th rowspan="1" colspan="1">Họ Tên</th>
											<th rowspan="1" colspan="1">Giới Tính</th>
											<th rowspan="1" colspan="1">Tuổi</th>
										<!-- 	<th rowspan="1" colspan="1">Địa Chỉ</th>
											<th rowspan="1" colspan="1">Ngày Bắt Đầu</th>
											<th rowspan="1" colspan="1">Lương</th>
											<th rowspan="1" colspan="1">Tài Khoản</th>
											<th rowspan="1" colspan="1">Mật Khẩu</th> -->
											<th rowspan="1" colspan="1">Công Việc</th>
											<!-- <th rowspan="1" colspan="1">Trạng Thái Nhân Viên</th> -->
											<th rowspan="1" colspan="1">Thao tác</th>
										</tr>
									</tfoot>
									<tbody>
										<c:forEach items="${nvList }" var="nv">
											<tr>
												<td align="center">${nv.iMaNV }</td>
												<td align="center">${nv.sHoTen}</td>
												<td align="center">${nv.sGioiTinh}</td>
												<td align="center">${nv.iTuoi }</td>
												<%-- <td align="center">${nv.sDiaChi }
												<td align="center">${nv.dThoiDiem }
												<td align="center">${nv.iLuong }
												<td align="center">${nv.sTaiKhoan }
												<td align="center">${nv.sMatKhau } --%>
												<td align="center">${nv.iMaCV.sTenCV }
												<%-- <td align="center">${nv.bTrangThai } --%>
												<td align="center">
												
													<%-- <spring:url
														value="/chitiethoadon/list/${hd.iMaHD }"
														var="chitiethoadonURL" /> <!-- Detail  --> <a
													class="btn btn-success fas fa-info"
													href="${chitiethoadonURL }" style="width: 50px;"
													role="button"></a>  --%>
													
													
													<!-- Edit --> 
													<a
													
													class="btn btn-primary fas fa-pen" id="updatebutton"
													onclick="document.getElementById('headermodal').innerHTML='Cập nhật nhân viên số #${nv.iMaNV}';
                                           					document.getElementById('iMaNV').value = ${nv.iMaNV};"
													data-toggle="modal" data-target="#NhanVien"
													style="width: 50px;" role="button"></a> <!-- Delete --> <spring:url
														value="/nhanvien/deletenv/${nv.iMaNV }" var="deleteURL" />
													<a class="btn btn-danger fas fa-trash" href="${deleteURL }"
													onclick="return confirm('Bạn có chắc xóa nhân viên số #${nv.iMaNV}?')"
													style="width: 50px;" role="button"></a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>


								<%-- <ul class= "nav nav-pills">
									<li class="nav-item" 
									th:each="i : ${#numbers.sequence(0,data.totalPages - 1)}"></li>
									<a th:text="${i}" class="nav-link"></a>
									<p>Alo Alo</p>
								</ul> --%>


							</div>
						</div>
					</div>
				</div>


				<!-- Modal Nhân Viên-->
				<div id="NhanVien" class="modal fade" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<h2 class="text-dark text-justify" id="headermodal"></h2>
								<i class="close fas fa-window-close" data-dismiss="modal"></i>
							</div>

							<div class="modal-body justify-content-center">

								<spring:url value="/nhanvien/savenv" var="saveURL" />
								<form:form modelAttribute="nhanvienForm" method="post"
									action="${saveURL }" cssClass="form">
									<form:hidden path="iMaNV" id="iMaNV" />
									<form:hidden path="dThoiDiem" />
									
									<div class="form-group">
           								 <label>Tên Nhân Viên</label>
           								 <form:input path="sHoTen" cssClass="form-control" id="sHoTen" value=""/>
        							</div>
        							
        							<div class="form-group">
           								 <label>Giới Tính</label>
           								 <form:input path="sGioiTinh" cssClass="form-control" id="sGioiTinh" value=""/>
        							</div>
        							
        							<div class="form-group">
           								 <label>Tuổi</label>
           								 <form:input path="iTuoi" cssClass="form-control" id="iTuoi" value=""/>
        							</div>
        							
        							<div class="form-group">
           								 <label>Địa Chỉ</label>
           								 <form:input path="sDiaChi" cssClass="form-control" id="sDiaChi" value=""/>
        							</div>
        							
        							<div class="form-group">
           								 <label>Lương</label>
           								 <form:input path="iLuong" cssClass="form-control" id="iLuong" value=""/>
        							</div>
        							
        							<div class="form-group">
           								 <label>Tài Khoản</label>
           								 <form:input path="sTaiKhoan" cssClass="form-control" id="sTaiKhoan" value=""/>
        							</div>
        							
        							<div class="form-group">
           								 <label>Mật Khẩu</label>
           								 <form:input path="sMatKhau" cssClass="form-control" id="sMatKhau" value=""/>
        							</div>

									<div class="form-group">
										<label><i class="fas fa-user"></i> Công Việc</label>
										<form:select path="iMaCV"
											cssClass="form-control dropdown-toggle"
											onmousedown="if(this.options.length>8){this.size=8;}"
											onchange="this.size=0;" onblur="this.size=0;">
											<c:forEach items="${cvList }" var="cv">
												<form:option value="${cv.iMaCV}" label="${cv.sTenCV}" />
											</c:forEach>
										</form:select>
									</div>

									<button href="saveURL" type="submit" class="btn btn-primary"
										style="float: right;"
										onclick="return confirm('Bạn có muốn lưu thay đổi này?')">
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
