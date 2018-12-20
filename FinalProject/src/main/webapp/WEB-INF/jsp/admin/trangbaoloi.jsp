<%@ page isErrorPage="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin - Error Page</title>

<!-- Bootstrap core CSS-->
<link href="../Templates/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template-->
<link href="../Templates/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">

<!-- Page level plugin CSS-->
<link href="../Templates/vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../Templates/css/sb-admin.css" rel="stylesheet">
</head>
<body>
	<!-- Header -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- Body -->
	<div id="wrapper">
		<!-- Thanh Slide Bar -->
		<jsp:include page="slidebar.jsp"></jsp:include>

		<!-- Pháº§n giá»¯a -->
		<div id="content-wrapper">
			<div class="container-fluid">
				<!-- Thanh Äá»a Chá»  -->
				<jsp:include page="thanhdiachi.jsp"></jsp:include>
				
				<!-- BÃ¡o Lá»i -->
				<h1>404 ERROR</h1>
				<p class="lead">
					Page not found. You can <a href="javascript:history.back()">go
						back</a> to the previous page, or <a href="trangchu.jsp">return home</a>.
				</p>
				<!-- End BÃ¡o Lá»i -->
				
				<!-- Footer -->
				<jsp:include page="footer.jsp"></jsp:include>
			</div>
		</div>
	</div>

	<!-- Thanh cuá»n lÃªn trang Äáº§u -->
	<a class="scroll-to-top rounded" href="#page-top"
		style="display: inline;"> <i class="fas fa-angle-up"></i>
	</a>
</body>
</html>