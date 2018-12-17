<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Danh Mục Loại Hóa Đơn</title>
    <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <h2>Danh Mục Loại Hóa Đơn</h2>
    <table class="table table-striped">
        <thead>
        <th scope="row">Mã Loại</th>
        <th scope="row">Tên Loại</th>
        <th scope="row">Thao tác</th>
        </thead>
        <tbody>
        <c:forEach items="${loaihoadonList }" var="lhd" >
            <tr>
                <td>${lhd.iMaLoaiHoaDon }</td>
                <td>${lhd.sTenLoaiHoaDon }</td>
                <td>
                    <spring:url value="/loaihoadon/updateloaihoadon/${lhd.iMaLoaiHoaDon }" var="updateURL" />
                    <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
          
                    <spring:url value="/loaihoadon/deleteloaihoadon/${lhd.iMaLoaiHoaDon }" var="deleteURL" />
                    <a class="btn btn-danger" href="${deleteURL }" role="button" >Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <spring:url value="/loaihoadon/addloaihoadon/" var="addURL" />
    <a class="btn btn-primary" href="${addURL }" role="button" >Thêm loại hóa đơn</a>
</div>
</body>
</html>