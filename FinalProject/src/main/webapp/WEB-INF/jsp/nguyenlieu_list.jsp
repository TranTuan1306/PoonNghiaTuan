<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nguyên Liệu</title>
<link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Danh Sách Nguyên Liệu</h2>
		<table class="table table-striped">
			<thead>
				<th scope="row">Mã Nguyên Liệu</th>
				<th scope="row">Tên Nguyên Liệu</th>
				<th scope="row">Đơn Vị</th>
				<th scope="row">Đơn Giá</th>
				<th scope="row">Thao Tác</th>
				
			</thead>
			<tbody>
				<c:forEach items="${nguyenlieuList }" var="nl">
					<tr>
						<td>${nl.iMaNguyenLieu }</td>
						<td>${nl.sTenNguyenLieu}</td>
						<td>${nl.sDonVi }</td>
						<td>${nl.iGiaTien }
						<td><spring:url value="/nguyenlieu/updatenguyenlieu/${nl.iMaNguyenLieu }"
								var="updateURL" /> <a class="btn btn-primary"
							href="${updateURL }" role="button">Update</a> <spring:url
								value="/nguyenlieu/deletenguyenlieu/${nl.iMaNguyenLieu }" var="deleteURL" /> <a
							class="btn btn-danger" href="${deleteURL }" role="button">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<spring:url value="/nguyenlieu/addnguyenlieu/" var="addURL" />
    	<a class="btn btn-primary" href="${addURL }" role="button" >Thêm Nguyên Liệu Mới</a>
	</div>
</body>
</html>