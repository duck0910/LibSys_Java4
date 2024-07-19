<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>

	<html lang="en" class="light-style layout-menu-fixed layout-compact" dir="ltr" data-theme="theme-default"
		data-assets-path="../assets/" data-template="vertical-menu-template-free">

	<head>
		<meta charset="utf-8" />
		<meta name="viewport"
			content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

		<title>Add Administrator</title>

		<meta name="description" content="" />
		<!-- Bootstrap -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
			crossorigin="anonymous"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

		<!-- Favicon -->
		<link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

		<!-- Fonts -->
		<link rel="preconnect" href="https://fonts.googleapis.com" />
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
		<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&ampdisplay=swap"
			rel="stylesheet" />

		<link rel="stylesheet" href="../assets/vendor/fonts/materialdesignicons.css" />

		<!-- Menu waves for no-customizer fix -->
		<link rel="stylesheet" href="../assets/vendor/libs/node-waves/node-waves.css" />

		<!-- Core CSS -->
		<link rel="stylesheet" href="../assets/vendor/css/core.css" class="template-customizer-core-css" />
		<link rel="stylesheet" href="../assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
		<link rel="stylesheet" href="../assets/css/demo.css" />

		<!-- Vendors CSS -->
		<link rel="stylesheet" href="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
		<link rel="stylesheet" href="../assets/vendor/libs/apex-charts/apex-charts.css" />

		<!-- Page CSS -->

		<!-- Helpers -->
		<script src="../assets/vendor/js/helpers.js"></script>
		<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
		<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
		<script src="../assets/js/config.js"></script>
	</head>

	<body>
		<!-- Layout wrapper -->
		<div class="layout-wrapper layout-content-navbar">
			<div class="layout-container">
				<!-- Menu -->
				<jsp:include page="layout/sideBar.jsp" />
				<!-- / Menu -->

				<!-- Layout container -->
				<div class="layout-page">
					<!-- Navbar -->
					<jsp:include page="layout/navBar.jsp" />
					<!-- / Navbar -->

					<!-- Content wrapper -->
					<div class="content-wrapper">

						<!-- Content -->
<div class="container">
		<div class="align-items-center pt-3 pb-2 mb-3 border-bottom">
			<h1 class="h2">Order Detail</h1>
			<div class="card mb-3">
				<div class="container">
					<div class="fw-bold my-2">
						<i class="bi bi-geo-alt"></i> Delivery Address
					</div>
					<p class="my-0">Tuyết Ngân</p>
					<p class="my-0">0987654321</p>
					<p>41 Nguyễn Trãi, quận Cam, Sài Gòn</p>
				</div>
				<hr class="my-0">
				<div class="container">
					<div class="fw-bold my-2">
						<i class="bi bi-truck"></i> Shipping Information
					</div>
					<p>Giao hàng tiết kiệm</p>
				</div>
			</div>

			<div class="card mb-3">
				<div class="container">
					<div class="fw-bold my-2">
						<i class="bi bi-coin"></i> Payment Information
					</div>
					<div class="table-responsive">
						<table class="table">
							<thead class="table-light">
								<tr>
									<th class="text-truncate">Sequence Number</th>
									<th class="text-truncate">Product</th>
									<th class="text-truncate">Unit Price</th>
									<th class="text-truncate">Amount</th>
									<th class="text-truncate">Into Money</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="d-flex align-items-center">
											<div>
												<h6 class="mb-0 text-truncate">1</h6>
											</div>
										</div>
									</td>
									<td class="text-truncate"><img
										src="images/main-banner1.jpg" alt="" width="80px"> Life
										Of The Wild</td>
									<td class="text-truncate"><i
										class="mdi mdi-laptop mdi-24px text-danger me-1"></i> 240.000₫
									</td>
									<td class="text-truncate">1</td>
									<td style="width: 205px">240.000₫</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="row">
						<div class="col-lg-9">
							<p style="margin-left: 80%;">Merchandise Subtotal</p>
							<p style="margin-left: 80%;">Shipping Subtotal</p>
						</div>
						<div class="col-lg-3">
							<p>₫240.000</p>
							<p>₫0</p>
						</div>
					</div>
					<hr class="my-0">
					<div class="row">
						<div class="col-lg-9">
							<p style="margin-left: 80%;">Order Turnover</p>
						</div>
						<div class="col-lg-3">
							<p>₫240.000</p>
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
					</div>
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
		<script src="../assets/vendor/libs/jquery/jquery.js"></script>
		<script src="../assets/vendor/libs/popper/popper.js"></script>
		<script src="../assets/vendor/js/bootstrap.js"></script>
		<script src="../assets/vendor/libs/node-waves/node-waves.js"></script>
		<script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
		<script src="../assets/vendor/js/menu.js"></script>

		<!-- endbuild -->

		<!-- Vendors JS -->
		<script src="../assets/vendor/libs/apex-charts/apexcharts.js"></script>

		<!-- Main JS -->
		<script src="../assets/js/main.js"></script>

		<!-- Page JS -->
		<script src="../assets/js/dashboards-analytics.js"></script>

		<!-- Place this tag in your head or just before your close body tag. -->
		<script src="https://buttons.github.io/buttons.js"></script>
	</body>

	</html>