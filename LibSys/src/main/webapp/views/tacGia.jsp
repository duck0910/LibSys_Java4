<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en" class="light-style layout-menu-fixed layout-compact"
	dir="ltr" data-theme="theme-default" data-assets-path="/assets/"
	data-template="vertical-menu-template-free">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>Tác giả</title>
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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
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
<link rel="stylesheet" href="${url1 }views/static/assets/vendor/css/theme-default.css"
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
						<div class="row">
							<div class="col-lg-12">
							<c:url var="url" value="/" /> 
								<form action="${url}tacGia" method="POST">
								<div class="card mt-3 mb-3">
									<div class="card-header">
									<h5 class="card-tile mb-0">Tác giả</h5>
									</div>
									<div class="text-center text-success"><h6>${successMessage}</h6> </div>
									<div class="text-center text-danger"><h6>${successError}</h6> </div>
									<div class="card-body">
									<div class="row">
										<div class="col-lg-6">
										<div class="mt-3">
											<label for="" class="form-label">Mã</label>
											<input class="form-control" value="${form.maTG != null ? form.maTG : Id}" readonly name="maTG"/>
										</div>
										<div class="mt-3">
											<label for="" class="form-label">Giới tính</label> <br>
											<div class="form-check form-check-inline pt-1">
											    <input class="form-check-input" type="radio" name="gioiTinh" id="Nam" value="Nam" ${form.gioiTinh ? 'checked' : ''}>
											    <label class="form-check-label" for="Nam">Nam</label>
											</div>
											<div class="form-check form-check-inline">
											    <input class="form-check-input" type="radio" name="gioiTinh" id="Nu" value="Nu" ${!form.gioiTinh ? 'checked' : ''}>
											    <label class="form-check-label" for="Nu">Nữ</label>
											</div>
										</div>
										<div class="mt-3">
											<label for="" class="form-label">Email</label>
											<input class="form-control" value="${form.email }" name="email" path="email" />
										</div>
										</div>
										<div class="col-lg-6">
										<div class="mt-3">
											<label for="" class="form-label">Tên tác giả</label>
											<input class="form-control" value="${form.tenTG }" name="tenTG" path="name" />
										</div>
										<div class="mt-3">
											<label for="" class="form-label">Ngày sinh</label>
											<input class="form-control" value="${form.ngaySinh }" name="ngaySinh" path="ngaySinh" type="date" />
										</div>
										</div>
										<div class="mt-3">
										<button class="btn btn-primary" id="showAlert" formaction="${url }themTgia">Create</button>
										<button class="btn btn-warning" formaction="${url }updateTGia">Update</button>
										<button class="btn btn-warning" formaction="${url }deleteTgia">Delete</button>
										<button class="btn btn-warning" formaction="${url }clearTgia">Reset</button>
										</div>
									</div>
									</div>
								</div>
								</form>
							</div>
							<hr>
							<div class="card mt-3">
								<div class="card-header">
									<h5 class="card-tile mb-0">Authors List</h5>
								</div>
								<div class="card-body">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>Mã</th>
												<th>Tên tác giả</th>
												<th>Giới tính</th>
												<th>Ngày sinh</th>
												<th>Email</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
										<c:url var="url" value="/" /> 
											<c:forEach var="tacgia" items="${dsachTGia}">
												<tr>
													<td>${tacgia.maTG}</td>
													<td>${tacgia.tenTG}</td>
													<td>${tacgia.gioiTinh == 'M' ? 'Nữ' : 'Nam'}</td>
													<td>${tacgia.ngaySinh}</td>
													<td>${tacgia.email}</td>
													<td><a
														href="${url }editTGia/${tacgia.maTG}"
														class="btn btn-sm btn-success">Edit</a></td>
												</tr>
											</c:forEach>
											<!-- More user rows go here -->
										</tbody>
									</table>
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
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>
</body>

</html>