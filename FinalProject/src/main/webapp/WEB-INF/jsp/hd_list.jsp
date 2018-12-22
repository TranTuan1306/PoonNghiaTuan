<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hóa Đơn</title>

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
					<li class="breadcrumb-item active"><a href="/hoadon/">Hóa
							Đơn</a></li>
				</ol>

				<!-- Nội Dung -->
				<%-- <jsp:include page="content.jsp"></jsp:include> --%>

				<spring:url value="/hoadon/savehd" var="saveURL" />
				<div class="card mb-3">
					<div class="card-header">
						<!-- <i class="fas fa-table"></i> -->
						Danh sách hóa đơn
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-sm-12">
								<table class="table table-bordered dataTable" id="dataTable"
									role="grid" aria-describedby="dataTable_info"
									style="width: 100%;">
									<button class="btn btn-primary" data-toggle="modal"
										data-target="#HoaDon"
										onclick="document.getElementById('headermodal').innerHTML='Thêm hóa đơn mới';"
										style="float: right;">
										<i class="fas fa-plus"></i> Thêm hóa đơn
									</button>
									<thead>
										<tr role="row" align="center">
											<th class="sorting_asc" tabindex="0"
												aria-controls="dataTable" rowspan="1" colspan="1"
												aria-sort="ascending" style="width: auto;">Mã hóa đơn</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Thời điểm
											</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Khách hàng
											</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Nhân viên
											</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Loại hóa
												đơn</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Thao tác</th>
										</tr>
									</thead>
									<tfoot>
										<tr align="center">
											<th rowspan="1" colspan="1">Mã hóa đơn</th>
											<th rowspan="1" colspan="1">Thời điểm</th>
											<th rowspan="1" colspan="1">Khách hàng</th>
											<th rowspan="1" colspan="1">Nhân viên</th>
											<th rowspan="1" colspan="1">Loại hóa đơn</th>
											<th rowspan="1" colspan="1">Thao tác</th>
										</tr>
									</tfoot>
									<tbody>
										<c:forEach items="${hdList }" var="hd">
											<tr>
												<td align="center">${hd.iMaHD }</td>
												<td align="center">${hd.dThoiDiem}</td>
												<td align="center">${hd.iMaKH.sHoTen}</td>
												<td align="center">${hd.iMaNV.sHoTen }</td>
												<td align="center">${hd.iLoaiHoaDon.sTenLoaiHoaDon }
												<td align="center"><spring:url
														value="/chitiethoadon/list/${hd.iMaHD }"
														var="chitiethoadonURL" /> <!-- Detail  --> <a
													class="btn btn-success fas fa-info"
													href="${chitiethoadonURL }" style="width: 50px;"
													role="button"></a> <!-- Edit --> <a
													th:href="@{hoadon/findOne/(id=${hd.iMaHD })}"
													class="btn btn-primary fas fa-pen eBtn" id="updatebutton"
													onclick="document.getElementById('headermodal').innerHTML='Sửa hóa đơn số #${hd.iMaHD}';
                                           					document.getElementById('iMaHD').value = ${hd.iMaHD};"
													data-toggle="modal" data-target="#HoaDon"
													style="width: 50px;" role="button"></a> <!-- Delete --> <spring:url
														value="/hoadon/deletehd/${hd.iMaHD }" var="deleteURL" />
													<a class="btn btn-danger fas fa-trash" href="${deleteURL }"
													onclick="return confirm('Bạn có chắc xóa hóa đơn số #${hd.iMaHD}?')"
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


				<!-- Modal thêm Hóa Đơn-->
				<div id="HoaDon" class="modal fade" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<h2 class="text-dark text-justify" id="headermodal"></h2>
								<i class="close fas fa-window-close" data-dismiss="modal"></i>
							</div>

							<div class="modal-body justify-content-center">

								<spring:url value="/hoadon/savehd" var="saveURL" />
								<form:form modelAttribute="hdForm" method="post"
									action="${saveURL }" cssClass="form">
									<form:hidden path="iMaHD" id="iMaHD" />
									<form:hidden path="dThoiDiem" />

									<div class="form-group">
										<label><i class="fas fa-user"></i> Khách hàng</label>
										<form:select path="iMaKH"
											cssClass="form-control dropdown-toggle"
											onmousedown="if(this.options.length>8){this.size=8;}"
											onchange="this.size=0;" onblur="this.size=0;">
											<c:forEach items="${khList }" var="kh">
												<form:option value="${kh.iMaKhachHang}" label="${kh.sHoTen}" />
											</c:forEach>
										</form:select>
									</div>

									<div class="form-group">
										<label><i class="fas fa-users"></i> Nhân viên</label>
										<form:select path="iMaNV"
											cssClass="form-control dropdown-toggle"
											onmousedown="if(this.options.length>8){this.size=8;}"
											onchange="this.size=0;" onblur="this.size=0;">
											<c:forEach items="${nvList }" var="nv">
												<form:option value="${nv.iMaNV}" label="${nv.sHoTen}" />
											</c:forEach>
										</form:select>
									</div>

									<div class="form-group">
										<label><i class="fas fa-receipt"></i> Loại hóa đơn</label>
										<form:select path="iLoaiHoaDon"
											cssClass="form-control dropdown-toggle"
											onmousedown="if(this.options.length>8){this.size=8;}"
											onchange="this.size=0;" onblur="this.size=0;">
											<c:forEach items="${lhdList }" var="lhd">
												<form:option value="${lhd.iMaLoaiHoaDon}"
													label="${lhd.sTenLoaiHoaDon}" />
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







<%-- <div class="container">
  <h2>Danh Sách Hóa Đơn</h2>
  <table class="table table-striped">
   <thead>
    <th scope="row">Mã hóa đơn</th>
    <th scope="row">Thời điểm</th>
    <th scope="row">Mã khách hàng</th>
    <th scope="row">Mã nhân viên</th>
    <th scope="row">Loại hóa đơn</th>
    <th scope="row">Thao tác</th>
   </thead>
   <tbody>
    <c:forEach items="${hdList }" var="hd" >
     <tr>
      <td>${hd.iMaHD }</td>
      <td>${hd.dThoiDiem} </td>
      <td>${hd.iMaKH.iMaKhachHang }</td>
      <td>${hd.iMaNV.iMaNV }</td>
      <td>${hd.iLoaiHoaDon.iMaLoaiHoaDon }
      <td>
      <spring:url value="/chitiethoadon/list/${hd.iMaHD }" var="chitiethoadonURL" />
       <a class="btn btn-success" href="${chitiethoadonURL }" role="button" >Detail</a>
       <spring:url value="/hoadon/updatehd/${hd.iMaHD }" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
       <spring:url value="/hoadon/deletehd/${hd.iMaHD }" var="deleteURL" />
       <a class="btn btn-danger" href="${deleteURL }" role="button" >Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
  <spring:url value="/hoadon/addhd/" var="addURL" />
  <a class="btn btn-primary" href="${addURL }" role="button" >Thêm hóa đơn</a>
 </div> --%>