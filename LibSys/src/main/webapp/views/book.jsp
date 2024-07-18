<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="en" class="light-style layout-menu-fixed layout-compact" dir="ltr" data-theme="theme-default" data-assets-path="../assets/" data-template="vertical-menu-template-free">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>Add Administrator</title>

<meta name="description" content="" />
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous"
>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<!-- Favicon -->
<link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&ampdisplay=swap" rel="stylesheet" />

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

						<!-- Add Product -->
						<div class="d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-center gap-4 gap-md-0">

							<div class="d-flex flex-column justify-content-center mb-3 mt-3">
								<h4 class="mb-1">Management Books</h4>
								<p class="mb-0">Orders placed across your store</p>
							</div>
							<div class="d-flex align-content-center flex-wrap gap-4">
								<button class="btn btn-outline-primary waves-effect" fdprocessedid="ir8svn">Update book</button>
							</div>
						</div>

						<div class="row" data-select2-id="12">
							<!-- First column-->
							<div class="col-12 col-lg-12" data-select2-id="11">
								<!-- Product Information -->
								<div class="card">
									<div class="card-header">
										<h5 class="card-tile mb-0">Books information</h5>
									</div>
									<div class="card-body">
										<form action="/admin/book" modelAttribute="book">
											<div class="card-body">
												<div class="form-floating form-floating-outline mb-3">
													<input type="text" class="form-control" path="title" placeholder="Name Book" id="title" aria-label="Product title" />
													<label for="title">Name Book</label>
												</div>
												<div class="form-floating form-floating-outline mb-3">
													<select path="bookAuthors[0].author.authorId" class="form-select form-select-sm" data-placeholder="Select Authors">
														<c:forEach var="author" items="${authors}">
															<option value="${author.authorId}">${author.authorName}</option>
														</c:forEach>
													</select>
													<label for="ecommerce-authors-name">Name Authors</label>
												</div>

												<div class="row gx-5 mb-3">
													<div class="col">
														<div class="row">
															<div class="col">
																<div class="form-floating form-floating-outline">
																	<input type="number" class="form-control" path="numPages" placeholder="00000" id="numPages" aria-label="Product Number pages" />
																	<label for="numPages">Number pages</label>
																</div>
															</div>
															<div class="col">
																<div class="form-floating form-floating-outline">
																	<input type="number" class="form-control" path="totalQuantityBook" placeholder="00000" id="totalQuantityBook" aria-label="Product Quantity" />
																	<label for="totalQuantityBook">Quantity</label>
																</div>
															</div>
														</div>
													</div>
													<div class="col">
														<div class="form-floating form-floating-outline">
															<input type="text" class="form-control" path="isbn13" placeholder="0123-4567" id="isbn13" aria-label="Product barcode" />
															<label for="isbn13">ISBN13</label>
														</div>
													</div>
												</div>
												<div class="row gx-5 mb-3">
													<div class="col">
														<div class="form-floating form-floating-outline">
															<input type="number" class="form-control" path="bookPrice" placeholder="00000" id="bookPrice" aria-label="Product Price" />
															<label for="bookPrice">Book Price</label>
														</div>
													</div>
													<div class="col">
														<div class="form-floating form-floating-outline">
															<input type="date" class="form-control" path="bookEntryDate" placeholder="0123-4567" id="bookEntryDate" aria-label="Publication Date" />
															<label for="bookEntryDate">Publication Date</label>
														</div>
													</div>
												</div>
												<div class="row gx-5 mb-3">
													<div class="col">
														<!-- Publisher -->
														<div class="col ecommerce-select2-dropdown">
															<select path="publisher.publisherId" class="form-select form-select-sm" data-placeholder="Select Vendor">
																<c:forEach var="publisher" items="${publishers}">
																	<option value="${publisher.publisherId}">${publisher.publisherName}</option>
																</c:forEach>
															</select>
														</div>
													</div>
													<div class="col">
														<!-- Book Language -->
														<div class="col ecommerce-select2-dropdown">
															<select path="bookLanguage.languageId" class="form-select form-select-sm" data-placeholder="Collection">
																<c:forEach var="booklanguage" items="${booklanguages}">
																	<option value="${booklanguage.languageId}">${booklanguage.languageName}</option>
																</c:forEach>
															</select>
														</div>
													</div>
												</div>
												<!-- Comment -->
												<div class="mb-3">
													<label class="mb-1">Description (Optional)</label>
													<div class="p-0 pt-1">
														<div>
															<textarea path="description" id="description" placeholder="Book Description" class="form-control" rows="5"></textarea>
														</div>
													</div>
												</div>
												<div>
													<label class="mb-2">Book Images</label>
													<br>
													<input type="file" name="bookImage" id="bookImage" class="needsclick waves-effect">
												</div>
											</div>
											<button type="submit" class="btn btn-primary ms-3" formaction="/admin/book/create">Submit</button>
										</form>
									</div>
								</div>
								<!-- /Product Information -->
							</div>
						</div>
						<hr>
						<br>
						<div class="row">
							<div class="col-lg-12">
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Search for products" aria-label="Search" aria-describedby="search-btn">
									<button class="btn btn-outline-secondary" type="button" id="search-btn">Search</button>
								</div>
							</div>
						</div>
						<div class="mt-3">
							<div class="table-responsive-md">
								<table class="table table-sm table-hover table-light table-striped">
									<thead>
										<tr>
											<th>ID</th>
											<th>Product</th>
											<!-- <th>Category</th> -->
											<th>Quantity</th>
											<th>Price</th>
											<th>Author</th>
											<th>Actions</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${books}">
											<tr>
												<td>${item.bookId}</td>
												<td>
													<div class="w-50">
														<div class="row">
															<div class="col-12 text-truncate">${item.title}</div>
														</div>
													</div>
												</td>
												<td class="text-center">${item.totalQuantityBook}</td>
											<td><formatNumber value="${item.bookPrice}" type="number" pattern="#,###,##0" /></td>
												<td class="text-nowrap">
													<c:forEach var="authorName" items="${item.authorNames}">
														<li>${authorName}</li>
													</c:forEach>
												</td>
												<td>
													<div class="btn-group" role="group">
														<button class="btn btn-sm btn-danger mx-1">Delete</button>
														<button class="btn btn-sm btn-success mx-1">Detail</button>
													</div>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<!-- Hiển thị tổng số sản phẩm -->
						<div>
							Total Products:
							<c:out value="${totalProducts}" />
						</div>
					</div>
					<!-- / Content -->

					<!-- Footer -->

					<!-- / Footer -->
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