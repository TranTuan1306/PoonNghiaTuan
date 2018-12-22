<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   

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
  <h2>Danh Mục Thức Uống</h2>
  <table class="table table-striped">
   <thead>
    <th scope="row">ID</th>
    <th scope="row">Tên loại</th>
   </thead>
   <tbody>
    <c:forEach items="${dmtuList }" var="dmtu" >
     <tr>
      <td>${dmtu.iMaLoaiThucUong }</td>
      <td>${dmtu.sTenLoaiThucUong }</td>
      <td>
       <spring:url value="/danhmucthucuong/updatedmtu/${dmtu.iMaLoaiThucUong }" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
      </td>
      <td>
       <spring:url value="/danhmucthucuong/deletedmtu/${dmtu.iMaLoaiThucUong }" var="deleteURL" />
       <a class="btn btn-primary" href="${deleteURL }" role="button" >Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
  <spring:url value="/danhmucthucuong/adddmtu/" var="addURL" />
  <a class="btn btn-primary" href="${addURL }" role="button" >Thêm loại thức uống mới</a>
 </div>
</body>
</html>