<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Nhà Cung Cấp Nguyên Liệu</title>
    <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <spring:url value="/nhacungcap/savenhacungcap" var="saveURL" />
    <h2>Danh Mục Nhà Cung Cấp</h2>
    <form:form modelAttribute="nhacungcapForm" method="post" action="${saveURL }" cssClass="form" >
        <form:hidden path="iMaNhaCungCap"/>
        <div class="form-group">
            <label>Tên Nhà Cung Cấp</label>
            <form:input path="sTenNhaCungCap" cssClass="form-control" id="sTenNhaCungCap" />
        </div>
        <div class="form-group">
            <label>Địa Chỉ</label>
            <form:input path="sDiaChi" cssClass="form-control" id="sDiaChi" />
        </div>
        <div class="form-group">
            <label>Số Điện Thoại</label>
            <form:input path="sSoDienThoai" cssClass="form-control" id="sSoDienThoai" />
        </div>
        <button type="submit" class="btn btn-primary">Lưu</button>
    </form:form>

</div>
</body>
</html>