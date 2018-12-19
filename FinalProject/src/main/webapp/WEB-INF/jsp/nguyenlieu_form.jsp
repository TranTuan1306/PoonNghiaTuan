<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Nguyên Liệu</title>
    <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <spring:url value="/nguyenlieu/savenguyenlieu" var="saveURL" />
    <h2>Danh Mục Nguyên Liệu</h2>
    <form:form modelAttribute="nguyenlieuForm" method="post" action="${saveURL }" cssClass="form" >
        <form:hidden path="iMaNguyenLieu"/>
        <div class="form-group">
            <label>Tên Nguyên Liệu</label>
            <form:input path="sTenNguyenLieu" cssClass="form-control" id="sTenNguyenLieu" />
        </div>
        <div class="form-group">
            <label>Đơn Vị</label>
            <form:input path="sDonVi" cssClass="form-control" id="sDonVi" />
        </div>
        <div class="form-group">
            <label>Giá Tiền</label>
            <form:input path="iGiaTien" cssClass="form-control" id="iGiaTien" />
        </div>
        <button type="submit" class="btn btn-primary">Lưu</button>
    </form:form>

</div>
</body>
</html>