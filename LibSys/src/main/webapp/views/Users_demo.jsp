<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="light-style layout-navbar-fixed layout-menu-fixed layout-compact " dir="ltr" data-theme="theme-default" data-assets-path="../assets/" data-template="vertical-menu-template" data-style="light">

  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>User List - Pages | Materio - Bootstrap Material Design Admin Template</title>

    
    <meta name="description" content="Start your development with a Dashboard for Bootstrap 5" />
    <meta name="keywords" content="dashboard, material, material design, bootstrap 5 dashboard, bootstrap 5 design, bootstrap 5">
    <!-- Canonical SEO -->
    <link rel="canonical" href="https://themeselection.com/item/materio-bootstrap-html-admin-template/">
    
    
    <!-- ? PROD Only: Google Tag Manager (Default ThemeSelection: GTM-5DDHKGP, PixInvent: GTM-5J3LMKC) -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
      new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
      j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
      'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
      })(window,document,'script','dataLayer','GTM-5DDHKGP');</script>
    <!-- End Google Tag Manager -->
    
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&ampdisplay=swap" rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet" href="../assets/vendor/fonts/remixicon/remixicon.css" />
    <link rel="stylesheet" href="../assets/vendor/fonts/flag-icons.css" />
    
    <!-- Menu waves for no-customizer fix -->
    <link rel="stylesheet" href="../assets/vendor/libs/node-waves/node-waves.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../assets/vendor/css/rtl/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../assets/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../assets/css/demo.css" />
    
    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="../assets/vendor/libs/typeahead-js/typeahead.css" /> 
    <link rel="stylesheet" href="../assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css">
<link rel="stylesheet" href="../assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css">
<link rel="stylesheet" href="../assets/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css">
<link rel="stylesheet" href="../assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css">
<link rel="stylesheet" href="../assets/vendor/libs/select2/select2.css" />
<link rel="stylesheet" href="../assets/vendor/libs/@form-validation/form-validation.css" />

    <!-- Page CSS -->
    

    <!-- Helpers -->
    <script src="../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../assets/js/config.js"></script>
    
</head>

<body>

  
  <!-- ?PROD Only: Google Tag Manager (noscript) (Default ThemeSelection: GTM-5DDHKGP, PixInvent: GTM-5J3LMKC) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5DDHKGP" height="0" width="0" style="display: none; visibility: hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->
  
  <!-- Layout wrapper -->
<div class="layout-wrapper layout-content-navbar  ">
  <div class="layout-container">

    
    




<!-- Menu -->

<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">

  
  <div class="app-brand demo ">
    <a href="index.html" class="app-brand-link">
      <span class="app-brand-logo demo me-1">
<span style="color:var(--bs-primary);">
  <svg width="30" height="24" viewBox="0 0 250 196" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.3002 1.25469L56.655 28.6432C59.0349 30.1128 60.4839 32.711 60.4839 35.5089V160.63C60.4839 163.468 58.9941 166.097 56.5603 167.553L12.2055 194.107C8.3836 196.395 3.43136 195.15 1.14435 191.327C0.395485 190.075 0 188.643 0 187.184V8.12039C0 3.66447 3.61061 0.0522461 8.06452 0.0522461C9.56056 0.0522461 11.0271 0.468577 12.3002 1.25469Z" fill="currentColor" />
    <path opacity="0.077704" fill-rule="evenodd" clip-rule="evenodd" d="M0 65.2656L60.4839 99.9629V133.979L0 65.2656Z" fill="black" />
    <path opacity="0.077704" fill-rule="evenodd" clip-rule="evenodd" d="M0 65.2656L60.4839 99.0795V119.859L0 65.2656Z" fill="black" />
    <path fill-rule="evenodd" clip-rule="evenodd" d="M237.71 1.22393L193.355 28.5207C190.97 29.9889 189.516 32.5905 189.516 35.3927V160.631C189.516 163.469 191.006 166.098 193.44 167.555L237.794 194.108C241.616 196.396 246.569 195.151 248.856 191.328C249.605 190.076 250 188.644 250 187.185V8.09597C250 3.64006 246.389 0.027832 241.935 0.027832C240.444 0.027832 238.981 0.441882 237.71 1.22393Z" fill="currentColor" />
    <path opacity="0.077704" fill-rule="evenodd" clip-rule="evenodd" d="M250 65.2656L189.516 99.8897V135.006L250 65.2656Z" fill="black" />
    <path opacity="0.077704" fill-rule="evenodd" clip-rule="evenodd" d="M250 65.2656L189.516 99.0497V120.886L250 65.2656Z" fill="black" />
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.2787 1.18923L125 70.3075V136.87L0 65.2465V8.06814C0 3.61223 3.61061 0 8.06452 0C9.552 0 11.0105 0.411583 12.2787 1.18923Z" fill="currentColor" />
    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.2787 1.18923L125 70.3075V136.87L0 65.2465V8.06814C0 3.61223 3.61061 0 8.06452 0C9.552 0 11.0105 0.411583 12.2787 1.18923Z" fill="white" fill-opacity="0.15" />
    <path fill-rule="evenodd" clip-rule="evenodd" d="M237.721 1.18923L125 70.3075V136.87L250 65.2465V8.06814C250 3.61223 246.389 0 241.935 0C240.448 0 238.99 0.411583 237.721 1.18923Z" fill="currentColor" />
    <path fill-rule="evenodd" clip-rule="evenodd" d="M237.721 1.18923L125 70.3075V136.87L250 65.2465V8.06814C250 3.61223 246.389 0 241.935 0C240.448 0 238.99 0.411583 237.721 1.18923Z" fill="white" fill-opacity="0.3" />
  </svg>
