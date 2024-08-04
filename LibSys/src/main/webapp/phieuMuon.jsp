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

<title>Phiếu Mượn</title>

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
	href="views/static/assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&ampdisplay=swap"
	rel="stylesheet" />

<link rel="stylesheet"
	href="views/static/assets/vendor/fonts/materialdesignicons.css" />

<!-- Menu waves for no-customizer fix -->
<link rel="stylesheet"
	href="views/static/assets/vendor/libs/node-waves/node-waves.css" />

<!-- Core CSS -->
<link rel="stylesheet" href="views/static/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet" href="views/static/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="views/static/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="views/static/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
<link rel="stylesheet"
	href="views/static/assets/vendor/libs/apex-charts/apex-charts.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script src="views/static/assets/vendor/js/helpers.js"></script>
<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="views/static/assets/js/config.js"></script>
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
							<div class="col-lg-4">
								<div class="card mt-3">
									<div class="card-header">
										<h5 class="card-tile mb-0">Danh sách phiếu mượn</h5>
									</div>
									<div class="card-body">
										<table class="table table-striped">
											<thead>
												<tr>
													<th scope="col">Tên độc giả</th>
													<th scope="col">Ngày mượn</th>
													<th scope="col">Trạng thái</th>
													<th>#</th>
												</tr>
											</thead>
											<tbody>
											
												<tr>
													<td>

														<p class="d-flex align-items-center">Dương
															Tuyết
															Ngân</p>

													</td>
													<td>
														<div>
															<p class="d-flex align-items-center">23/06/2024</p>
														</div>
													</td>
													<td>
														<p class="d-flex align-items-center">Chưa trả</p>
													</td>
													<td>
														<div class="d-grid gap-2">
															<a href="/admin/book-languages/delete/${booklanguage.languageId}"
																class="btn btn-sm btn-danger">Xóa</a> <a
																href="/admin/book-languages/edit/${booklanguage.languageId}"
																class="btn btn-sm btn-success">Sửa</a>
														</div>
													</td>
												</tr>
												<tr>

													<td>Nguyễn Thanh Vinh</td>
													<td>10/07/2024</td>
													<td>Chưa trả</td>
													<td>
														<div class="d-grid gap-2">
															<a href="/admin/book-languages/delete/${booklanguage.languageId}"
																class="btn btn-sm btn-danger">Xóa</a> <a
																href="/admin/book-languages/edit/${booklanguage.languageId}"
																class="btn btn-sm btn-success">Sửa</a>
														</div>
												</tr>
												<tr class="position-relative">
													<td>Đặng Thị Kim Cương</td>
													<td>14/05/2024</td>
													<td>Đã trả</td>
													<td>
														<div class="d-grid gap-2">
															<a href="/admin/book-languages/delete/${booklanguage.languageId}"
																class="btn btn-sm btn-danger">Xóa</a> <a
																href="/admin/book-languages/edit/${booklanguage.languageId}"
																class="btn btn-sm btn-success">Sửa</a>
														</div>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>

							<div class="col-lg-8">
								<div class="card mt-3">
									<div class="card-header">
										<h5 class="card-tile mb-0">Chi tiết phiếu mượn</h5>
									</div>
									<div class="card-body">
										<form>
											<div class="row row-cols-2">
												<div class="col">
													<div class="mb-3">
														<label for="maDocGia" class="form-label">Mã độc giả</label>
														<input type="text" class="form-control" id="maDocGia">
													</div>
												</div>
												<div class="col"><label for="tenDocGia" class="form-label">Tên độc
														giả</label>
													<input type="text" class="form-control" id="tenDocGia">
												</div>
											</div>
											<div class="row row-cols-2">
												<div class="col">
													<div class="mb-3">
														<label for="ngayMuon" class="form-label">Ngày mượn</label>
														<input type="date" class="form-control" id="ngayMuon">
													</div>
												</div>
												<div class="col"><label for="ngayTra" class="form-label">Ngày
														trả</label>
													<input type="date" class="form-control" id="ngayTra">
												</div>
											</div>
											<div class="row row-cols-2">
												<div class="col">
													<div class="mb-3">
														<label for="maNguoiDung" class="form-label">Mã người
															dùng</label>
														<input type="text" class="form-control" id="maNguoiDung">
													</div>
												</div>
												<div class="col">
													<div><label for="trangThai" class="form-label">Trạng
															thái</label></div>
													<div class="form-check form-check-inline pt-1">
														<input class="form-check-input" type="radio" name="trangThai"
															id="daTra" value="daTra">
														<label class="form-check-label" for="daTra">Đã
															trả</label>
													</div>
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="trangThai"
															id="chuaTra" value="chuaTra">
														<label class="form-check-label" for="chuaTra">Chưa
															trả</label>
													</div>
												</div>
											</div>
											<div>
												<!-- Button trigger modal -->
												<div class="row">
													<div class="col-lg-6">
														<button type="button" class="btn btn-secondary" data-bs-toggle="modal"
													data-bs-target="#themSach">Thêm
													sách</button>
													<!-- Modal -->
													<div class="modal fade" id="themSach" tabindex="-1"
													aria-labelledby="themSachLabel" aria-hidden="true">
													<div class="modal-dialog modal-lg modal-dialog-centered">
														<div class="modal-content">
															<div class="modal-header">
																<h1 class="modal-title fs-5" id="themSachLabel">Thêm
																	sách vào phiếu mượn</h1>
																<button type="button" class="btn-close"
																	data-bs-dismiss="modal" aria-label="Close"></button>
															</div>
															<div class="modal-body">
																<form>
																	<div class="row">
																		<div class="col-lg-11">
																			<div class="mb-3">
																				<div class="row g-3 align-items-center">
																					<div class="col-auto">
																						<label for="timKiem"
																							class="form-label">Tìm kiếm
																							sách</label>
																					</div>
																					<div class="col-auto w-75">
																						<input type="text"
																							class="form-control"
																							id="timKiem">
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="col-lg-1">
																			<div class=""><button type="button"
																					class="btn btn-primary px-2">Tìm</button>
																			</div>
																		</div>
																	</div>
																</form>
																<div class="card">
																	<div class="card-header">Kết quả tìm kiếm</div>
																	<div class="card-body">
																		<table class="table table-striped">
																			<thead>
																				<tr>
																					<th scope="col">Tên sách</th>
																					<th scope="col">Tên tác giả</th>
																					<th>#</th>
																				</tr>
																			</thead>
																			<tbody>
																				<tr>
																					<td>Violet Bent Backwards Over The
																						Grass</td>
																					<td>Lana Del Rey</td>
																					<td><button
																							class="btn btn-success btn-sm">Thêm</button>
																					</td>
																				</tr>
																			</tbody>
																		</table>
																	</div>
																</div>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-secondary"
																	data-bs-dismiss="modal">Đóng</button>
																<!-- <button type="button" class="btn btn-primary">Save</button> -->
															</div>
														</div>
													</div>
												</div>
												
													</div>
													<div class="col-lg-6">
														<button type="button" class="btn btn-secondary" >Thêm phiếu mượn</button>
													</div>
												</div>
												
													
												<!-- Button trigger modal -->

												<!-- Modal -->
												
											</div>
										</form>
									</div>
								</div>
								<div class="pt-2">
									<div class="card">
										<div class="card-header">Sách trong phiếu mượn</div>
										<div class="card-body">
											<table class="table table-striped">
												<thead>
													<tr>
														<th scope="col">Tên sách</th>
														<th scope="col">Tên tác giả</th>
														<th>#</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Violet Bent Backwards Over The
															Grass</td>
														<td>Lana Del Rey</td>
														<td><button class="btn btn-danger btn-sm">Xóa</button>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
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
	<script src="views/static/assets/vendor/libs/jquery/jquery.js"></script>
	<script src="views/static/assets/vendor/libs/popper/popper.js"></script>
	<script src="views/static/assets/vendor/js/bootstrap.js"></script>
	<script src="views/static/assets/vendor/libs/node-waves/node-waves.js"></script>
	<script
		src="views/static/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="views/static/assets/vendor/js/menu.js"></script>

	<!-- endbuild -->

	<!-- Vendors JS -->
	<script src="views/static/assets/vendor/libs/apex-charts/apexcharts.js"></script>

	<!-- Main JS -->
	<script src="views/static/assets/js/main.js"></script>

	<!-- Page JS -->
	<script src="views/static/assets/js/dashboards-analytics.js"></script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<script src="https://buttons.github.io/buttons.js"></script>
</body>

</html>