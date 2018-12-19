<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Danh Mục Loại Khách Hàng</title>
    <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <h2>Danh Mục Loại Khách Hàng</h2>
    <table class="table table-striped">
        <thead>
        <th scope="row">Mã Loại</th>
        <th scope="row">Tên Loại</th>
        <th scope="row">Thao tác</th>
        </thead>
        <tbody>
        <c:forEach items="${loaikhachhangList }" var="lkh" >
            <tr>
                <td>${lkh.iMaLoaiKhachHang }</td>
                <td>${lkh.sTenLoaiKhachHang }</td>
                <td>
                    <spring:url value="/loaikhachhang/updateloaikhachhang/${lkh.iMaLoaiKhachHang }" var="updateURL" />
                    <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
          
                    <spring:url value="/loaikhachhang/deleteloaikhachhang/${lkh.iMaLoaiKhachHang }" var="deleteURL" />
                    <a class="btn btn-danger" href="${deleteURL }" role="button" >Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <spring:url value="/loaikhachhang/addloaikhachhang/" var="addURL" />
    <a class="btn btn-primary" href="${addURL }" role="button" >Thêm Loại Khách Hàng</a>
</div>
</body>
</html>