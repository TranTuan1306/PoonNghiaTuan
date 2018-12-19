<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Thêm Loại Khách Hàng</title>
    <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <spring:url value="/loaikhachhang/saveloaikhachhang" var="saveURL" />
    <h2>Danh Mục Loại Khách Hàng</h2>
    <form:form modelAttribute="loaikhachhangForm" method="post" action="${saveURL }" cssClass="form" >
        <form:hidden path="iMaLoaiKhachHang"/>
        <div class="form-group">
            <label>Tên Loại Khách Hàng</label>
            <form:input path="sTenLoaiKhachHang" cssClass="form-control" id="sTenLoaiKhachHang" />
        </div>
        <button type="submit" class="btn btn-primary">Lưu</button>
    </form:form>

</div>
</body>
</html>