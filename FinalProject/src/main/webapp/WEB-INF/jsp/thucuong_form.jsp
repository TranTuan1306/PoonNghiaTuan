<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Thức Uống</title>
    <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <spring:url value="/thucuong/savethucuong" var="saveURL" />
    <h2>Danh Mục Thức Uống</h2>
    <form:form modelAttribute="thucuongForm" method="post" action="${saveURL }" cssClass="form" >
        <form:hidden path="iMaThucUong"/>
        <div class="form-group">
            <label>Tên Thức Uống</label>
            <form:input path="sTenThucUong" cssClass="form-control" id="sTenThucUong" />
        </div>
        <div class="form-group">
            <label>Giá Tiền</label>
            <form:input path="iGiaThanh" cssClass="form-control" id="iGiaThanh" />
        </div>
        <div class="form-group">
            <label>Link Ảnh</label>
            <form:input path="sLinkAnh" cssClass="form-control" id="sLinkAnh" />
        </div>
        <div class="form-group">
            <label>Mã Loại</label>
            <form:input path="iMaLoaiThucUong" cssClass="form-control" id="iMaLoaiThucUong" />
        </div>
        <button type="submit" class="btn btn-primary">Lưu</button>
    </form:form>

</div>
</body>
</html>