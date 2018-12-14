<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Chi Tiết Nguyên Liệu</title>
 <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
 <div class="container">
  <h2>Chi Tiết Nguyên Liệu</h2>
  <table class="table table-striped">
   <thead>
    <th scope="row">Mã hóa đơn</th>
    <th scope="row">Mã nguyên liệu</th>
   </thead>
   <tbody>
    <c:forEach items="${ctnlList }" var="ctnl" >
     <tr>
      <td>${ctnl.iMaThucUongD }</td>
      <td>${ctnl.iMaNguyenLieu }</td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
  <spring:url value="/chitietnguyenlieu/addctnl/" var="addURL" />
  <a class="btn btn-primary" href="${addURL }" role="button" >Thêm</a>
 </div>
</body>
</html>