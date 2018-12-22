<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thức Uống</title>
<!--  <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
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
				<jsp:include page="admin/thanhdiachi.jsp"></jsp:include>

				<!-- Nội Dung -->
				<%-- <jsp:include page="content.jsp"></jsp:include> --%>
				
				
				<!-- Bảng Thức Uống -->
				<spring:url value="/thucuong/savethucuong" var="saveURL" />
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> Danh sách thức uống
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-sm-12">
								<table class="table table-bordered dataTable" id="dataTable"
									role="grid" aria-describedby="dataTable_info"
									style="width: 100%;">
									<button class="btn btn-primary" data-toggle="modal"
										data-target="#ThucUong"
										onclick="document.getElementById('headermodal').innerHTML='Thêm thức uống mới';"
										style="float: right;">
										<i class="fas fa-plus"></i> Thêm thức uống
									</button>
									<thead>
										<tr role="row" align="center">
											<th class="sorting_asc" tabindex="0"
												aria-controls="dataTable" rowspan="1" colspan="1"
												aria-sort="ascending" style="width: auto;">Mã thức uống</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Tên thức uống
											</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Giá tiền
											</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Link ảnh
											</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Loại thức uống
											</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1" style="width: auto;">Thao tác</th>
										</tr>
									</thead>
									<tfoot>
										<tr align="center">
											<th rowspan="1" colspan="1">Mã thức uống</th>
											<th rowspan="1" colspan="1">Tên thức uống</th>
											<th rowspan="1" colspan="1">Giá tiền</th>
											<th rowspan="1" colspan="1">Link ảnh</th>
											<th rowspan="1" colspan="1">Loại thức uống</th>
											<th rowspan="1" colspan="1">Thao tác</th>
										</tr>
									</tfoot>
									<tbody>
										<c:forEach items="${thucuongList }" var="tu">
											<tr>
												<td align="center">${tu.iMaThucUong }</td>
												<td align="center">${tu.sTenThucUong}</td>
												<td align="center">${tu.iGiaThanh}</td>
												<td align="center">${tu.sLinkAnh }</td>
												<td align="center">${tu.iMaLoaiThucUong.sTenLoaiThucUong }
												<td align="center">
													<spring:url
															value="/chitiethoadon/list/${hd.iMaHD }"
															var="chitiethoadonURL" /> 
														<a
															class="btn btn-success fas fa-info"
															href="${chitiethoadonURL }" style="width: 50px;"
															role="button">
														</a>
													
													<!-- Chỉnh sửa thức uống -->
													<a class="btn btn-primary fas fa-pen"
														href="#" id="updatebutton"
														onclick="document.getElementById('headermodal').innerHTML='Sửa thức uống số #${tu.iMaThucUong}';
                                           				document.getElementById('iMaThucUong').value = ${tu.iMaThucUong};"
														data-toggle="modal" data-target="#ThucUong"
														style="width: 50px;" role="button">
													</a>
													 
													<spring:url
														value="/thucuong/deletethucuong/${tu.iMaThucUong }" var="deleteURL" /> 
														<a
															class="btn btn-danger fas fa-trash" href="${deleteURL }"
															onclick="return confirm('Bạn có chắc xóa thức uống số #${tu.iMaThucUong}?')"
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


				<!-- Modal thêm Hóa Đơn-->
				<div id="ThucUong" class="modal fade" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<h2 class="text-dark text-justify" id="headermodal"></h2>
								<i class="close fas fa-window-close" data-dismiss="modal"></i>
							</div>

							<div class="modal-body justify-content-center">

								<spring:url value="/thucuong/savethucuong" var="saveURL" />
								
								<form:form modelAttribute="thucuongForm" method="post"
									action="${saveURL }" cssClass="form">
									
									<form:hidden path="iMaThucUong" id="iMaThucUong" />
									
									<div class="form-group">
           								 <label>Tên Thức Uống</label>
           								 <form:input path="sTenThucUong" cssClass="form-control" id="sTenThucUong" />
        							</div>
									
									<div class="form-group">
           								 <label>Giá Tiền</label>
           								 <form:input path="iGiaThanh" cssClass="form-control" id="iGiaThanh" />
        							</div>
        							
        							<%-- <div class="form-group">
           								 <label>Ảnh</label>
           								 <form:input path="sLinkAnh" cssClass="form-control" id="sLinkAnh" />
        							</div> --%>
        							
        							<div class="form-group">
        							
	        							<label>Ảnh</label>
	        							<br>
	        							<form action ="/upload" method ="post" enctype="multipart/form-data">
	        								<input type = "file" name ="files" multiple>
	        								<input type="submit" value="Upload"></input>
	        							</form>
	        							
        							</div>
        							

									<div class="form-group">
										<label><i class="fas fa-receipt"></i> Loại thức uống</label>
										<form:select path="iMaLoaiThucUong"
											cssClass="form-control dropdown-toggle"
											onmousedown="if(this.options.length>8){this.size=8;}"
											onchange="this.size=0;" onblur="this.size=0;">
											<c:forEach items="${danhmucthucuongList }" var="danhmuc">
												<form:option value="${danhmuc.iMaLoaiThucUong}"
													label="${danhmuc.sTenLoaiThucUong}" />
											</c:forEach>
										</form:select>
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
	<h2>Danh Mục Thức Uống</h2>
	<table class="table table-striped">
		<thead>
			<th scope="row">ID</th>
			<th scope="row">Tên loại</th>
		</thead>
		<tbody>
			<c:forEach items="${dmtuList }" var="dmtu">
				<tr>
					<td>${dmtu.iMaLoaiThucUong }</td>
					<td>${dmtu.sTenLoaiThucUong }</td>
					<td><spring:url
							value="/danhmucthucuong/updatedmtu/${dmtu.iMaLoaiThucUong }"
							var="updateURL" /> <a class="btn btn-primary"
						href="${updateURL }" role="button">Update</a></td>
					<td><spring:url
							value="/danhmucthucuong/deletedmtu/${dmtu.iMaLoaiThucUong }"
							var="deleteURL" /> <a class="btn btn-primary"
						href="${deleteURL }" role="button">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<spring:url value="/danhmucthucuong/adddmtu/" var="addURL" />
	<a class="btn btn-primary" href="${addURL }" role="button">Thêm
		loại thức uống mới</a>
</div> --%>