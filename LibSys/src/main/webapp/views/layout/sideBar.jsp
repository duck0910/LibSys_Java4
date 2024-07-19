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
				<a href="/views" class="menu-link">
					<i class="menu-icon tf-icons mdi mdi-home-outline"></i>
					<div data-i18n="Analytics">Trang chủ</div>
				</a>
			</li>

			<!-- Header Data Management -->
			<li class="menu-header fw-medium mt-4">
				<span class="menu-header-text"></span>
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
						<a href="/LibSys/pMuon" class="menu-link">
							<div data-i18n="Notifications">Phiếu mượn</div>
						</a>
					</li>
					<li class="menu-item">
						<a href="/LibSys/sach" class="menu-link">
							<div data-i18n="Authentications">Sách</div>
						</a>
					</li>
					<li class="menu-item">
						<a href="/LibSys/tacGia" class="menu-link">
							<div data-i18n="Connections">Tác giả</div>
						</a>
					</li>
					<li class="menu-item">
						<a href="/LibSys/theLoai" class="menu-link">
							<div data-i18n="Basic">Thể loại</div>
						</a>
					</li>
				</ul>
			</li>
			<!-- Book Management -->

			<!-- Order Management -->
			<li class="menu-item">
				<a href="javascript:void(0);" class="menu-link menu-toggle waves-effect">
					<i class="menu-icon tf-icons mdi mdi-basket-outline"></i>
					<div data-i18n="Orders">...</div>
				</a>
				<ul class="menu-sub">
					<li class="menu-item">
						<a href="/LibSys/nxb" class="menu-link">
							<div data-i18n="BookList">Nhà xuất bản</div>
						</a>
					</li>
					<li class="menu-item">
						<a href="/LibSys/..." class="menu-link">
							<div data-i18n="Authors">Độc giả</div>
						</a>
					</li>
					<li class="menu-item">
						<a href="/LibSys/..." class="menu-link">
							<div data-i18n="BookList">Người dùng</div>
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
						<a href="/LibSys/views/AdminManagerment" class="menu-link">
							<div data-i18n="AddAdministrator">Admin Management</div>
						</a>
					</li>
					<li class="menu-item">
						<a href="/LibSys/views/userManagerment" class="menu-link">
							<div data-i18n="userManagerment">User Management</div>
						</a>
					</li>
					<li class="menu-item">
						<a href="/LibSys/views/userView" class="menu-link">
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
							<a href="/views/AdminManagerment" class="menu-link dropdown-item">Edit profile
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