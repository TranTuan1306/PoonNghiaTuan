<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Danh Sách Nhân Viên</title>
    <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css"
          rel="stylesheet"/>
    <script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <h2>Danh Sách Nhân Viên</h2>
    <table class="table table-striped">
        <thead>
        <th scope="row">Mã Nhân Viên</th>
        <th scope="row">Họ Tên</th>
        <th scope="row">Giới Tính</th>
        <th scope="row">Tuổi</th>
        <th scope="row">Địa Chỉ</th>
        <th scope="row">Ngày Bắt Đầu</th>
        <th scope="row">Lương</th>
        <th scope="row">Tài Khoản</th>
        <th scope="row">Mật Khẩu</th>
        <th scope="row">MaCV</th>
        <th scope="row">Trạng Thái</th>
        <th scope="row">Thao tác</th>
        </thead>
        <tbody>
        <c:forEach items="${nvList }" var="nv">
            <tr>
                <td>${nv.iMaNV }</td>
                <td>${nv.sHoTen}</td>
                <td>${nv.sGioiTinh }</td>
                <td>${nv.iTuoi }
                <td>${nv.sDiaChi }</td>
                <td>${nv.dThoiDiem }
                <td>${nv.iLuong }
                <td>${nv.sTaiKhoan }
                <td>${nv.sMatKhau }
                <td>${nv.iMaCV.iMaCV }
                <td>${nv.bTrangThai }
                <td><spring:url
                        value="/nhanvien/updatenv/${nv.iMaNV }"
                        var="updateURL"/> <a class="btn btn-primary"
                                             href="${updateURL }" role="button">Update</a> <spring:url
                        value="/nhanvien/deletenv/${nv.iMaNV }" var="deleteURL"/>
                    <a class="btn btn-danger" href="${deleteURL }" role="button">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <spring:url value="/nhanvien/addnv/" var="addURL"/>
    <a class="btn btn-primary" href="${addURL }" role="button">Thêm
        Nhân Viên</a>
</div>
</body>
</html>