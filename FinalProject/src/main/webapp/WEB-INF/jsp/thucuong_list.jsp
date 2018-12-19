<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh Sách Thức Uống</title>
<link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Danh Sách Thức Uống</h2>
		<table class="table table-striped">
			<thead>
				<th scope="row">Mã Thức Uống</th>
				<th scope="row">Tên Thức Uống</th>
				<th scope="row">Đơn Giá</th>
				<th scope="row">Mã Loại Thức Uống</th>
				<th scope="row">Thao tác</th>

			</thead>
			<tbody>
				<c:forEach items="${thucuongList }" var="tu">
					<tr>
						<td>${tu.iMaThucUong }</td>
						<td>${tu.sTenThucUong}</td>
						<td>${tu.iGiaThanh }</td>
						<td>${tu.iMaLoaiThucUong }
						<td><spring:url value="/thucuong/updatethucuong/${tu.iMaThucUong }"
								var="updateURL" /> <a class="btn btn-primary"
							href="${updateURL }" role="button">Update</a> <spring:url
								value="/thucuong/deletethucuong/${tu.iMaThucUong }" var="deleteURL" /> <a
							class="btn btn-danger" href="${deleteURL }" role="button">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	<spring:url value="/thucuong/addthucuong/" var="addURL" />
    <a class="btn btn-primary" href="${addURL }" role="button" >Thêm Thức Uống Mới</a>
	</div>
</body>
</html>