</span>
</span>
      <span class="app-brand-text demo menu-text fw-semibold ms-2">Materio</span>
    </a>

    <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto">
      <i class="menu-toggle-icon d-xl-block align-middle"></i>
    </a>
  </div>

  <div class="menu-inner-shadow"></div>

  
  
  <ul class="menu-inner py-1">
    <!-- Dashboards -->
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons ri-home-smile-line"></i>
        <div data-i18n="Dashboards">Dashboards</div>
        <div class="badge bg-danger rounded-pill ms-auto">5</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="dashboards-crm.html" class="menu-link">
            <div data-i18n="CRM">CRM</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="index.html" class="menu-link">
            <div data-i18n="Analytics">Analytics</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="app-ecommerce-dashboard.html" class="menu-link">
            <div data-i18n="eCommerce">eCommerce</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="app-logistics-dashboard.html" class="menu-link">
            <div data-i18n="Logistics">Logistics</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="app-academy-dashboard.html" class="menu-link">
            <div data-i18n="Academy">Academy</div>
          </a>
        </li>
      </ul>
    </li>

    <!-- Layouts -->
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons ri-layout-2-line"></i>
        <div data-i18n="Layouts">Layouts</div>
      </a>

      <ul class="menu-sub">
        <li class="menu-item">
          <a href="layouts-collapsed-menu.html" class="menu-link">
            <div data-i18n="Collapsed menu">Collapsed menu</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="layouts-content-navbar.html" class="menu-link">
            <div data-i18n="Content navbar">Content navbar</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="layouts-content-navbar-with-sidebar.html" class="menu-link">
            <div data-i18n="Content nav + Sidebar">Content nav + Sidebar</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="../horizontal-menu-template" class="menu-link" target="_blank">
            <div data-i18n="Horizontal">Horizontal</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="layouts-without-menu.html" class="menu-link">
            <div data-i18n="Without menu">Without menu</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="layouts-without-navbar.html" class="menu-link">
            <div data-i18n="Without navbar">Without navbar</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="layouts-fluid.html" class="menu-link">
            <div data-i18n="Fluid">Fluid</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="layouts-container.html" class="menu-link">
            <div data-i18n="Container">Container</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="layouts-blank.html" class="menu-link">
            <div data-i18n="Blank">Blank</div>
          </a>
        </li>
      </ul>
    </li>

    <!-- Front Pages -->
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class='menu-icon tf-icons ri-file-copy-line'></i>
        <div data-i18n="Front Pages">Front Pages</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="../front-pages/landing-page.html" class="menu-link" target="_blank">
            <div data-i18n="Landing">Landing</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="../front-pages/pricing-page.html" class="menu-link" target="_blank">
            <div data-i18n="Pricing">Pricing</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="../front-pages/payment-page.html" class="menu-link" target="_blank">
            <div data-i18n="Payment">Payment</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="../front-pages/checkout-page.html" class="menu-link" target="_blank">
            <div data-i18n="Checkout">Checkout</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="../front-pages/help-center-landing.html" class="menu-link" target="_blank">
            <div data-i18n="Help Center">Help Center</div>
          </a>
        </li>
      </ul>
    </li>


    <!-- Apps & Pages -->
    <li class="menu-header mt-7">
      <span class="menu-header-text" data-i18n="Apps & Pages">Apps &amp; Pages</span>
    </li>
    <li class="menu-item">
      <a href="app-email.html" class="menu-link">
        <i class="menu-icon tf-icons ri-mail-open-line"></i>
        <div data-i18n="Email">Email</div>
      </a>
    </li>
    <li class="menu-item">
      <a href="app-chat.html" class="menu-link">
        <i class="menu-icon tf-icons ri-wechat-line"></i>
        <div data-i18n="Chat">Chat</div>
      </a>
    </li>
    <li class="menu-item">
      <a href="app-calendar.html" class="menu-link">
        <i class="menu-icon tf-icons ri-calendar-line"></i>
        <div data-i18n="Calendar">Calendar</div>
      </a>
    </li>
    <li class="menu-item">
      <a href="app-kanban.html" class="menu-link">
        <i class="menu-icon tf-icons ri-drag-drop-line"></i>
        <div data-i18n="Kanban">Kanban</div>
      </a>
    </li>
    <!-- e-commerce-app menu start -->
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class='menu-icon tf-icons ri-shopping-bag-3-line'></i>
        <div data-i18n="eCommerce">eCommerce</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="app-ecommerce-dashboard.html" class="menu-link">
            <div data-i18n="Dashboard">Dashboard</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <div data-i18n="Products">Products</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
              <a href="app-ecommerce-product-list.html" class="menu-link">
                <div data-i18n="Product List">Product List</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="app-ecommerce-product-add.html" class="menu-link">
                <div data-i18n="Add Product">Add Product</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="app-ecommerce-category-list.html" class="menu-link">
                <div data-i18n="Category List">Category List</div>
              </a>
            </li>
          </ul>
        </li>
        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <div data-i18n="Order">Order</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
              <a href="app-ecommerce-order-list.html" class="menu-link">
                <div data-i18n="Order List">Order List</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="app-ecommerce-order-details.html" class="menu-link">
                <div data-i18n="Order Details">Order Details</div>
              </a>
            </li>
          </ul>
        </li>
        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <div data-i18n="Customer">Customer</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
              <a href="app-ecommerce-customer-all.html" class="menu-link">
                <div data-i18n="All Customers">All Customers</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <div data-i18n="Customer Details">Customer Details</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="app-ecommerce-customer-details-overview.html" class="menu-link">
                    <div data-i18n="Overview">Overview</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="app-ecommerce-customer-details-security.html" class="menu-link">
                    <div data-i18n="Security">Security</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="app-ecommerce-customer-details-billing.html" class="menu-link">
                    <div data-i18n="Address & Billing">Address & Billing</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="app-ecommerce-customer-details-notifications.html" class="menu-link">
                    <div data-i18n="Notifications">Notifications</div>
                  </a>
                </li>

              </ul>
            </li>
          </ul>
        </li>
        <li class="menu-item">
          <a href="app-ecommerce-manage-reviews.html" class="menu-link">
            <div data-i18n="Manage Reviews">Manage Reviews</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="app-ecommerce-referral.html" class="menu-link">
            <div data-i18n="Referrals">Referrals</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <div data-i18n="Settings">Settings</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
              <a href="app-ecommerce-settings-detail.html" class="menu-link">
                <div data-i18n="Store Details">Store Details</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="app-ecommerce-settings-payments.html" class="menu-link">
                <div data-i18n="Payments">Payments</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="app-ecommerce-settings-checkout.html" class="menu-link">
                <div data-i18n="Checkout">Checkout</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="app-ecommerce-settings-shipping.html" class="menu-link">
                <div data-i18n="Shipping & Delivery">Shipping & Delivery</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="app-ecommerce-settings-locations.html" class="menu-link">
                <div data-i18n="Locations">Locations</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="app-ecommerce-settings-notifications.html" class="menu-link">
                <div data-i18n="Notifications">Notifications</div>
              </a>
            </li>
          </ul>
        </li>
      </ul>
    </li>
    <!-- e-commerce-app menu end -->
    <!-- Academy menu start -->
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class='menu-icon tf-icons ri-graduation-cap-line'></i>
        <div data-i18n="Academy">Academy</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="app-academy-dashboard.html" class="menu-link">
            <div data-i18n="Dashboard">Dashboard</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="app-academy-course.html" class="menu-link">
            <div data-i18n="My Course">My Course</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="app-academy-course-details.html" class="menu-link">
            <div data-i18n="Course Details">Course Details</div>
          </a>
        </li>
      </ul>
    </li>
    <!-- Academy menu end -->
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class='menu-icon tf-icons ri-car-line'></i>
        <div data-i18n="Logistics">Logistics</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="app-logistics-dashboard.html" class="menu-link">
            <div data-i18n="Dashboard">Dashboard</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="app-logistics-fleet.html" class="menu-link">
            <div data-i18n="Fleet">Fleet</div>
          </a>
        </li>
      </ul>
    </li>
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class='menu-icon tf-icons ri-bill-line'></i>
        <div data-i18n="Invoice">Invoice</div>
        <div class="badge bg-danger rounded-pill ms-auto">4</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="app-invoice-list.html" class="menu-link">
            <div data-i18n="List">List</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="app-invoice-preview.html" class="menu-link">
            <div data-i18n="Preview">Preview</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="app-invoice-edit.html" class="menu-link">
            <div data-i18n="Edit">Edit</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="app-invoice-add.html" class="menu-link">
            <div data-i18n="Add">Add</div>
          </a>
        </li>
      </ul>
    </li>
    <li class="menu-item active open">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons ri-user-line"></i>
        <div data-i18n="Users">Users</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item active">
          <a href="app-user-list.html" class="menu-link">
            <div data-i18n="List">List</div>
          </a>
        </li>

        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <div data-i18n="View">View</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
              <a href="app-user-view-account.html" class="menu-link">
                <div data-i18n="Account">Account</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="app-user-view-security.html" class="menu-link">
                <div data-i18n="Security">Security</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="app-user-view-billing.html" class="menu-link">
                <div data-i18n="Billing & Plans">Billing & Plans</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="app-user-view-notifications.html" class="menu-link">
                <div data-i18n="Notifications">Notifications</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="app-user-view-connections.html" class="menu-link">
                <div data-i18n="Connections">Connections</div>
              </a>
            </li>
          </ul>
        </li>
      </ul>
    </li>
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class='menu-icon tf-icons ri-lock-2-line'></i>
        <div data-i18n="Roles & Permissions">Roles & Permissions</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="app-access-roles.html" class="menu-link">
            <div data-i18n="Roles">Roles</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="app-access-permission.html" class="menu-link">
            <div data-i18n="Permission">Permission</div>
          </a>
        </li>
      </ul>
    </li>
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons ri-layout-left-line"></i>
        <div data-i18n="Pages">Pages</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <div data-i18n="User Profile">User Profile</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
              <a href="pages-profile-user.html" class="menu-link">
                <div data-i18n="Profile">Profile</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="pages-profile-teams.html" class="menu-link">
                <div data-i18n="Teams">Teams</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="pages-profile-projects.html" class="menu-link">
                <div data-i18n="Projects">Projects</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="pages-profile-connections.html" class="menu-link">
                <div data-i18n="Connections">Connections</div>
              </a>
            </li>
          </ul>
        </li>
        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <div data-i18n="Account Settings">Account Settings</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
              <a href="pages-account-settings-account.html" class="menu-link">
                <div data-i18n="Account">Account</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="pages-account-settings-security.html" class="menu-link">
                <div data-i18n="Security">Security</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="pages-account-settings-billing.html" class="menu-link">
                <div data-i18n="Billing & Plans">Billing & Plans</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="pages-account-settings-notifications.html" class="menu-link">
                <div data-i18n="Notifications">Notifications</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="pages-account-settings-connections.html" class="menu-link">
                <div data-i18n="Connections">Connections</div>
              </a>
            </li>
          </ul>
        </li>
        <li class="menu-item">
          <a href="pages-faq.html" class="menu-link">
            <div data-i18n="FAQ">FAQ</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="pages-pricing.html" class="menu-link">
            <div data-i18n="Pricing">Pricing</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <div data-i18n="Misc">Misc</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
              <a href="pages-misc-error.html" class="menu-link" target="_blank">
                <div data-i18n="Error">Error</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="pages-misc-under-maintenance.html" class="menu-link" target="_blank">
                <div data-i18n="Under Maintenance">Under Maintenance</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="pages-misc-comingsoon.html" class="menu-link" target="_blank">
                <div data-i18n="Coming Soon">Coming Soon</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="pages-misc-not-authorized.html" class="menu-link" target="_blank">
                <div data-i18n="Not Authorized">Not Authorized</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="pages-misc-server-error.html" class="menu-link" target="_blank">
                <div data-i18n="Server Error">Server Error</div>
              </a>
            </li>
          </ul>
        </li>
      </ul>
    </li>
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons ri-shield-keyhole-line"></i>
        <div data-i18n="Authentications">Authentications</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <div data-i18n="Login">Login</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
              <a href="auth-login-basic.html" class="menu-link" target="_blank">
                <div data-i18n="Basic">Basic</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="auth-login-cover.html" class="menu-link" target="_blank">
                <div data-i18n="Cover">Cover</div>
              </a>
            </li>
          </ul>
        </li>
        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <div data-i18n="Register">Register</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
              <a href="auth-register-basic.html" class="menu-link" target="_blank">
                <div data-i18n="Basic">Basic</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="auth-register-cover.html" class="menu-link" target="_blank">
                <div data-i18n="Cover">Cover</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="auth-register-multisteps.html" class="menu-link" target="_blank">
                <div data-i18n="Multi-steps">Multi-steps</div>
              </a>
            </li>
          </ul>
        </li>
        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <div data-i18n="Verify Email">Verify Email</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
              <a href="auth-verify-email-basic.html" class="menu-link" target="_blank">
                <div data-i18n="Basic">Basic</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="auth-verify-email-cover.html" class="menu-link" target="_blank">
                <div data-i18n="Cover">Cover</div>
              </a>
            </li>
          </ul>
        </li>
        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <div data-i18n="Reset Password">Reset Password</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
              <a href="auth-reset-password-basic.html" class="menu-link" target="_blank">
                <div data-i18n="Basic">Basic</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="auth-reset-password-cover.html" class="menu-link" target="_blank">
                <div data-i18n="Cover">Cover</div>
              </a>
            </li>
          </ul>
        </li>
        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <div data-i18n="Forgot Password">Forgot Password</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
              <a href="auth-forgot-password-basic.html" class="menu-link" target="_blank">
                <div data-i18n="Basic">Basic</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="auth-forgot-password-cover.html" class="menu-link" target="_blank">
                <div data-i18n="Cover">Cover</div>
              </a>
            </li>
          </ul>
        </li>
        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <div data-i18n="Two Steps">Two Steps</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
              <a href="auth-two-steps-basic.html" class="menu-link" target="_blank">
                <div data-i18n="Basic">Basic</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="auth-two-steps-cover.html" class="menu-link" target="_blank">
                <div data-i18n="Cover">Cover</div>
              </a>
            </li>
          </ul>
        </li>
      </ul>
    </li>
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons ri-git-commit-line"></i>
        <div data-i18n="Wizard Examples">Wizard Examples</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="wizard-ex-checkout.html" class="menu-link">
            <div data-i18n="Checkout">Checkout</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="wizard-ex-property-listing.html" class="menu-link">
            <div data-i18n="Property Listing">Property Listing</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="wizard-ex-create-deal.html" class="menu-link">
            <div data-i18n="Create Deal">Create Deal</div>
          </a>
        </li>
      </ul>
    </li>
    <li class="menu-item">
      <a href="modal-examples.html" class="menu-link">
        <i class="menu-icon tf-icons ri-tv-2-line"></i>
        <div data-i18n="Modal Examples">Modal Examples</div>
      </a>
    </li>

    <!-- Components -->
    <li class="menu-header mt-7">
      <span class="menu-header-text" data-i18n="Components">Components</span>
    </li>
    <!-- Cards -->
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons ri-bank-card-2-line"></i>
        <div data-i18n="Cards">Cards</div>
        <div class="badge bg-primary rounded-pill ms-auto">6</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="cards-basic.html" class="menu-link">
            <div data-i18n="Basic">Basic</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="cards-advance.html" class="menu-link">
            <div data-i18n="Advance">Advance</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="cards-statistics.html" class="menu-link">
            <div data-i18n="Statistics">Statistics</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="cards-analytics.html" class="menu-link">
            <div data-i18n="Analytics">Analytics</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="cards-gamifications.html" class="menu-link">
            <div data-i18n="Gamifications">Gamifications</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="cards-actions.html" class="menu-link">
            <div data-i18n="Actions">Actions</div>
          </a>
        </li>
      </ul>
    </li>
    <!-- User interface -->
    <li class="menu-item">
      <a href="javascript:void(0)" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons ri-toggle-line"></i>
        <div data-i18n="User interface">User interface</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="ui-accordion.html" class="menu-link">
            <div data-i18n="Accordion">Accordion</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-alerts.html" class="menu-link">
            <div data-i18n="Alerts">Alerts</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-badges.html" class="menu-link">
            <div data-i18n="Badges">Badges</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-buttons.html" class="menu-link">
            <div data-i18n="Buttons">Buttons</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-carousel.html" class="menu-link">
            <div data-i18n="Carousel">Carousel</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-collapse.html" class="menu-link">
            <div data-i18n="Collapse">Collapse</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-dropdowns.html" class="menu-link">
            <div data-i18n="Dropdowns">Dropdowns</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-footer.html" class="menu-link">
            <div data-i18n="Footer">Footer</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-list-groups.html" class="menu-link">
            <div data-i18n="List Groups">List Groups</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-modals.html" class="menu-link">
            <div data-i18n="Modals">Modals</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-navbar.html" class="menu-link">
            <div data-i18n="Navbar">Navbar</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-offcanvas.html" class="menu-link">
            <div data-i18n="Offcanvas">Offcanvas</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-pagination-breadcrumbs.html" class="menu-link">
            <div data-i18n="Pagination & Breadcrumbs">Pagination &amp; Breadcrumbs</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-progress.html" class="menu-link">
            <div data-i18n="Progress">Progress</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-spinners.html" class="menu-link">
            <div data-i18n="Spinners">Spinners</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-tabs-pills.html" class="menu-link">
            <div data-i18n="Tabs & Pills">Tabs &amp; Pills</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-toasts.html" class="menu-link">
            <div data-i18n="Toasts">Toasts</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-tooltips-popovers.html" class="menu-link">
            <div data-i18n="Tooltips & Popovers">Tooltips &amp; Popovers</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="ui-typography.html" class="menu-link">
            <div data-i18n="Typography">Typography</div>
          </a>
        </li>
      </ul>
    </li>

    <!-- Extended components -->
    <li class="menu-item">
      <a href="javascript:void(0)" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons ri-box-3-line"></i>
        <div data-i18n="Extended UI">Extended UI</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="extended-ui-avatar.html" class="menu-link">
            <div data-i18n="Avatar">Avatar</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="extended-ui-blockui.html" class="menu-link">
            <div data-i18n="BlockUI">BlockUI</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="extended-ui-drag-and-drop.html" class="menu-link">
            <div data-i18n="Drag & Drop">Drag &amp; Drop</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="extended-ui-media-player.html" class="menu-link">
            <div data-i18n="Media Player">Media Player</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="extended-ui-perfect-scrollbar.html" class="menu-link">
            <div data-i18n="Perfect Scrollbar">Perfect Scrollbar</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="extended-ui-star-ratings.html" class="menu-link">
            <div data-i18n="Star Ratings">Star Ratings</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="extended-ui-sweetalert2.html" class="menu-link">
            <div data-i18n="SweetAlert2">SweetAlert2</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="extended-ui-text-divider.html" class="menu-link">
            <div data-i18n="Text Divider">Text Divider</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <div data-i18n="Timeline">Timeline</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
              <a href="extended-ui-timeline-basic.html" class="menu-link">
                <div data-i18n="Basic">Basic</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="extended-ui-timeline-fullscreen.html" class="menu-link">
                <div data-i18n="Fullscreen">Fullscreen</div>
              </a>
            </li>
          </ul>
        </li>
        <li class="menu-item">
          <a href="extended-ui-tour.html" class="menu-link">
            <div data-i18n="Tour">Tour</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="extended-ui-treeview.html" class="menu-link">
            <div data-i18n="Treeview">Treeview</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="extended-ui-misc.html" class="menu-link">
            <div data-i18n="Miscellaneous">Miscellaneous</div>
          </a>
        </li>
      </ul>
    </li>

    <!-- Icons -->
    <li class="menu-item">
      <a href="icons-ri.html" class="menu-link">
        <i class="menu-icon tf-icons ri-remixicon-line"></i>
        <div data-i18n="Icons">Icons</div>
      </a>
    </li>

    <!-- Forms & Tables -->
    <li class="menu-header mt-7">
      <span class="menu-header-text" data-i18n="Forms & Tables">Forms &amp; Tables</span>
    </li>
    <!-- Forms -->
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons ri-radio-button-line"></i>
        <div data-i18n="Form Elements">Form Elements</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="forms-basic-inputs.html" class="menu-link">
            <div data-i18n="Basic Inputs">Basic Inputs</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="forms-input-groups.html" class="menu-link">
            <div data-i18n="Input groups">Input groups</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="forms-custom-options.html" class="menu-link">
            <div data-i18n="Custom Options">Custom Options</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="forms-editors.html" class="menu-link">
            <div data-i18n="Editors">Editors</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="forms-file-upload.html" class="menu-link">
            <div data-i18n="File Upload">File Upload</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="forms-pickers.html" class="menu-link">
            <div data-i18n="Pickers">Pickers</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="forms-selects.html" class="menu-link">
            <div data-i18n="Select & Tags">Select &amp; Tags</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="forms-sliders.html" class="menu-link">
            <div data-i18n="Sliders">Sliders</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="forms-switches.html" class="menu-link">
            <div data-i18n="Switches">Switches</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="forms-extras.html" class="menu-link">
            <div data-i18n="Extras">Extras</div>
          </a>
        </li>
      </ul>
    </li>
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons ri-box-3-line"></i>
        <div data-i18n="Form Layouts">Form Layouts</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="form-layouts-vertical.html" class="menu-link">
            <div data-i18n="Vertical Form">Vertical Form</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="form-layouts-horizontal.html" class="menu-link">
            <div data-i18n="Horizontal Form">Horizontal Form</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="form-layouts-sticky.html" class="menu-link">
            <div data-i18n="Sticky Actions">Sticky Actions</div>
          </a>
        </li>
      </ul>
    </li>
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons ri-git-commit-line"></i>
        <div data-i18n="Form Wizard">Form Wizard</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="form-wizard-numbered.html" class="menu-link">
            <div data-i18n="Numbered">Numbered</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="form-wizard-icons.html" class="menu-link">
            <div data-i18n="Icons">Icons</div>
          </a>
        </li>
      </ul>
    </li>
    <li class="menu-item">
      <a href="form-validation.html" class="menu-link">
        <i class="menu-icon tf-icons ri-checkbox-multiple-line"></i>
        <div data-i18n="Form Validation">Form Validation</div>
      </a>
    </li>
    <!-- Tables -->
    <li class="menu-item">
      <a href="tables-basic.html" class="menu-link">
        <i class="menu-icon tf-icons ri-table-alt-line"></i>
        <div data-i18n="Tables">Tables</div>
      </a>
    </li>
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons ri-grid-line"></i>
        <div data-i18n="Datatables">Datatables</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="tables-datatables-basic.html" class="menu-link">
            <div data-i18n="Basic">Basic</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="tables-datatables-advanced.html" class="menu-link">
            <div data-i18n="Advanced">Advanced</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="tables-datatables-extensions.html" class="menu-link">
            <div data-i18n="Extensions">Extensions</div>
          </a>
        </li>
      </ul>
    </li>

    <!-- Charts & Maps -->
    <li class="menu-header mt-7">
      <span class="menu-header-text" data-i18n="Charts & Maps">Charts &amp; Maps</span>
    </li>
    <li class="menu-item">
      <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon tf-icons ri-bar-chart-2-line"></i>
        <div data-i18n="Charts">Charts</div>
      </a>
      <ul class="menu-sub">
        <li class="menu-item">
          <a href="charts-apex.html" class="menu-link">
            <div data-i18n="Apex Charts">Apex Charts</div>
          </a>
        </li>
        <li class="menu-item">
          <a href="charts-chartjs.html" class="menu-link">
            <div data-i18n="ChartJS">ChartJS</div>
          </a>
        </li>
      </ul>
    </li>
    <li class="menu-item">
      <a href="maps-leaflet.html" class="menu-link">
        <i class="menu-icon tf-icons ri-map-2-line"></i>
        <div data-i18n="Leaflet Maps">Leaflet Maps</div>
      </a>
    </li>

    <!-- Misc -->
    <li class="menu-header mt-7">
      <span class="menu-header-text" data-i18n="Misc">Misc</span>
    </li>
    <li class="menu-item">
      <a href="https://themeselection.com/support/" target="_blank" class="menu-link">
        <i class="menu-icon tf-icons ri-lifebuoy-line"></i>
        <div data-i18n="Support">Support</div>
      </a>
    </li>
    <li class="menu-item">
      <a href="https://demos.themeselection.com/materio-bootstrap-html-admin-template/documentation/" target="_blank" class="menu-link">
        <i class="menu-icon tf-icons ri-article-line"></i>
        <div data-i18n="Documentation">Documentation</div>
      </a>
    </li>
  </ul>
  
  

