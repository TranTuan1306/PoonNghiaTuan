<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Thêm Danh Mục Thức Uống</title>
 <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
 <div class="container">
  <spring:url value="/danhmucthucuong/savedmtu" var="saveURL" />
  <h2>Danh Mục Thức Uống</h2>
  <form:form modelAttribute="dmtuForm" method="post" action="${saveURL }" cssClass="form" >
   <form:hidden path="iMaLoaiThucUong"/>
   <div class="form-group">
    <label>Tên loại</label>
    <form:input path="sTenLoaiThucUong" cssClass="form-control" id="sTenLoaiThucUong" />
   </div>
   <button type="submit" class="btn btn-primary">Lưu</button>
  </form:form>
  
 </div>
</body>
</html>