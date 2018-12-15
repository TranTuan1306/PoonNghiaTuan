<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Danh Sách Hóa Đơn</title>
 <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
 <div class="container">
  <h2>Danh Sách Hóa Đơn</h2>
  <table class="table table-striped">
   <thead>
    <th scope="row">Mã hóa đơn</th>
    <th scope="row">Thời điểm</th>
    <th scope="row">Mã khách hàng</th>
    <th scope="row">Mã nhân viên</th>
    <th scope="row">Loại hóa đơn</th>
    <th scope="row">Thao tác</th>
   </thead>
   <tbody>
    <c:forEach items="${hdList }" var="hd" >
     <tr>
      <td>${hd.iMaHD }</td>
      <td>${hd.dThoiDiem} </td>
      <td>${hd.iMaKH }</td>
      <td>${hd.iMaNV }</td>
      <td>${hd.iLoaiHoaDon }
      <td>
      <spring:url value="/chitiethoadon/list/${hd.iMaHD }" var="chitiethoadonURL" />
       <a class="btn btn-success" href="${chitiethoadonURL }" role="button" >Detail</a>
       <spring:url value="/hoadon/updatehd/${hd.iMaHD }" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
       <spring:url value="/hoadon/deletehd/${hd.iMaHD }" var="deleteURL" />
       <a class="btn btn-danger" href="${deleteURL }" role="button" >Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
  <spring:url value="/hoadon/addhd/" var="addURL" />
  <a class="btn btn-primary" href="${addURL }" role="button" >Thêm hóa đơn</a>
 </div>
</body>
</html>