</aside>
<!-- / Menu -->

    

    <!-- Layout container -->
    <div class="layout-page">
      
      



<!-- Navbar -->

<nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme" id="layout-navbar">
  

  

      
      

      
      
      <div class="layout-menu-toggle navbar-nav align-items-xl-center me-4 me-xl-0   d-xl-none ">
        <a class="nav-item nav-link px-0 me-xl-6" href="javascript:void(0)">
          <i class="ri-menu-fill ri-24px"></i>
        </a>
      </div>
      

      <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">

        
        <!-- Search -->
        <div class="navbar-nav align-items-center">
          <div class="nav-item navbar-search-wrapper mb-0">
            <a class="nav-item nav-link search-toggler fw-normal px-0" href="javascript:void(0);">
              <i class="ri-search-line ri-22px scaleX-n1-rtl me-1_5"></i>
              <span class="d-none d-md-inline-block text-muted ms-1_5">Search (Ctrl+/)</span>
            </a>
          </div>
        </div>
        <!-- /Search -->
        
        

        

        <ul class="navbar-nav flex-row align-items-center ms-auto">

          
          
          <!-- Language -->
          <li class="nav-item dropdown-language dropdown">
            <a class="nav-link btn btn-text-secondary rounded-pill btn-icon dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
              <i class='ri-translate-2 ri-22px'></i>
            </a>
            <ul class="dropdown-menu dropdown-menu-end py-2">
              <li>
                <a class="dropdown-item" href="javascript:void(0);" data-language="en" data-text-direction="ltr">
                  <span class="align-middle">English</span>
                </a>
              </li>
              <li>
                <a class="dropdown-item" href="javascript:void(0);" data-language="fr" data-text-direction="ltr">
                  <span class="align-middle">French</span>
                </a>
              </li>
              <li>
                <a class="dropdown-item" href="javascript:void(0);" data-language="ar" data-text-direction="rtl">
                  <span class="align-middle">Arabic</span>
                </a>
              </li>
              <li>
                <a class="dropdown-item" href="javascript:void(0);" data-language="de" data-text-direction="ltr">
                  <span class="align-middle">German</span>
                </a>
              </li>
            </ul>
          </li>
          <!--/ Language -->
          
          <!-- Style Switcher -->
          <li class="nav-item dropdown-style-switcher dropdown">
            <a class="nav-link btn btn-text-secondary rounded-pill btn-icon dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
              <i class='ri-22px'></i>
            </a>
            <ul class="dropdown-menu dropdown-menu-end dropdown-styles">
              <li>
                <a class="dropdown-item" href="javascript:void(0);" data-theme="light">
                  <span class="align-middle"><i class='ri-sun-line ri-22px me-3'></i>Light</span>
                </a>
              </li>
              <li>
                <a class="dropdown-item" href="javascript:void(0);" data-theme="dark">
                  <span class="align-middle"><i class="ri-moon-clear-line ri-22px me-3"></i>Dark</span>
                </a>
              </li>
              <li>
                <a class="dropdown-item" href="javascript:void(0);" data-theme="system">
                  <span class="align-middle"><i class="ri-computer-line ri-22px me-3"></i>System</span>
                </a>
              </li>
            </ul>
          </li>
          <!-- / Style Switcher-->
          
          <!-- Quick links  -->
          <li class="nav-item dropdown-shortcuts navbar-dropdown dropdown">
            <a class="nav-link btn btn-text-secondary rounded-pill btn-icon dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
              <i class='ri-star-smile-line ri-22px'></i>
            </a>
            <div class="dropdown-menu dropdown-menu-end py-0">
              <div class="dropdown-menu-header border-bottom py-50">
                <div class="dropdown-header d-flex align-items-center py-2">
                  <h6 class="mb-0 me-auto">Shortcuts</h6>
                  <a href="javascript:void(0)" class="btn btn-text-secondary rounded-pill btn-icon dropdown-shortcuts-add" data-bs-toggle="tooltip" data-bs-placement="top" title="Add shortcuts"><i class="ri-layout-grid-line ri-24px text-heading"></i></a>
                </div>
              </div>
              <div class="dropdown-shortcuts-list scrollable-container">
                <div class="row row-bordered overflow-visible g-0">
                  <div class="dropdown-shortcuts-item col">
                    <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                      <i class="ri-calendar-line ri-26px text-heading"></i>
                    </span>
                    <a href="app-calendar.html" class="stretched-link">Calendar</a>
                    <small>Appointments</small>
                  </div>
                  <div class="dropdown-shortcuts-item col">
                    <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                      <i class="ri-file-text-line ri-26px text-heading"></i>
                    </span>
                    <a href="app-invoice-list.html" class="stretched-link">Invoice App</a>
                    <small>Manage Accounts</small>
                  </div>
                </div>
                <div class="row row-bordered overflow-visible g-0">
                  <div class="dropdown-shortcuts-item col">
                    <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                      <i class="ri-user-line ri-26px text-heading"></i>
                    </span>
                    <a href="app-user-list.html" class="stretched-link">User App</a>
                    <small>Manage Users</small>
                  </div>
                  <div class="dropdown-shortcuts-item col">
                    <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                      <i class="ri-computer-line ri-26px text-heading"></i>
                    </span>
                    <a href="app-access-roles.html" class="stretched-link">Role Management</a>
                    <small>Permission</small>
                  </div>
                </div>
                <div class="row row-bordered overflow-visible g-0">
                  <div class="dropdown-shortcuts-item col">
                    <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                      <i class="ri-pie-chart-2-line ri-26px text-heading"></i>
                    </span>
                    <a href="index.html" class="stretched-link">Dashboard</a>
                    <small>Analytics</small>
                  </div>
                  <div class="dropdown-shortcuts-item col">
                    <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                      <i class="ri-settings-4-line ri-26px text-heading"></i>
                    </span>
                    <a href="pages-account-settings-account.html" class="stretched-link">Setting</a>
                    <small>Account Settings</small>
                  </div>
                </div>
                <div class="row row-bordered overflow-visible g-0">
                  <div class="dropdown-shortcuts-item col">
                    <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                      <i class="ri-question-line ri-26px text-heading"></i>
                    </span>
                    <a href="pages-faq.html" class="stretched-link">FAQs</a>
                    <small class="text-muted mb-0">FAQs & Articles</small>
                  </div>
                  <div class="dropdown-shortcuts-item col">
                    <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                      <i class="ri-tv-2-line ri-26px text-heading"></i>
                    </span>
                    <a href="modal-examples.html" class="stretched-link">Modals</a>
                    <small>Useful Popups</small>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <!-- Quick links -->

          <!-- Notification -->
          <li class="nav-item dropdown-notifications navbar-dropdown dropdown me-4 me-xl-1">
            <a class="nav-link btn btn-text-secondary rounded-pill btn-icon dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
              <i class="ri-notification-2-line ri-22px"></i>
              <span class="position-absolute top-0 start-50 translate-middle-y badge badge-dot bg-danger mt-2 border"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-end py-0">
              <li class="dropdown-menu-header border-bottom">
                <div class="dropdown-header d-flex align-items-center py-3">
                  <h6 class="mb-0 me-auto">Notification</h6>
                  <div class="d-flex align-items-center">
                    <span class="badge rounded-pill bg-label-primary me-2">8 New</span>
                    <a href="javascript:void(0)" class="btn btn-text-secondary rounded-pill btn-icon dropdown-notifications-all" data-bs-toggle="tooltip" data-bs-placement="top" title="Mark all as read"><i class="ri-mail-open-line ri-20px text-body"></i></a>
                  </div>
                </div>
              </li>
              <li class="dropdown-notifications-list scrollable-container">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item list-group-item-action dropdown-notifications-item">
                    <div class="d-flex">
                      <div class="flex-shrink-0 me-3">
                        <div class="avatar">
                          <img src="../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle">
                        </div>
                      </div>
                      <div class="flex-grow-1">
                        <h6 class="small mb-1">Congratulation Lettie 🎉</h6>
                        <small class="mb-1 d-block text-body">Won the monthly best seller gold badge</small>
                        <small class="text-muted">1h ago</small>
                      </div>
                      <div class="flex-shrink-0 dropdown-notifications-actions">
                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="ri-close-line"></span></a>
                      </div>
                    </div>
                  </li>
                  <li class="list-group-item list-group-item-action dropdown-notifications-item">
                    <div class="d-flex">
                      <div class="flex-shrink-0 me-3">
                        <div class="avatar">
                          <span class="avatar-initial rounded-circle bg-label-danger">CF</span>
                        </div>
                      </div>
                      <div class="flex-grow-1">
                        <h6 class="mb-1 small">Charles Franklin</h6>
                        <small class="mb-1 d-block text-body">Accepted your connection</small>
                        <small class="text-muted">12hr ago</small>
                      </div>
                      <div class="flex-shrink-0 dropdown-notifications-actions">
                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="ri-close-line"></span></a>
                      </div>
                    </div>
                  </li>
                  <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                    <div class="d-flex">
                      <div class="flex-shrink-0 me-3">
                        <div class="avatar">
                          <img src="../assets/img/avatars/2.png" alt class="w-px-40 h-auto rounded-circle">
                        </div>
                      </div>
                      <div class="flex-grow-1">
                        <h6 class="mb-1 small">New Message ✉️</h6>
                        <small class="mb-1 d-block text-body">You have new message from Natalie</small>
                        <small class="text-muted">1h ago</small>
                      </div>
                      <div class="flex-shrink-0 dropdown-notifications-actions">
                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="ri-close-line"></span></a>
                      </div>
                    </div>
                  </li>
                  <li class="list-group-item list-group-item-action dropdown-notifications-item">
                    <div class="d-flex">
                      <div class="flex-shrink-0 me-3">
                        <div class="avatar">
                          <span class="avatar-initial rounded-circle bg-label-success"><i class="ri-shopping-cart-2-line"></i></span>
                        </div>
                      </div>
                      <div class="flex-grow-1">
                        <h6 class="mb-1 small">Whoo! You have new order 🛒 </h6>
                        <small class="mb-1 d-block text-body">ACME Inc. made new order $1,154</small>
                        <small class="text-muted">1 day ago</small>
                      </div>
                      <div class="flex-shrink-0 dropdown-notifications-actions">
                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="ri-close-line"></span></a>
                      </div>
                    </div>
                  </li>
                  <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                    <div class="d-flex">
                      <div class="flex-shrink-0 me-3">
                        <div class="avatar">
                          <img src="../assets/img/avatars/9.png" alt class="w-px-40 h-auto rounded-circle">
                        </div>
                      </div>
                      <div class="flex-grow-1">
                        <h6 class="mb-1 small">Application has been approved 🚀 </h6>
                        <small class="mb-1 d-block text-body">Your ABC project application has been approved.</small>
                        <small class="text-muted">2 days ago</small>
                      </div>
                      <div class="flex-shrink-0 dropdown-notifications-actions">
                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="ri-close-line"></span></a>
                      </div>
                    </div>
                  </li>
                  <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                    <div class="d-flex">
                      <div class="flex-shrink-0 me-3">
                        <div class="avatar">
                          <span class="avatar-initial rounded-circle bg-label-success"><i class="ri-pie-chart-2-line"></i></span>
                        </div>
                      </div>
                      <div class="flex-grow-1">
                        <h6 class="mb-1 small">Monthly report is generated</h6>
                        <small class="mb-1 d-block text-body">July monthly financial report is generated </small>
                        <small class="text-muted">3 days ago</small>
                      </div>
                      <div class="flex-shrink-0 dropdown-notifications-actions">
                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="ri-close-line"></span></a>
                      </div>
                    </div>
                  </li>
                  <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                    <div class="d-flex">
                      <div class="flex-shrink-0 me-3">
                        <div class="avatar">
                          <img src="../assets/img/avatars/5.png" alt class="w-px-40 h-auto rounded-circle">
                        </div>
                      </div>
                      <div class="flex-grow-1">
                        <h6 class="mb-1 small">Send connection request</h6>
                        <small class="mb-1 d-block text-body">Peter sent you connection request</small>
                        <small class="text-muted">4 days ago</small>
                      </div>
                      <div class="flex-shrink-0 dropdown-notifications-actions">
                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="ri-close-line"></span></a>
                      </div>
                    </div>
                  </li>
                  <li class="list-group-item list-group-item-action dropdown-notifications-item">
                    <div class="d-flex">
                      <div class="flex-shrink-0 me-3">
                        <div class="avatar">
                          <img src="../assets/img/avatars/6.png" alt class="w-px-40 h-auto rounded-circle">
                        </div>
                      </div>
                      <div class="flex-grow-1">
                        <h6 class="mb-1 small">New message from Jane</h6>
                        <small class="mb-1 d-block text-body">Your have new message from Jane</small>
                        <small class="text-muted">5 days ago</small>
                      </div>
                      <div class="flex-shrink-0 dropdown-notifications-actions">
                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="ri-close-line"></span></a>
                      </div>
                    </div>
                  </li>
                  <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                    <div class="d-flex">
                      <div class="flex-shrink-0 me-3">
                        <div class="avatar">
                          <span class="avatar-initial rounded-circle bg-label-warning"><i class="ri-error-warning-line"></i></span>
                        </div>
                      </div>
                      <div class="flex-grow-1">
                        <h6 class="mb-1 small">CPU is running high</h6>
                        <small class="mb-1 d-block text-body">CPU Utilization Percent is currently at 88.63%,</small>
                        <small class="text-muted">5 days ago</small>
                      </div>
                      <div class="flex-shrink-0 dropdown-notifications-actions">
                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="ri-close-line"></span></a>
                      </div>
                    </div>
                  </li>
                </ul>
              </li>
              <li class="border-top">
                <div class="d-grid p-4">
                  <a class="btn btn-primary btn-sm d-flex" href="javascript:void(0);">
                    <small class="align-middle">View all notifications</small>
                  </a>
                </div>
              </li>
            </ul>
          </li>
          <!--/ Notification -->

          <!-- User -->
          <li class="nav-item navbar-dropdown dropdown-user dropdown">
            <a class="nav-link dropdown-toggle hide-arrow p-0" href="javascript:void(0);" data-bs-toggle="dropdown">
              <div class="avatar avatar-online">
                <img src="../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle">
              </div>
            </a>
            <ul class="dropdown-menu dropdown-menu-end mt-3 py-2">
              <li>
                <a class="dropdown-item" href="pages-account-settings-account.html">
                  <div class="d-flex align-items-center">
                    <div class="flex-shrink-0 me-2">
                      <div class="avatar avatar-online">
                        <img src="../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle">
                      </div>
                    </div>
                    <div class="flex-grow-1">
                      <h6 class="mb-0 small">John Doe</h6>
                      <small class="text-muted">Admin</small>

                    </div>
                  </div>
                </a>
              </li>
              <li>
                <div class="dropdown-divider"></div>
              </li>
              <li>
                <a class="dropdown-item" href="pages-profile-user.html">
                  <i class="ri-user-3-line ri-22px me-2"></i>
                  <span class="align-middle">My Profile</span>
                </a>
              </li>
              <li>
                <a class="dropdown-item" href="pages-account-settings-account.html">
                  <i class="ri-settings-4-line ri-22px me-2"></i>
                  <span class="align-middle">Settings</span>
                </a>
              </li>
              <li>
                <a class="dropdown-item" href="pages-account-settings-billing.html">
                  <span class="d-flex align-items-center align-middle">
                    <i class="flex-shrink-0 ri-file-text-line ri-22px me-2"></i>
                    <span class="flex-grow-1 align-middle">Billing</span>
                    <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger h-px-20 d-flex align-items-center justify-content-center">4</span>
                  </span>
                </a>
              </li>
              <li>
                <div class="dropdown-divider"></div>
              </li>
              <li>
                <a class="dropdown-item" href="pages-pricing.html">
                  <i class="ri-money-dollar-circle-line ri-22px me-2"></i>
                  <span class="align-middle">Pricing</span>
                </a>
              </li>
              <li>
                <a class="dropdown-item" href="pages-faq.html">
                  <i class="ri-question-line ri-22px me-2"></i>
                  <span class="align-middle">FAQ</span>
                </a>
              </li>
              <li>
                <div class="d-grid px-4 pt-2 pb-1">
                  <a class="btn btn-danger d-flex" href="auth-login-cover.html" target="_blank">
                    <small class="align-middle">Logout</small>
                    <i class="ri-logout-box-r-line ms-2 ri-16px"></i>
                  </a>
                </div>
              </li>
            </ul>
          </li>
          <!--/ User -->
          


        </ul>
      </div>

      
      <!-- Search Small Screens -->
      <div class="navbar-search-wrapper search-input-wrapper  d-none">
        <input type="text" class="form-control search-input container-xxl border-0" placeholder="Search..." aria-label="Search...">
        <i class="ri-close-fill search-toggler cursor-pointer"></i>
      </div>
      
      
  
