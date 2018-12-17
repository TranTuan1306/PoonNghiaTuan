<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Chi Tiết Hóa Đơn</title>
 <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
 <div class="container">
  <spring:url value="/chitiethoadon/savecthd" var="saveURL" />
  <h2>Chi Tiết Hóa Đơn</h2>
  <form:form modelAttribute="cthdForm" method="post" action="${saveURL }" cssClass="form" >
   <form:hidden path="iMaHD"/>
   <div class="form-group">
    <label>Mã thức uống</label>
    <form:input path="iMaThucUong" cssClass="form-control" id="iMaThucUong" />
   </div>
   <div class="form-group">
    <label>Số lượng</label>
    <form:input path="iSoLuong" cssClass="form-control" id="iSoLuong" />
   </div>
   <button type="submit" class="btn btn-primary">Lưu</button>
  </form:form>
  
 </div>
</body>
</html>