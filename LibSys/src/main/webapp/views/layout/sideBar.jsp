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
			<a href="admin" class="app-brand-link">
				<span class="app-brand-text demo menu-text fw-semibold ms-2" id="app-brand-name">Bomie</span>
			</a>
			<a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto">
				<i class="mdi menu-toggle-icon d-xl-block align-middle mdi-20px"></i>
			</a>
		</div>

		<div class="menu-inner-shadow"></div>

		<ul class="menu-inner position-relative">
			<!-- Analytics -->
			<li class="menu-item">
				<a href="/admin" class="menu-link">
					<i class="menu-icon tf-icons mdi mdi-home-outline"></i>
					<div data-i18n="Analytics">Analytics</div>
				</a>
			</li>

			<!-- Header Data Management -->
			<li class="menu-header fw-medium mt-4">
				<span class="menu-header-text">Data Management</span>
			</li>
			<!-- Header Data Management -->
			<!-- Book Management -->
			<li class="menu-item">
				<a href="javascript:void(0);" class="menu-link menu-toggle waves-effect">
					<i class="menu-icon tf-icons mdi mdi-book-outline"></i>
					<div data-i18n="Books">Books</div>
				</a>
				<ul class="menu-sub">
					<li class="menu-item">
						<a href="/admin/book" class="menu-link">
							<div data-i18n="Notifications">Management Books</div>
						</a>
					</li>
					<li class="menu-item">
						<a href="/admin/author" class="menu-link">
							<div data-i18n="Authentications">Authors</div>
						</a>
					</li>
					<li class="menu-item">
						<a href="/admin/book-languages" class="menu-link">
							<div data-i18n="Connections">Book Languages</div>
						</a>
					</li>
					<li class="menu-item">
						<a href="/admin/publisher" class="menu-link">
							<div data-i18n="Basic">Publishers</div>
						</a>
					</li>
				</ul>
			</li>
			<!-- Book Management -->

			<!-- Order Management -->
			<li class="menu-item">
				<a href="javascript:void(0);" class="menu-link menu-toggle waves-effect">
					<i class="menu-icon tf-icons mdi mdi-basket-outline"></i>
					<div data-i18n="Orders">Orders</div>
				</a>
				<ul class="menu-sub">
					<li class="menu-item">
						<a href="/ordersApprovedList" class="menu-link">
							<div data-i18n="BookList">Orders Approved List</div>
						</a>
					</li>
					<li class="menu-item">
						<a href="/orderApproval" class="menu-link">
							<div data-i18n="Authors">Order Approval</div>
						</a>
					</li>
					<li class="menu-item">
						<a href="/orderDetail" class="menu-link">
							<div data-i18n="BookList">Order Detail</div>
						</a>
					</li>
				</ul>
			</li>
			<!-- Order Management -->
			<!-- Data Management -->

			<li class="menu-item">
				<a href="javascript:void(0);" class="menu-link menu-toggle waves-effect">
					<i class="menu-icon tf-icons mdi mdi-account-group-outline"></i>
					<div data-i18n="UserSettings">User Management</div>
				</a>
				<ul class="menu-sub">

					<li class="menu-item">
						<a href="/admin/AdminManagerment" class="menu-link">
							<div data-i18n="AddAdministrator">Admin Management</div>
						</a>
					</li>
					<li class="menu-item">
						<a href="/admin/userManagerment" class="menu-link">
							<div data-i18n="userManagerment">User Management</div>
						</a>
					</li>
					<li class="menu-item">
						<a href="/admin/userView" class="menu-link">
							<div data-i18n="View">View</div>
						</a>
					</li>
				</ul>
			</li>
			<!-- Header Connection -->
			<li hidden class="menu-header fw-medium mt-4">
				<span class="menu-header-text">Connection</span>
			</li>
			<!-- Header Connection -->

			<li hidden class="menu-item">
				<a href="#" class="menu-link">
					<i class="menu-icon tf-icons mdi mdi-email-outline	"></i>
					<div data-i18n="Email">Email</div>
				</a>
			</li>
			<li hidden class="menu-item">
				<a href="#" class="menu-link">
					<i class="menu-icon tf-icons mdi mdi-message-outline"></i>
					<div data-i18n="Chat">Chat</div>
				</a>
			</li>
			<!-- user option -->
			<li class="menu-item position-absolute bottom-0 end-0">
				<div class="btn-group dropup text-start" id="dropdownMenu">
					<button type="button" class="btn border-none waves-effect dropdown-toggle w-100" data-bs-toggle="dropdown" aria-expanded="true">
						<i class="menu-icon tf-icons mdi mdi-account-outline"></i>
					User Settings
					</button>
					<ul class="dropdown-menu ps-2">

						<li>
							<a href="/admin/AdminManagerment" class="menu-link dropdown-item">Edit profile
								<!-- <div data-i18n="AddAdministrator"></div> -->
							</a>
						</li>
						<li>
							<a href="/account/logout" class="menu-link dropdown-item">Logout
								<!-- <div data-i18n="userManagerment"></div> -->
							</a>
						</li>
					</ul>
				</div>
			</li>
			<!-- user option -->
		</ul>
	</aside>	<!-- script --><script>
    document.addEventListener("DOMContentLoaded", function() {
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
</script><!-- script -->
</body>
</html>