</nav>

<!-- / Navbar -->

      

      <!-- Content wrapper -->
      <div class="content-wrapper">

        <!-- Content -->
        
          <div class="container-xxl flex-grow-1 container-p-y">
            
            

<div class="row g-6 mb-6">
  <div class="col-sm-6 col-xl-3">
    <div class="card">
      <div class="card-body">
        <div class="d-flex justify-content-between">
          <div class="me-1">
            <p class="text-heading mb-1">Session</p>
            <div class="d-flex align-items-center">
              <h4 class="mb-1 me-2">21,459</h4>
              <p class="text-success mb-1">(+29%)</p>
            </div>
            <small class="mb-0">Total Users</small>
          </div>
          <div class="avatar">
            <div class="avatar-initial bg-label-primary rounded">
              <div class="ri-group-line ri-26px"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-xl-3">
    <div class="card">
      <div class="card-body">
        <div class="d-flex justify-content-between">
          <div class="me-1">
            <p class="text-heading mb-1">Paid Users</p>
            <div class="d-flex align-items-center">
              <h4 class="mb-1 me-2">4,567</h4>
              <p class="text-success mb-1">(+18%)</p>
            </div>
            <small class="mb-0">Last week analytics</small>
          </div>
          <div class="avatar">
            <div class="avatar-initial bg-label-danger rounded">
              <div class="ri-user-add-line ri-26px scaleX-n1"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-xl-3">
    <div class="card">
      <div class="card-body">
        <div class="d-flex justify-content-between">
          <div class="me-1">
            <p class="text-heading mb-1">Active Users</p>
            <div class="d-flex align-items-center">
              <h4 class="mb-1 me-2">19,860</h4>
              <p class="text-danger mb-1">(-14%)</p>
            </div>
            <small class="mb-0">Last week analytics</small>
          </div>
          <div class="avatar">
            <div class="avatar-initial bg-label-success rounded">
              <div class="ri-user-follow-line ri-26px"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-xl-3">
    <div class="card">
      <div class="card-body">
        <div class="d-flex justify-content-between">
          <div class="me-1">
            <p class="text-heading mb-1">Pending Users</p>
            <div class="d-flex align-items-center">
              <h4 class="mb-1 me-2">237</h4>
              <p class="text-success mb-1">(+42%)</p>
            </div>
            <small class="mb-0">Last week analytics</small>
          </div>
          <div class="avatar">
            <div class="avatar-initial bg-label-warning rounded">
              <div class="ri-user-search-line ri-26px"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>
