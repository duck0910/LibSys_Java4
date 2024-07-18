<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>

<html lang="en" class="light-style layout-menu-fixed layout-compact" dir="ltr" data-theme="theme-default" data-assets-path="/assets/" data-template="vertical-menu-template-free">

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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<!-- Favicon -->
<link rel="icon" type="image/x-icon" href="/assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&ampdisplay=swap" rel="stylesheet" />

<link rel="stylesheet" href="/assets/vendor/fonts/materialdesignicons.css" />

<!-- Menu waves for no-customizer fix -->
<link rel="stylesheet" href="/assets/vendor/libs/node-waves/node-waves.css" />

<!-- Core CSS -->
<link rel="stylesheet" href="/assets/vendor/css/core.css" class="template-customizer-core-css" />
<link rel="stylesheet" href="/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
<link rel="stylesheet" href="/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet" href="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
<link rel="stylesheet" href="/assets/vendor/libs/apex-charts/apex-charts.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script src="/assets/vendor/js/helpers.js"></script>
<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="/assets/js/config.js"></script>
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
					<c:if test="${not empty errorMessage}">
						<div class="alert alert-danger" role="alert">${errorMessage}</div>
					</c:if>
					<c:if test="${not empty message}">
						<div class="alert alert-success" role="alert">${message}</div>
					</c:if>
					<div class="container">
						<div class="card">
							<div class="card-body">
								<div class="row">
									<div class="col-lg-6">
										<form action="/admin/addAdmin" modelAttribute="user" id="user" method="post" cssClass="px-2">
											<div class="card">
												<div class="card-body">
													<p class="text-capitalize card-title h4 pb-2">admin</p>
													<div class="form-group mb-2">
														<label for="username" class="form-label">Username</label>
														<input cssClass="form-control" id="username" path="username" />
														<i class="input-icon uil uil-at"></i>
														<c:if test="${not empty usernameError}">
															<div class="small text-danger">${usernameError}</div>
														</c:if>
													</div>

													<div class="form-group mb-2">
														<label for="password" class="form-label">Password</label>
														<input type="password" cssClass="form-control" id="password" path="password" />
														<i class="input-icon uil uil-lock-alt"></i>
														<c:if test="${not empty passwordError}">
															<div class="small text-danger">${passwordError}</div>
														</c:if>
													</div>
													<div class="mt-3">
														<button type="submit" class="btn btn-primary mt-4" formaction="/admin/AdminManagerment">Add Admin</button>
														<button type="submit" class="btn btn-warning mt-4" formaction="/admin/AdminManagerment/update">Update Admin</button>
													</div>
												</div>
											</div>
										</form>
									</div>
									<!-- Content -->
									<!-- Data Tables -->
									<div class="col-lg-6">
										<div class="card">
											<div class="table-responsive">
												<table class="table table-striped">
													<thead class="table-light">
														<tr>
															<th scope="col" class="text-truncate">UserID</th>
															<th scope="col" class="text-truncate"></th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="item" items="${userList}">
															<tr>
																<td class="text-truncate">${item.username}</td>
																<td>
																  <button data-bs-toggle="modal" data-bs-target="#deleteModal" class="btn btn-sm btn-danger" data-username="${item.username}">Delete</button>
																	<a href="/admin/AdminManagerment/edit/${item.username}" class="btn btn-sm btn-success">Edit</a>
																</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<!-- Modal Delete -->
									<div class="modal-dialog modal-dialog-centered">
										<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title">
															<i class="bi bi-exclamation-triangle-fill text-danger"></i>
															Warning
														</h5>
														<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
													</div>
													<div class="modal-body">
														<p>Are you sure you want to delete this admin? Please ponder carefully before removing.</p>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
														<a type="button" class="btn btn-danger"  id="confirmDeleteButton"  href="/admin/AdminManagerment/delete/${item.username}">Delete</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- Modal Delete -->
									<!--/ Data Tables -->
									<!-- / Content -->

									<!-- Footer -->

									<!-- / Footer -->
									<div class="content-backdrop fade"></div>
								</div>
							</div>
						</div>
					</div>

					<!-- Content wrapper -->
				</div>
				<!-- / Layout page -->
			</div>

			<!-- Overlay -->
			<div class="layout-overlay layout-menu-toggle"></div>
		</div>
	</div>
	<!-- / Layout wrapper -->

	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script src="/assets/vendor/libs/jquery/jquery.js"></script>
	<script src="/assets/vendor/libs/popper/popper.js"></script>
	<script src="/assets/vendor/js/bootstrap.js"></script>
	<script src="/assets/vendor/libs/node-waves/node-waves.js"></script>
	<script src="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="/assets/vendor/js/menu.js"></script>

	<!-- endbuild -->

	<!-- Vendors JS -->
	<script src="/assets/vendor/libs/apex-charts/apexcharts.js"></script>

	<!-- Main JS -->
	<script src="/assets/js/main.js"></script>

	<!-- Page JS -->
	<script src="/assets/js/dashboards-analytics.js"></script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<script src="https://buttons.github.io/buttons.js"></script>
	<script>
    document.addEventListener('DOMContentLoaded', (event) => {
        var deleteModal = document.getElementById('deleteModal');
        var confirmDeleteButton = document.getElementById('confirmDeleteButton');

        deleteModal.addEventListener('show.bs.modal', function (event) {
            var button = event.relatedTarget; // Button that triggered the modal
            var username = button.getAttribute('data-username'); // Extract info from data-* attributes
            confirmDeleteButton.href = '/admin/AdminManagerment/delete/' + username;
        });
    });
</script>
</body>

</html>