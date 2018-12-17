<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Danh Sách Hợp Đồng Cung Cấp Nguyên Liệu</title>
    <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <spring:url value="/hopdongcungcapnguyenlieu/savehdccnl" var="saveURL" />
    <h2>Danh Sách Hợp Đồng Cung Cấp Nguyên Liệu</h2>
    <form:form modelAttribute="hdccnlForm" method="post" action="${saveURL }" cssClass="form" >
        <form:hidden path="iMaHopDong"/>
        <form:hidden path="dNgayCungCap"/>
        <div class="form-group">
            <label>Mã nhà cung cấp</label>
            <form:input path="iMaNhaCungCap" cssClass="form-control" id="iMaNhaCungCap" />
        </div>
        <div class="form-group">
            <label>Mã nhân viên</label>
            <form:input path="iMaNhanVien" cssClass="form-control" id="iMaNhanVien" />
        </div>
        <button type="submit" class="btn btn-primary">Lưu</button>
    </form:form>

</div>
</body>
</html>