<!-- Users List Table -->
<div class="card">
  <div class="card-header border-bottom">
    <h6 class="card-title mb-0">Filters</h6>
    <div class="d-flex justify-content-between align-items-center row pt-4 pb-2 gap-4 gap-md-0 gx-5">
      <div class="col-md-4 user_role"></div>
      <div class="col-md-4 user_plan"></div>
      <div class="col-md-4 user_status"></div>
    </div>
  </div>
  <div class="card-datatable table-responsive">
    <table class="datatables-users table">
      <thead>
        <tr>
          <th></th>
          <th></th>
          <th>User</th>
          <th>Email</th>
          <th>Role</th>
          <th>Plan</th>
          <th>Status</th>
          <th>Actions</th>
        </tr>
      </thead>
    </table>
  </div>
  <!-- Offcanvas to add new user -->
  <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasAddUser" aria-labelledby="offcanvasAddUserLabel">
    <div class="offcanvas-header border-bottom">
      <h5 id="offcanvasAddUserLabel" class="offcanvas-title">Add User</h5>
      <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body mx-0 flex-grow-0 h-100">
      <form class="add-new-user pt-0" id="addNewUserForm" onsubmit="return false">
        <div class="form-floating form-floating-outline mb-5">
          <input type="text" class="form-control" id="add-user-fullname" placeholder="John Doe" name="userFullname" aria-label="John Doe" />
          <label for="add-user-fullname">Full Name</label>
        </div>
        <div class="form-floating form-floating-outline mb-5">
          <input type="text" id="add-user-email" class="form-control" placeholder="john.doe@example.com" aria-label="john.doe@example.com" name="userEmail" />
          <label for="add-user-email">Email</label>
        </div>
        <div class="form-floating form-floating-outline mb-5">
          <input type="text" id="add-user-contact" class="form-control phone-mask" placeholder="+1 (609) 988-44-11" aria-label="john.doe@example.com" name="userContact" />
          <label for="add-user-contact">Contact</label>
        </div>
        <div class="form-floating form-floating-outline mb-5">
          <input type="text" id="add-user-company" class="form-control" placeholder="Web Developer" aria-label="jdoe1" name="companyName" />
          <label for="add-user-company">Company</label>
        </div>
        <div class="form-floating form-floating-outline mb-5">
          <select id="country" class="select2 form-select">
            <option value="">Select</option>
            <option value="Australia">Australia</option>
            <option value="Bangladesh">Bangladesh</option>
            <option value="Belarus">Belarus</option>
            <option value="Brazil">Brazil</option>
            <option value="Canada">Canada</option>
            <option value="China">China</option>
            <option value="France">France</option>
            <option value="Germany">Germany</option>
            <option value="India">India</option>
            <option value="Indonesia">Indonesia</option>
            <option value="Israel">Israel</option>
            <option value="Italy">Italy</option>
            <option value="Japan">Japan</option>
            <option value="Korea">Korea, Republic of</option>
            <option value="Mexico">Mexico</option>
            <option value="Philippines">Philippines</option>
            <option value="Russia">Russian Federation</option>
            <option value="South Africa">South Africa</option>
            <option value="Thailand">Thailand</option>
            <option value="Turkey">Turkey</option>
            <option value="Ukraine">Ukraine</option>
            <option value="United Arab Emirates">United Arab Emirates</option>
            <option value="United Kingdom">United Kingdom</option>
            <option value="United States">United States</option>
          </select>
          <label for="country">Country</label>
        </div>
        <div class="form-floating form-floating-outline mb-5">
          <select id="user-role" class="form-select">
            <option value="subscriber">Subscriber</option>
            <option value="editor">Editor</option>
            <option value="maintainer">Maintainer</option>
            <option value="author">Author</option>
            <option value="admin">Admin</option>
          </select>
          <label for="user-role">User Role</label>
        </div>
        <div class="form-floating form-floating-outline mb-5">
          <select id="user-plan" class="form-select">
            <option value="basic">Basic</option>
            <option value="enterprise">Enterprise</option>
            <option value="company">Company</option>
            <option value="team">Team</option>
          </select>
          <label for="user-plan">Select Plan</label>
        </div>
        <button type="submit" class="btn btn-primary me-sm-3 me-1 data-submit">Submit</button>
        <button type="reset" class="btn btn-outline-danger" data-bs-dismiss="offcanvas">Cancel</button>
      </form>
    </div>
  </div>
