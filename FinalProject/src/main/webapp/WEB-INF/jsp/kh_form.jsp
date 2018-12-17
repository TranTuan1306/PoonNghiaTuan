<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
    
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Danh Sách Khách Hàng</title>
 <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
 <div class="container">
  <spring:url value="/khachhang/savekh" var="saveURL" />
  <h2>Danh Sách Khách Hàng</h2>
  <form:form modelAttribute="khForm" method="post" action="${saveURL }" cssClass="form" >
   <form:hidden path="iMaKhachHang"/>
   
   <div class="form-group">
    <label>Mã Khách Hàng</label>
    <form:input path="iMaKhachHang" cssClass="form-control" id="iMaKhachHang" />
   </div>
   <div class="form-group">
    <label>Họ Tên</label>
    <form:input path="sHoTen" cssClass="form-control" id="sHoTen" />
   </div>
   <div class="form-group">
    <label>Giới Tính</label>
    <form:input path="sGioiTinh" cssClass="form-control" id="sGioiTinh" />
   </div>
   <div>
     <label>Loại Khách Hàng</label>
    <form:input path="iLoaiKhachHang" cssClass="form-control" id="iLoaiKhachHang" />
   </div>
   <div class="form-group">
    <label>Địa Chỉ</label>
    <form:input path="sDiaChi" cssClass="form-control" id="sDiaChi" />
    </div>
    <div>
     <label>Số Điện Thoại</label>
    <form:input path="iSoDienThoai" cssClass="form-control" id="iSoDienThoai" />
   </div>
     <div>
     <label>Thành Phố</label>
    <form:input path="sThanhPho" cssClass="form-control" id="sThanhPho" />
   </div>
   <button type="submit" class="btn btn-primary">Lưu</button>
  </form:form>
  
 </div>
</body>
</html>