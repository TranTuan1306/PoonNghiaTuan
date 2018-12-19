<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
    
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Thêm Mới/Chỉnh Sửa Nhân Viên</title>
 <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
 <div class="container">
  <spring:url value="/nhanvien/savenv" var="saveURL" />
  <h2>Danh Sách Nhân Viên</h2>
  <form:form modelAttribute="nvForm" method="post" action="${saveURL }" cssClass="form" >
   <form:hidden path="iMaNV"/>
   <form:hidden path="dThoiDiem"/>
   
   <%-- <div class="form-group">
    <label>Mã Nhân Viên</label>
    <form:input path="iMaNV" cssClass="form-control" id="iMaNV" />
   </div> --%>
   <div class="form-group">
    <label>Họ Tên</label>
    <form:input path="sHoTen" cssClass="form-control" id="sHoTen" />
   </div>
   <div class="form-group">
    <label>Giới Tính</label>
    <form:input path="sGioiTinh" cssClass="form-control" id="sGioiTinh" />
   </div>
   <div>
     <label>Tuổi</label>
    <form:input path="iTuoi" cssClass="form-control" id="iTuoi" />
   </div>
   <div class="form-group">
    <label>Địa Chỉ</label>
    <form:input path="sDiaChi" cssClass="form-control" id="sDiaChi" />
    </div>
    <%-- <div>
     <label>Ngày Bắt Đầu</label>
    <form:input path="dThoiDiem" cssClass="form-control" id="dThoiDiem" />
   </div> --%>
     <div>
     <label>Lương</label>
    <form:input path="iLuong" cssClass="form-control" id="iLuong" />
   </div>
    <div>
     <label>Tài Khoản</label>
    <form:input path="sTaiKhoan" cssClass="form-control" id="sTaiKhoan" />
   </div>
    <div>
     <label>Mật Khẩu</label>
    <form:input path="sMatKhau" cssClass="form-control" id="sMatKhau" />
   </div>
    <div>
     <label>Mã Công Việc</label>
    <form:input path="iMaCV" cssClass="form-control" id="iMaCV" />
   </div>
    <div>
     <label>Trạng Thái</label>
    <form:input path="bTrangThai" cssClass="form-control" id="bTrangThai" />
   </div>
   <button type="submit" class="btn btn-primary">Lưu</button>
  </form:form>
  
 </div>
</body>
</html>