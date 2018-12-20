<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="admin/header.jsp"/>
<head>
    <title>Hóa đơn</title>
</head>

<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
    <li class="breadcrumb-item active">Hóa đơn</li>
</ol>

<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-table"></i> Danh sách hóa đơn
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-sm-12">
                <table class="table table-bordered dataTable" id="dataTable"
                       role="grid"
                       aria-describedby="dataTable_info" style="width: 100%;">
                    <spring:url value="/hoadon/addhd" var="addURL"/>
                    <button class="btn btn-primary" data-toggle="modal" data-target="#addHoaDon" style="float:right;"><i
                            class="fas fa-plus"></i> Thêm hóa đơn
                    </button>
                    <thead>
                    <tr role="row" align="center">
                        <th class="sorting_asc" tabindex="0" aria-controls="dataTable"
                            rowspan="1" colspan="1" aria-sort="ascending"
                            style="width: auto;">Mã hóa đơn
                        </th>
                        <th class="sorting" tabindex="0" aria-controls="dataTable"
                            rowspan="1" colspan="1"
                            style="width: auto;">Thời điểm
                        </th>
                        <th class="sorting" tabindex="0" aria-controls="dataTable"
                            rowspan="1" colspan="1"
                            style="width: auto;">Khách hàng
                        </th>
                        <th class="sorting" tabindex="0" aria-controls="dataTable"
                            rowspan="1" colspan="1"
                            style="width: auto;">Nhân viên
                        </th>
                        <th class="sorting" tabindex="0" aria-controls="dataTable"
                            rowspan="1" colspan="1"
                            style="width: auto;">Loại hóa đơn
                        </th>
                        <th class="sorting" tabindex="0" aria-controls="dataTable"
                            rowspan="1" colspan="1"
                            style="width: auto;">Thao tác
                        </th>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr align="center">
                        <th rowspan="1" colspan="1">Mã hóa đơn</th>
                        <th rowspan="1" colspan="1">Thời điểm</th>
                        <th rowspan="1" colspan="1">Khách hàng</th>
                        <th rowspan="1" colspan="1">Nhân viên</th>
                        <th rowspan="1" colspan="1">Loại hóa đơn</th>
                        <th rowspan="1" colspan="1">Thao tác</th>
                    </tr>
                    </tfoot>
                    <tbody>
                    <c:forEach items="${hdList }" var="hd">
                        <tr>
                            <td align="center">${hd.iMaHD }</td>
                            <td align="center">${hd.dThoiDiem} </td>
                            <td align="center">${hd.iMaKH.sHoTen}</td>
                            <td align="center">${hd.iMaNV.sHoTen }</td>
                            <td align="center">${hd.iLoaiHoaDon.sTenLoaiHoaDon }
                            <td align="center">
                                <spring:url value="/chitiethoadon/list/${hd.iMaHD }" var="chitiethoadonURL"/>
                                <a class="btn btn-success fas fa-info" href="${chitiethoadonURL }" style="width: 50px;"
                                   role="button"></a>
                                <spring:url value="/hoadon/updatehd/${hd.iMaHD }" var="updateURL"/>
                                <a class="btn btn-primary fas fa-pen " href="${updateURL }" style="width: 50px;"
                                   role="button"></a>
                                <spring:url value="/hoadon/deletehd/${hd.iMaHD }" var="deleteURL"/>
                                <a class="btn btn-danger fas fa-trash" href="${deleteURL }" style="width: 50px;"
                                   role="button"></a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


<!-- Modal -->
<div id="addHoaDon" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="text-dark text-justify">Thêm hóa đơn mới</h4>
                <i class="close fas fa-window-close" data-dismiss="modal"></i>
            </div>

            <div class="modal-body justify-content-center">

                <spring:url value="/hoadon/savehd" var="saveURL"/>
                <form:form modelAttribute="hdForm" method="post" action="${saveURL }" cssClass="form">
                    <form:hidden path="iMaHD"/>
                    <form:hidden path="dThoiDiem"/>


                    <div class="form-group">
                        <label><i class="fas fa-user"></i> Khách hàng</label>
                        <form:select path="iMaKH" cssClass="form-control dropdown-toggle"
                                     onmousedown="if(this.options.length>8){this.size=8;}"
                                     onchange="this.size=0;"
                                     onblur="this.size=0;">
                            <c:forEach items="${khList }" var="kh">
                                <form:option value="${kh.iMaKhachHang}" label="${kh.sHoTen}"/>
                            </c:forEach>
                        </form:select>
                    </div>

                    <div class="form-group">
                        <label><i class="fas fa-users"></i> Nhân viên</label>
                        <form:select path="iMaNV" cssClass="form-control dropdown-toggle"
                                     onmousedown="if(this.options.length>8){this.size=8;}"
                                     onchange="this.size=0;"
                                     onblur="this.size=0;">
                            <c:forEach items="${nvList }" var="nv">
                                <form:option value="${nv.iMaNV}" label="${nv.sHoTen}"/>
                            </c:forEach>
                        </form:select>
                    </div>

                    <div class="form-group">
                        <label><i class="fas fa-receipt"></i> Loại hóa đơn</label>
                        <form:select path="iLoaiHoaDon" cssClass="form-control dropdown-toggle"
                                     onmousedown="if(this.options.length>8){this.size=8;}"
                                     onchange="this.size=0;"
                                     onblur="this.size=0;">
                            <c:forEach items="${lhdList }" var="lhd">
                                <form:option value="${lhd.iMaLoaiHoaDon}" label="${lhd.sTenLoaiHoaDon}"/>
                            </c:forEach>
                        </form:select>
                    </div>

                    <button href="saveURL" type="submit" class="btn btn-primary" style="float: right;">
                        <i class="fas fa-save"></i> Lưu
                    </button>
                </form:form>

            </div>

        </div>

    </div>
</div>


<div class="card-footer small text-muted">Updated yesterday at
    11:59 PM
</div>


<p class="small text-center text-muted my-5">
    <em>More table examples coming soon...</em>
</p>

<jsp:include page="admin/footer.jsp"/>