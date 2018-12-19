<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin - Trang Chủ</title>

<!-- Bootstrap core CSS-->
<link href="/templates/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet"  type="text/css">

<!-- Custom fonts for this template-->
<link href="/templates/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">

<!-- Page level plugin CSS-->
<link href="/templates/vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/templates/css/sb-admin.css" rel="stylesheet">
</head>

<body id="page-top">
	<!-- Header -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- Body -->
	<div id="wrapper">
		<!-- Thanh Slide Bar -->
		<jsp:include page="slidebar.jsp"></jsp:include>
		
		<!-- Phần giữa -->
		<div id="content-wrapper">
			<div class="container-fluid">
				<!-- Thanh Địa Chỉ  -->
				<jsp:include page="thanhdiachi.jsp"></jsp:include>
				
				<!-- Nội Dung -->
				<jsp:include page="content.jsp"></jsp:include>
								
				<!-- Footer -->
				<jsp:include page="footer.jsp"></jsp:include>
			</div>
		</div>
	</div> 
	
	<!-- Thanh cuộn lên trang đầu -->
	<a class="scroll-to-top rounded" href="#page-top" style="display: inline;">
      <i class="fas fa-angle-up"></i>
    </a>
	
	<!-- Script -->
	<jsp:include page="script.jsp"></jsp:include>
</body>
</html>