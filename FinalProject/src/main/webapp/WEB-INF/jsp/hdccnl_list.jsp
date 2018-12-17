<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

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
  <h2>Danh Sách Hợp Đồng Cung Cấp Nguyên Liệu</h2>
  <table class="table table-striped">
   <thead>
    <th scope="row">Mã hợp đồng</th>
    <th scope="row">Thời điểm</th>
    <th scope="row">Mã nhà cung cấp</th>
    <th scope="row">Mã nhân viên</th>
    <th scope="row">Thao tác</th>
   </thead>
   <tbody>
    <c:forEach items="${hdccnlList }" var="hdccnl" >
     <tr>
      <td>${hdccnl.iMaHopDong }</td>
      <td>${hdccnl.dNgayCungCap} </td>
      <td>${hdccnl.iMaNhaCungCap }</td>
      <td>${hdccnl.iMaNhanVien }</td>
      <td>
      <spring:url value="/chitiethopdongcungcapnguyenlieu/list/${hdccnl.iMaHopDong }" var="chitiethopdongcungcapnguyenlieuURL" />
       <a class="btn btn-success" href="${chitiethopdongcungcapnguyenlieuURL }" role="button" >Detail</a>
       <spring:url value="/hopdongcungcapnguyenlieu/updatehdccnl/${hdccnl.iMaHopDong }" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
       <spring:url value="/hopdongcungcapnguyenlieu/deletehdccnl/${hdccnl.iMaHopDong }" var="deleteURL" />
       <a class="btn btn-danger" href="${deleteURL }" role="button" >Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
  <spring:url value="/hopdongcungcapnguyenlieu/addhdccnl/" var="addURL" />
  <a class="btn btn-primary" href="${addURL }" role="button" >Thêm hóa đơn</a>
 </div>
</body>
</html>