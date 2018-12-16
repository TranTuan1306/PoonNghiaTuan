<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Danh Mục Công Việc</title>
    <link href="../../webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <h2>Danh Mục Công Việc</h2>
    <table class="table table-striped">
        <thead>
        <th scope="row">ID</th>
        <th scope="row">Tên công việc</th>
        </thead>
        <tbody>
        <c:forEach items="${cvList }" var="cv" >
            <tr>
                <td>${cv.iMaCV }</td>
                <td>${cv.sTenCV }</td>
                <td>
                    <spring:url value="/congviec/updatecv/${cv.iMaCV }" var="updateURL" />
                    <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
                </td>
                <td>
                    <spring:url value="/congviec/deletecv/${cv.iMaCV }" var="deleteURL" />
                    <a class="btn btn-danger" href="${deleteURL }" role="button" >Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <spring:url value="/congviec/addcv/" var="addURL" />
    <a class="btn btn-primary" href="${addURL }" role="button" >Thêm công việc mới</a>
</div>
</body>
</html>