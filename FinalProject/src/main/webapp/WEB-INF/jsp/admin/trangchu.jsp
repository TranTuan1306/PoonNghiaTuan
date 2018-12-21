<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Trang Ch?</title>

    <!-- Bootstrap core CSS-->
    <link href="/templates/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/templates/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="/templates/css/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/templates/css/sb-admin.css" rel="stylesheet">
</head>

<body id="page-top">
<!-- Header -->
<jsp:include page="header.jsp"></jsp:include>

<!-- Body -->
<div id="wrapper">

    <!-- Ph?n gi?a -->
    <div id="content-wrapper">
        <div class="container-fluid">
            <!-- Thanh ??a Ch?  -->

            <!-- N?i Dung -->
            <jsp:include page="content.jsp"></jsp:include>

            <!-- Footer -->
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </div>
</div>

<!-- Thanh cu?n lên trang ??u -->
<a class="scroll-to-top rounded" href="#page-top" style="display: inline;">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Script -->
</body>
</html>