</div>


          </div>
          <!-- / Content -->

          
          

<!-- Footer -->
<footer class="content-footer footer bg-footer-theme">
  <div class="container-xxl">
    <div class="footer-container d-flex align-items-center justify-content-between py-4 flex-md-row flex-column">
      <div class="text-body mb-2 mb-md-0">
        © <script>
        document.write(new Date().getFullYear())

        </script>, made with <span class="text-danger"><i class="tf-icons ri-heart-fill"></i></span> by <a href="https://themeselection.com" target="_blank" class="footer-link">ThemeSelection</a>
      </div>
      <div class="d-none d-lg-inline-block">
        
        <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
        <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>
        
        <a href="https://demos.themeselection.com/materio-bootstrap-html-admin-template/documentation/" target="_blank" class="footer-link me-4">Documentation</a>
        
        
        <a href="https://themeselection.com/support/" target="_blank" class="footer-link d-none d-sm-inline-block">Support</a>
        
      </div>
    </div>
  </div>
</footer>
<!-- / Footer -->

          
          <div class="content-backdrop fade"></div>
        </div>
        <!-- Content wrapper -->
      </div>
      <!-- / Layout page -->
    </div>

    
    
    <!-- Overlay -->
    <div class="layout-overlay layout-menu-toggle"></div>
    
    
    <!-- Drag Target Area To SlideIn Menu On Small Screens -->
    <div class="drag-target"></div>
    
  </div>
  <!-- / Layout wrapper -->

  
  <div class="buy-now">
    <a href="https://themeselection.com/item/materio-bootstrap-html-admin-template/" target="_blank" class="btn btn-danger btn-buy-now">Buy Now</a>
  </div>
  

  

  <!-- Core JS -->
  <!-- build:js assets/vendor/js/core.js -->
  <script src="../assets/vendor/libs/jquery/jquery.js"></script>
  <script src="../assets/vendor/libs/popper/popper.js"></script>
  <script src="../assets/vendor/js/bootstrap.js"></script>
  <script src="../assets/vendor/libs/node-waves/node-waves.js"></script>
  <script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
  <script src="../assets/vendor/libs/hammer/hammer.js"></script>
  <script src="../assets/vendor/libs/i18n/i18n.js"></script>
  <script src="../assets/vendor/libs/typeahead-js/typeahead.js"></script>
  <script src="../assets/vendor/js/menu.js"></script>
  
  <!-- endbuild -->

  <!-- Vendors JS -->
  <script src="../assets/vendor/libs/moment/moment.js"></script>
<script src="../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
<script src="../assets/vendor/libs/select2/select2.js"></script>
<script src="../assets/vendor/libs/@form-validation/popular.js"></script>
<script src="../assets/vendor/libs/@form-validation/bootstrap5.js"></script>
<script src="../assets/vendor/libs/@form-validation/auto-focus.js"></script>
<script src="../assets/vendor/libs/cleavejs/cleave.js"></script>
<script src="../assets/vendor/libs/cleavejs/cleave-phone.js"></script>

  <!-- Main JS -->
  <script src="../assets/js/main.js"></script>
  

  <!-- Page JS -->
  <script src="../assets/js/app-user-list.js"></script>
  
</body>

</html>

<!-- beautify ignore:end -->
