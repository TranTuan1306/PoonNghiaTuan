<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<jsp:include page="admin/header.jsp" />

<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-table"></i> List Receipts
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <div class="row">
                <div class="col-sm-12">
                    <table class="table table-bordered dataTable" id="dataTable"
                           role="grid"
                           aria-describedby="dataTable_info" style="width: 100%;">
                        <thead>
                        <tr role="row">
                            <th class="sorting_asc" tabindex="0" aria-controls="dataTable"
                                rowspan="1" colspan="1" aria-sort="ascending"
                                aria-label="Name: activate to sort column descending"
                                style="width: 158px;">Mã hóa đơn</th>
                            <th class="sorting" tabindex="0" aria-controls="dataTable"
                                rowspan="1" colspan="1"
                                aria-label="Position: activate to sort column ascending"
                                style="width: 269px;">Thời điểm</th>
                            <th class="sorting" tabindex="0" aria-controls="dataTable"
                                rowspan="1" colspan="1"
                                aria-label="Office: activate to sort column ascending"
                                style="width: 114px;">Mã khách hàng</th>
                            <th class="sorting" tabindex="0" aria-controls="dataTable"
                                rowspan="1" colspan="1"
                                aria-label="Age: activate to sort column ascending"
                                style="width: 52px;">Mã nhân viên</th>
                            <th class="sorting" tabindex="0" aria-controls="dataTable"
                                rowspan="1" colspan="1"
                                aria-label="Start date: activate to sort column ascending"
                                style="width: 111px;">Loại hóa đơn</th>
                            <th class="sorting" tabindex="0" aria-controls="dataTable"
                                rowspan="1" colspan="1"
                                aria-label="Salary: activate to sort column ascending"
                                style="width: 89px;">Thao tác</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th rowspan="1" colspan="1">Mã hóa đơn</th>
                            <th rowspan="1" colspan="1">Thời điểm</th>
                            <th rowspan="1" colspan="1">Mã khách hàng</th>
                            <th rowspan="1" colspan="1">Mã nhân viên</th>
                            <th rowspan="1" colspan="1">Loại hóa đơn</th>
                            <th rowspan="1" colspan="1">Thao tác</th>
                        </tr>
                        </tfoot>
                        <tbody>
                        <c:forEach items="${hdList }" var="hd" >
                            <tr>
                                <td>${hd.iMaHD }</td>
                                <td>${hd.dThoiDiem} </td>
                                <td>${hd.iMaKH.iMaKhachHang }</td>
                                <td>${hd.iMaNV.iMaNV }</td>
                                <td>${hd.iLoaiHoaDon.iMaLoaiHoaDon }
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
                </div>
            </div>
        </div>
    </div>
</div>
<div class="card-footer small text-muted">Updated yesterday at
    11:59 PM</div>


<p class="small text-center text-muted my-5">
    <em>More table examples coming soon...</em>
</p>

<jsp:include page="admin/footer.jsp" />