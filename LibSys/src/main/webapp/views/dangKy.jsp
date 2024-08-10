<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en" class="light-style layout-menu-fixed layout-compact"
	dir="ltr" data-theme="theme-default" data-assets-path="/assets/"
	data-template="vertical-menu-template-free">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>Đăng ký</title>
<c:url var="url1" value="/" />
<meta name="description" content="" />
<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="${url1 }views/static/assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&ampdisplay=swap"
	rel="stylesheet" />

<link rel="stylesheet"
	href="${url1 }views/static/assets/vendor/fonts/materialdesignicons.css" />

<!-- Menu waves for no-customizer fix -->
<link rel="stylesheet"
	href="${url1 }views/static/assets/vendor/libs/node-waves/node-waves.css" />

<!-- Core CSS -->
<link rel="stylesheet" href="${url1 }views/static/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="${url1 }views/static/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="${url1 }views/static/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="${url1 }views/static/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
<link rel="stylesheet"
	href="${url1 }views/static/assets/vendor/libs/apex-charts/apex-charts.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script src="${url1 }views/static/assets/vendor/js/helpers.js"></script>
<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="${url1 }views/static/assets/js/config.js"></script>
</head>

<body>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">

			<!-- Layout container -->


			<!-- Content wrapper -->
			<div class="content-wrapper">

				<!-- Content -->
				<div class="container mt-5 py-5">
					<div class="row justify-content-center">
						<div class="col-md-6">
							<!-- Thông báo -->
							<h3>${message}</h3>
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">Đăng ký</h5>
									<form action="${url}dky" method="post">
										<div class="mb-3">
											<label for="username" class="form-label">Tên đăng ký?</label>
											<input type="text" class="form-control" id="naND"
												name="naND" placeholder="Nhập username">
										</div>
										<div class="mb-3">
											<label for="username" class="form-label">Họ Tên?</label> <input
												type="text" class="form-control" id="tenND" name="tenND"
												placeholder="Nhập họ và tên">
										</div>
										<div class="mb-3">
											<label for="password" class="form-label">Mật khẩu?</label> <input
												type="password" class="form-control" id="matKhau"
												name="matKhau" placeholder="Nhập mật khẩu">
										</div>
										<div class="mb-3">
											<label for="email" class="form-label">Email?</label> <input
												type="email" class="form-control" id="email" name="email"
												placeholder="Nhập địa chỉ email">
										</div>
										<button type="submit" class="btn btn-primary">Đăng ký</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- / Content -->

			<!-- Footer -->

			<!-- / Footer -->
			<div class="content-backdrop fade"></div>
			<!-- Content wrapper -->
		</div>
		<!-- / Layout page -->
	</div>

	<!-- Overlay -->
	<div class="layout-overlay layout-menu-toggle"></div>
	</div>
	<!-- / Layout wrapper -->

	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script src="${url1 }views/static/assets/vendor/libs/jquery/jquery.js"></script>
	<script src="${url1 }views/static/assets/vendor/libs/popper/popper.js"></script>
	<script src="${url1 }views/static/assets/vendor/js/bootstrap.js"></script>
	<script src="${url1 }views/static/assets/vendor/libs/node-waves/node-waves.js"></script>
	<script
		src="${url1 }views/static/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="${url1 }views/static/assets/vendor/js/menu.js"></script>

	<!-- endbuild -->

	<!-- Vendors JS -->
	<script src="${url1 }views/static/assets/vendor/libs/apex-charts/apexcharts.js"></script>

	<!-- Main JS -->
	<script src="${url1 }views/static/assets/js/main.js"></script>

	<!-- Page JS -->
	<script src="${url1 }views/static/assets/js/dashboards-analytics.js"></script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<script src="https://buttons.github.io/buttons.js"></script>
</body>

</html>
