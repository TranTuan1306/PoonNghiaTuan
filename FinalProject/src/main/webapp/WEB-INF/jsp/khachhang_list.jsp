<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh Sách Khách Hàng</title>
<link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
	<div class="container">
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
						<td>${kh.iLoaiKhachHang.iLoaiKhachHang }
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
	</div>
</body>
</html>