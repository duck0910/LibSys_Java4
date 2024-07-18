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
			<h1 class="h2">Orders Approved List</h1>
			<div class="table-responsive">
				<table class="table">
					<thead class="">
						<tr>
							<th class="text-truncate">Order ID</th>
							<th class="text-truncate">Order Date</th>
							<th class="text-truncate">Customer ID</th>
							<th class="text-truncate">Total Price</th>
							<th class="text-truncate">Status</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<div class="d-flex align-items-center">
									<div>
										<h6 class="mb-0 text-truncate">OID0001</h6>
									</div>
								</div>
							</td>
							<td class="text-truncate">24/05/2024</td>
							<td class="text-truncate"><i
								class="mdi mdi-laptop mdi-24px text-danger me-1"></i> itvdoji.94
							</td>
							<td class="text-truncate">240.000₫</td>
							<td style="width: 205px">
								<button type="button" class="btn btn-primary">Confirm</button>
								<button type="button" class="btn btn-danger">See
									details</button>
							</td>
						</tr>
						<tr>
							<td>
								<div class="d-flex align-items-center">
									<div>
										<h6 class="mb-0 text-truncate">OID0002</h6>
									</div>
								</div>
							</td>
							<td class="text-truncate">24/05/2024</td>
							<td class="text-truncate"><i
								class="mdi mdi-laptop mdi-24px text-danger me-1"></i> itvdoji.94
							</td>
							<td class="text-truncate">240.000₫</td>
							<td style="width: 205px">
								<button type="button" class="btn btn-primary">Confirm</button>
								<button type="button" class="btn btn-danger">See
									details</button>
							</td>
						</tr>
						<tr>
							<td>
								<div class="d-flex align-items-center">
									<div>
										<h6 class="mb-0 text-truncate">OID0003</h6>
									</div>
								</div>
							</td>
							<td class="text-truncate">24/05/2024</td>
							<td class="text-truncate"><i
								class="mdi mdi-laptop mdi-24px text-danger me-1"></i> itvdoji.94
							</td>
							<td class="text-truncate">240.000₫</td>
							<td style="width: 205px">
								<button type="button" class="btn btn-primary">Confirm</button>
								<button type="button" class="btn btn-danger">See
									details</button>
							</td>
						</tr>
						<tr>
							<td>
								<div class="d-flex align-items-center">
									<div>
										<h6 class="mb-0 text-truncate">OID0004</h6>
									</div>
								</div>
							</td>
							<td class="text-truncate">24/05/2024</td>
							<td class="text-truncate"><i
								class="mdi mdi-laptop mdi-24px text-danger me-1"></i> itvdoji.94
							</td>
							<td class="text-truncate">240.000₫</td>
							<td style="width: 205px">
								<button type="button" class="btn btn-primary">Confirm</button>
								<button type="button" class="btn btn-danger">See
									details</button>
							</td>
						</tr>
						<tr class="border-transparent">
							<td>
								<div class="d-flex align-items-center">
									<div>
										<h6 class="mb-0 text-truncate">OID0005</h6>
									</div>
								</div>
							</td>
							<td class="text-truncate">24/05/2024</td>
							<td class="text-truncate"><i
								class="mdi mdi-laptop mdi-24px text-danger me-1"></i> itvdoji.94
							</td>
							<td class="text-truncate">240.000₫</td>
							<td style="width: 205px">
								<button type="button" class="btn btn-primary">Confirm</button>
								<button type="button" class="btn btn-danger">See
									details</button>
							</td>
						</tr>
					</tbody>
				</table>
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