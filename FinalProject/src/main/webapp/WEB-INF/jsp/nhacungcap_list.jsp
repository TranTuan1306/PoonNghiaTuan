<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh Sách Nhà Cung Cấp
	</title>
		<link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css"
			rel="stylesheet" /> <script
			src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script> <script
			src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Danh Sách Nhà Cung Cấp</h2>
		<table class="table table-striped">
			<thead>
				<th scope="row">Mã Nhà Cung Cấp</th>
				<th scope="row">Tên Nhà Cung Cấp</th>
				<th scope="row">Địa Chỉ</th>
				<th scope="row">Số Điện Thoại</th>
				<th scope="row">Thao tác</th>

			</thead>
			<tbody>
				<c:forEach items="${nhacungcapList }" var="ncc">
					<tr>
						<td>${ncc.iMaNhaCungCap }</td>
						<td>${ncc.sTenNhaCungCap}</td>
						<td>${ncc.sDiaChi }</td>
						<td>${ncc.sSoDienThoai }
						<td><spring:url
								value="/nhacungcap/updatenhacungcap/${ncc.iMaNhaCungCap }"
								var="updateURL" /> <a class="btn btn-primary"
							href="${updateURL }" role="button">Update</a> <spring:url
								value="/nhacungcap/deletenhacungcap/${ncc.iMaNhaCungCap }"
								var="deleteURL" /> <a class="btn btn-danger"
							href="${deleteURL }" role="button">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<spring:url value="/nhacungcap/addnhacungcap/" var="addURL" />
		<a class="btn btn-primary" href="${addURL }" role="button">Thêm
			Nhà Cung Cấp Mới</a>
	</div>
</body>
</html>