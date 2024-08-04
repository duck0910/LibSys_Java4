<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
		<div class="app-brand demo">
			<a href="views" class="app-brand-link">
				<span class="app-brand-text demo menu-text fw-semibold ms-2" id="app-brand-name">LibSys</span>
			</a>
			<a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto">
				<i class="mdi menu-toggle-icon d-xl-block align-middle mdi-20px"></i>
			</a>
		</div>

		<div class="menu-inner-shadow"></div>

		<ul class="menu-inner position-relative">
			<!-- Analytics -->
			<li class="menu-item">
				<a href="/" class="menu-link">
					<i class="menu-icon tf-icons mdi mdi-home-outline"></i>
					<div class="text-capitalize" data-i18n="Analytics">Trang chủ</div>
				</a>
			</li>
			<li class="menu-header fw-medium mt-4">
				<span class="menu-header-text">- -</span>
			</li>
			
			<li class="menu-item">
				<a href="/pMuon" class="menu-link">
					<div class="text-capitalize" data-i18n="Connections"><span
							class="mdi mdi-account-credit-card pe-2"></span>quản lý phiếu mượn</div>
				</a>
			</li>
			<li class="menu-item">
				<a href="/LibSys/sach" class="menu-link">
					<div class="text-capitalize" data-i18n="Authentications"><span
							class="mdi mdi-book-open-variant pe-2"></span>quản lý sách</div>
				</a>
			</li>
			<li class="menu-item">
				<a href="/LibSys/tacGia" class="menu-link">
					<div class="text-capitalize" data-i18n="Authors"><span class="mdi mdi-account-edit pe-2"></span>quản
						lý
						tác giả</div>
				</a>
			</li>
			<li class="menu-item">
				<a href="/LibSys/theLoai" class="menu-link">
					<div class="text-capitalize" data-i18n="BookList"><span class="mdi mdi-star-cog pe-2"></span>quản lý
						thể
						loại</div>
				</a>
			</li>
			<li class="menu-item">
				<a href="/LibSys/nxb" class="menu-link">
					<div class="text-capitalize" data-i18n="AddAdministrator"><span
							class="mdi mdi-book-clock pe-2"></span>quản lý nhà xuất bản</div>
				</a>
			</li>			
			<li class="menu-item">
				<a href="/LibSys/docGia" class="menu-link">
					<div class="text-capitalize" data-i18n="BookList"><span
							class="mdi mdi-account-multiple-check-outline pe-2"></span>quản lý độc giả</div>
				</a>
			</li>
			<li class="menu-item">
				<a href="/LibSys/ngDung" class="menu-link">
					<div class="text-capitalize" data-i18n="Notifications"><span
							class="mdi mdi-account-details pe-2"></span>quản lý người dùng</div>
				</a>
			</li>
			<!-- user option -->
			<li class="menu-item position-absolute bottom-0 end-0">
				<div class="btn-group dropup text-start" id="dropdownMenu">
					<button type="button" class="btn border-none waves-effect dropdown-toggle w-100"
						data-bs-toggle="dropdown" aria-expanded="true">
						<i class="menu-icon tf-icons mdi mdi-account-outline"></i>
						Quản lý tài khoản
					</button>
					<ul class="dropdown-menu ps-2">
						<li>
							<a href="/account/logout" class="menu-link dropdown-item"><span
									class="mdi mdi-logout"></span>Đăng xuất</a>
						</li>
					</ul>
				</div>
			</li>
			<!-- user option -->
		</ul>
	</aside> <!-- script -->
	<script>
		document.addEventListener("DOMContentLoaded", function () {
			const dropdownMenu = document.getElementById("dropdownMenu");
			const dropdownToggle = dropdownMenu.querySelector('.dropdown-toggle');
			const dropdownItems = dropdownMenu.querySelectorAll('.dropdown-menu, .dropdown-item');

			let timeout;

			const showDropdown = () => {
				clearTimeout(timeout);
				const dropdown = new bootstrap.Dropdown(dropdownToggle);
				dropdown.show();
			};

			const hideDropdown = () => {
				timeout = setTimeout(() => {
					const dropdown = new bootstrap.Dropdown(dropdownToggle);
					dropdown.hide();
				}, 300); // Delay before hiding to allow moving between items
			};

			dropdownMenu.addEventListener("mouseenter", showDropdown);
			dropdownMenu.addEventListener("mouseleave", hideDropdown);

			dropdownItems.forEach(item => {
				item.addEventListener("mouseenter", showDropdown);
				item.addEventListener("mouseleave", hideDropdown);
			});
		});
	</script>
</body>
</html>