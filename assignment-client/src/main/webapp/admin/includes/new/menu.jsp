<%-- 
    Document   : menu
    Created on : Aug 2, 2022, 4:25:30 PM
    Author     : thilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<header id="page-topbar">
    <div class="navbar-header">
        <div class="d-flex">
            <!-- LOGO -->
            <div class="navbar-brand-box">
                <a href="/" class="logo logo-dark">
                    <span class="logo-sm">
                        <img src="/assignment-client/admin/asset/img/logo.svg" alt="" height="22">
                    </span>
                    <span class="logo-lg">
                        <img src="/assignment-client/admin/asset/img/logo-dark.png" alt="" height="17">
                    </span>
                </a>

                <a href="/" class="logo logo-light">
                    <span class="logo-sm">
                        <img src="/assignment-client/admin/asset/img/logo-light.svg" alt="" height="22">
                    </span>
                    <span class="logo-lg">
                        <img src="/assignment-client/admin/asset/img/logo-light.png" alt="" height="19">
                    </span>
                </a>
            </div>

            <button type="button" class="btn btn-sm px-3 font-size-16 header-item waves-effect" id="vertical-menu-btn">
                <i class="fa fa-fw fa-bars"></i>
            </button>
        </div>

        <div class="d-flex">

            <div class="dropdown d-inline-block d-lg-none ms-2">
                <button type="button" class="btn header-item noti-icon waves-effect" id="page-header-search-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="mdi mdi-magnify"></i>
                </button>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0" aria-labelledby="page-header-search-dropdown">

                    <form class="p-3">
                        <div class="form-group m-0">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username">
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="submit"><i class="mdi mdi-magnify"></i></button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            

            
            <div class="dropdown d-inline-block">
                <button type="button" class="btn header-item noti-icon waves-effect" id="page-header-notifications-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="bx bx-bell bx-tada"></i>
                    <span class="badge bg-danger rounded-pill">3</span>
                </button>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0" aria-labelledby="page-header-notifications-dropdown">
                    <div class="p-3">
                        <div class="row align-items-center">
                            <div class="col">
                                <h6 class="m-0" key="t-notifications"> <?= lang('Files.Notifications') ?> </h6>
                            </div>
                            <div class="col-auto">
                                <a href="#!" class="small" key="t-view-all"> <?= lang('Files.View All') ?> </a>
                            </div>
                        </div>
                    </div>
                    <div data-simplebar style="max-height: 230px;">
                        <a href="" class="text-reset notification-item">
                            <div class="d-flex">
                                <div class="avatar-xs me-3">
                                    <span class="avatar-title bg-primary rounded-circle font-size-16">
                                        <i class="bx bx-cart"></i>
                                    </span>
                                </div>
                                <div class="flex-grow-1">
                                    <h6 class="mt-0 mb-1" key="t-your-order">Your order is placed</h6>
                                    <div class="font-size-12 text-muted">
                                        <p class="mb-1" key="t-grammer">If several languages coalesce the grammar</p>
                                        <p class="mb-0"><i class="mdi mdi-clock-outline"></i> <span key="t-min-ago">3 min ago</span></p>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a href="" class="text-reset notification-item">
                            <div class="d-flex">
                                <img src="assets/images/users/avatar-3.jpg" class="me-3 rounded-circle avatar-xs" alt="user-pic">
                                <div class="flex-grow-1">
                                    <h6 class="mt-0 mb-1">James Lemire</h6>
                                    <div class="font-size-12 text-muted">
                                        <p class="mb-1" key="t-simplified">It will seem like simplified English.</p>
                                        <p class="mb-0"><i class="mdi mdi-clock-outline"></i> <span key="t-hours-ago">1 hours ago</span></p>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a href="" class="text-reset notification-item">
                            <div class="d-flex">
                                <div class="avatar-xs me-3">
                                    <span class="avatar-title bg-success rounded-circle font-size-16">
                                        <i class="bx bx-badge-check"></i>
                                    </span>
                                </div>
                                <div class="flex-grow-1">
                                    <h6 class="mt-0 mb-1" key="t-shipped">Your item is shipped</h6>
                                    <div class="font-size-12 text-muted">
                                        <p class="mb-1" key="t-grammer">If several languages coalesce the grammar</p>
                                        <p class="mb-0"><i class="mdi mdi-clock-outline"></i> <span key="t-min-ago">3 min ago</span></p>
                                    </div>
                                </div>
                            </div>
                        </a>

                        <a href="" class="text-reset notification-item">
                            <div class="d-flex">
                                <img src="assets/images/users/avatar-4.jpg" class="me-3 rounded-circle avatar-xs" alt="user-pic">
                                <div class="flex-grow-1">
                                    <h6 class="mt-0 mb-1">Salena Layfield</h6>
                                    <div class="font-size-12 text-muted">
                                        <p class="mb-1" key="t-occidental">As a skeptical Cambridge friend of mine occidental.</p>
                                        <p class="mb-0"><i class="mdi mdi-clock-outline"></i> <span key="t-hours-ago">1 hours ago</span></p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="p-2 border-top d-grid">
                        <a class="btn btn-sm btn-link font-size-14 text-center" href="javascript:void(0)">
                            <i class="mdi mdi-arrow-right-circle me-1"></i> <span key="t-view-more">View More..</span>
                        </a>
                    </div>
                </div>
            </div>

            <div class="dropdown d-inline-block">
                <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img class="rounded-circle header-profile-user" src="/assignment-client/admin/asset/img/avatar-3.jpg" alt="Header Avatar">
                    <span class="d-none d-xl-inline-block ms-1" key="t-henry">Henry</span>
                    <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
                </button>
                <div class="dropdown-menu dropdown-menu-end">
                    <!-- item-->
                    <a class="dropdown-item" href="#"><i class="bx bx-user font-size-16 align-middle me-1"></i> <span key="t-profile">Profile</span></a>
                    <a class="dropdown-item" href="#"><i class="bx bx-wallet font-size-16 align-middle me-1"></i> <span key="t-my-wallet">My Wallet</span></a>
                    <a class="dropdown-item d-block" href="#"><span class="badge bg-success float-end">11</span><i class="bx bx-wrench font-size-16 align-middle me-1"></i> <span key="t-settings">Settings</span></a>
                    <a class="dropdown-item" href="auth-lock-screen"><i class="bx bx-lock-open font-size-16 align-middle me-1"></i> <span key="t-lock-screen">Lock screen</span></a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item text-danger" href="/logout"><i class="bx bx-power-off font-size-16 align-middle me-1 text-danger"></i> <span key="t-logout">Logout</span></a>
                </div>
            </div>
        </div>
    </div>
</header>




<!-- ========== Left Sidebar Start ========== -->
<div class="vertical-menu">

    <div data-simplebar class="h-100">

        <!--- Sidemenu -->
        <div id="sidebar-menu">
            <!-- Left Menu Start -->
            <ul class="metismenu list-unstyled" id="side-menu">
                <li class="menu-title" key="t-menu">Menu</li>

                <li>
                    <a href="javascript: void(0);" class="waves-effect">
                        <i class="bx bx-home-circle"></i><span class="badge rounded-pill bg-info float-end">04</span>
                        <span key="t-dashboards">Dashboards</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="/" key="t-default">Default</a></li>
                        <li><a href="dashboard-saas" key="t-saas">Saas</a></li>
                        <li><a href="dashboard-crypto" key="t-crypto">Crypto</a></li>
                        <li><a href="dashboard-blog" key="t-blog">Blog</a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-layout"></i>
                        <span key="t-layouts">Layouts</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="true">
                        <li>
                            <a href="javascript: void(0);" class="has-arrow" key="t-vertical">Vertical</a>
                            <ul class="sub-menu" aria-expanded="true">
                                <li><a href="layouts-light-sidebar" key="t-light-sidebar">Light Sidebar</a></li>
                                <li><a href="layouts-compact-sidebar" key="t-compact-sidebar">Compact Sidebar</a></li>
                                <li><a href="layouts-icon-sidebar" key="t-icon-sidebar">Icon Sidebar</a></li>
                                <li><a href="layouts-boxed" key="t-boxed-width">Boxed Width</a></li>
                                <li><a href="layouts-preloader" key="t-preloader">Preloader</a></li>
                                <li><a href="layouts-colored-sidebar" key="t-colored-sidebar">Colored Sidebar</a></li>
                                <li><a href="layouts-scrollable" key="t-scrollable">Scrollable></a></li>
                            </ul>
                        </li>

                        <li>
                            <a href="javascript: void(0);" class="has-arrow" key="t-horizontal">Horizontal</a>
                            <ul class="sub-menu" aria-expanded="true">
                                <li><a href="layouts-horizontal" key="t-horizontal">Horizontal</a></li>
                                <li><a href="layouts-hori-topbar-light" key="t-topbar-light">Topbar Light</a></li>
                                <li><a href="layouts-hori-boxed-width" key="t-boxed-width">Boxed Width</a></li>
                                <li><a href="layouts-hori-preloader" key="t-preloader">Preloader</a></li>
                                <li><a href="layouts-hori-colored-header" key="t-colored-topbar">Colored Header</a></li>
                                <li><a href="layouts-hori-scrollable" key="t-scrollable">Scrollable</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>

                <li class="menu-title" key="t-apps">Branch</li>

                <li>
                    <a href="calendar" class="waves-effect">
                        <i class="bx bx-calendar"></i>
                        <span key="t-calendar">Calendar</span>
                    </a>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-store"></i>
                        <span key="t-ecommerce"><span>Branch</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="/assignment-client/admin/branch/city/add.jsp" key="t-products">Branch City</a></li>
                        <li><a href="ecommerce-products" key="t-products">New Branch</a></li>
                        <li><a href="ecommerce-product-detail" key="t-product-detail">All Branch</a></li>
                    </ul>
                </li>
                
                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-store"></i>
                        <span key="t-vehicles"><span>Vehicles</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="/assignment-client/admin/branch/vehilce/add.jsp" key="t-products">Vehicle Category</a></li>
                        <li><a href="ecommerce-products" key="t-products">New Vehicle</a></li>
                        <li><a href="ecommerce-product-detail" key="t-product-detail">All Vehicle</a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-bitcoin"></i>
                        <span key="t-crypto"><?= lang('Files.Crypto') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="crypto-wallet" key="t-wallet"><?= lang('Files.Wallet') ?></a></li>
                        <li><a href="crypto-buy-sell" key="t-buy"><?= lang('Files.Buy/Sell') ?></a></li>
                        <li><a href="crypto-exchange" key="t-exchange"><?= lang('Files.Exchange') ?></a></li>
                        <li><a href="crypto-lending" key="t-lending"><?= lang('Files.Lending') ?></a></li>
                        <li><a href="crypto-orders" key="t-orders"><?= lang('Files.Orders') ?></a></li>
                        <li><a href="crypto-kyc-application" key="t-kyc"><?= lang('Files.KYC Application') ?></a></li>
                        <li><a href="crypto-ico-landing" key="t-ico"><?= lang('Files.ICO Landing') ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-envelope"></i>
                        <span key="t-email"><?= lang('Files.Email') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="email-inbox" key="t-inbox"><?= lang('Files.Inbox') ?></a></li>
                        <li><a href="email-read" key="t-read-email"><?= lang('Files.Read Email') ?></a></li>
                        <li>
                            <a href="javascript: void(0);">
                                <span class="badge rounded-pill badge-soft-success float-end" key="t-new"><?= lang('New') ?></span>
                                <span key="t-email-templates"><?= lang('Files.Templates') ?></span>
                            </a>
                            <ul class="sub-menu" aria-expanded="true">
                                <li><a href="email-template-basic" key="t-basic-action"><?= lang('Files.Basic Action') ?></a></li>
                                <li><a href="email-template-alert" key="t-alert-email"><?= lang('Files.Alert Email') ?></a></li>
                                <li><a href="email-template-billing" key="t-bill-email"><?= lang('Files.Billing Email') ?></a></li>
                            </ul>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-receipt"></i>
                        <span key="t-invoices"><?= lang('Files.Invoices') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="invoices-list" key="t-invoice-list"><?= lang('Files.Invoice List') ?></a></li>
                        <li><a href="invoices-detail" key="t-invoice-detail"><?= lang('Files.Invoice Detail') ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-briefcase-alt-2"></i>
                        <span key="t-projects"><?= lang('Files.Projects') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="projects-grid" key="t-p-grid"><?= lang('Files.Projects Grid') ?></a></li>
                        <li><a href="projects-list" key="t-p-list"><?= lang('Files.Projects List') ?></a></li>
                        <li><a href="projects-overview" key="t-p-overview"><?= lang('Files.Project Overview') ?></a></li>
                        <li><a href="projects-create" key="t-create-new"><?= lang('Files.Create New') ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-task"></i>
                        <span key="t-tasks"><?= lang('Files.Tasks') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="tasks-list" key="t-task-list"><?= lang('Files.Task List') ?></a></li>
                        <li><a href="tasks-kanban" key="t-kanban-board"><?= lang('Files.Kanban Board') ?></a></li>
                        <li><a href="tasks-create" key="t-create-task"><?= lang('Files.Create Task') ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bxs-user-detail"></i>
                        <span key="t-contacts"><?= lang('Files.Contacts') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="contacts-grid" key="t-user-grid"><?= lang('Files.User Grid') ?></a></li>
                        <li><a href="contacts-list" key="t-user-list"><?= lang('Files.User List') ?></a></li>
                        <li><a href="contacts-profile" key="t-profile"><?= lang('Files.Profile') ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="waves-effect">
                        <span class="badge rounded-pill bg-success float-end" key="t-new"><?= lang('New') ?></span>
                        <i class="bx bx-detail"></i>
                        <span key="t-blog"><?= lang('Files.Blog') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="blog-list" key="t-blog-list"><?= lang('Files.Blog List') ?></a></li>
                        <li><a href="blog-grid" key="t-blog-grid"><?= lang('Files.Blog Grid') ?></a></li>
                        <li><a href="blog-details" key="t-blog-details"><?= lang('Files.Blog Details') ?></a></li>
                    </ul>
                </li>

                <li class="menu-title" key="t-pages"><?= lang('Files.Pages') ?></li>

                <li>
                    <a href="javascript: void(0);" class="waves-effect">
                        <span class="badge rounded-pill bg-success float-end" key="t-new"><?= lang('New') ?></span>
                        <i class="bx bx-user-circle"></i>
                        <span key="t-authentication"><?= lang('Files.Authentication') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="auth-login" key="t-login"><?= lang('Files.Login') ?></a></li>
                        <li><a href="auth-login-2" key="t-login-2"><?= lang('Files.Login') ?> 2</a></li>
                        <li><a href="auth-register" key="t-register"><?= lang('Files.Register') ?></a></li>
                        <li><a href="auth-register-2" key="t-register-2"><?= lang('Files.Register') ?> 2</a></li>
                        <li><a href="auth-recoverpw" key="t-recover-password"><?= lang('Files.Recover Password') ?></a></li>
                        <li><a href="auth-recoverpw-2" key="t-recover-password-2"><?= lang('Files.Recover Password') ?> 2</a></li>
                        <li><a href="auth-lock-screen" key="t-lock-screen"><?= lang('Files.Lock Screen') ?></a></li>
                        <li><a href="auth-lock-screen-2" key="t-lock-screen-2"><?= lang('Files.Lock Screen') ?> 2</a></li>
                        <li><a href="auth-confirm-mail" key="t-confirm-mail"><?= lang('Files.Confirm Mail') ?></a></li>
                        <li><a href="auth-confirm-mail-2" key="t-confirm-mail-2"><?= lang('Files.Confirm Mail') ?> 2</a></li>
                        <li><a href="auth-email-verification" key="t-email-verification"><?= lang('Files.Email Verification') ?></a></li>
                        <li><a href="auth-email-verification-2" key="t-email-verification-2"><?= lang('Files.Email Verification') ?> 2</a></li>
                        <li><a href="auth-two-step-verification" key="t-two-step-verification"><?= lang('Files.Two Step Verification') ?></a></li>
                        <li><a href="auth-two-step-verification-2" key="t-two-step-verification-2"><?= lang('Files.Two Step Verification') ?> 2</a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-file"></i>
                        <span key="t-utility"><?= lang('Files.Utility') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="pages-starter" key="t-starter-page"><?= lang('Files.Starter Page') ?></a></li>
                        <li><a href="pages-maintenance" key="t-maintenance"><?= lang('Files.Maintenance') ?></a></li>
                        <li><a href="pages-comingsoon" key="t-coming-soon"><?= lang('Files.Coming Soon') ?></a></li>
                        <li><a href="pages-timeline" key="t-timeline"><?= lang('Files.Timeline') ?></a></li>
                        <li><a href="pages-faqs" key="t-faqs"><?= lang('Files.FAQs') ?></a></li>
                        <li><a href="pages-pricing" key="t-pricing"><?= lang('Files.Pricing') ?></a></li>
                        <li><a href="pages-404" key="t-error-404"><?= lang('Files.Error') ?> 404</a></li>
                        <li><a href="pages-500" key="t-error-500"><?= lang('Files.Error') ?> 500</a></li>
                    </ul>
                </li>

                <li class="menu-title" key="t-components"><?= lang('Files.Components') ?></li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-tone"></i>
                        <span key="t-ui-elements"><?= lang('Files.UI Elements') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="ui-alerts" key="t-alerts"><?= lang('Files.Alerts') ?></a></li>
                        <li><a href="ui-buttons" key="t-buttons"><?= lang('Files.Buttons') ?></a></li>
                        <li><a href="ui-cards" key="t-cards"><?= lang('Files.Cards') ?></a></li>
                        <li><a href="ui-carousel" key="t-carousel"><?= lang('Files.Carousel') ?></a></li>
                        <li><a href="ui-dropdowns" key="t-dropdowns"><?= lang('Files.Dropdowns') ?></a></li>
                        <li><a href="ui-grid" key="t-grid"><?= lang('Files.Grid') ?></a></li>
                        <li><a href="ui-images" key="t-images"><?= lang('Files.Images') ?></a></li>
                        <li><a href="ui-lightbox" key="t-lightbox"><?= lang('Files.Lightbox') ?></a></li>
                        <li><a href="ui-modals" key="t-modals"><?= lang('Files.Modals') ?></a></li>
                        <li><a href="ui-offcanvas" key="t-offcanvas"><?= lang('Files.Offcanvas') ?></a></li>
                        <li><a href="ui-rangeslider" key="t-range-slider"><?= lang('Files.Range Slider') ?></a></li>
                        <li><a href="ui-session-timeout" key="t-session-timeout"><?= lang('Files.Session Timeout') ?></a></li>
                        <li><a href="ui-progressbars" key="t-progress-bars"><?= lang('Files.Progress Bars') ?></a></li>
                        <li><a href="ui-sweet-alert" key="t-sweet-alert"><?= lang('Files.Sweet-Alert') ?></a></li>
                        <li><a href="ui-tabs-accordions" key="t-tabs-accordions"><?= lang('Files.Tabs & Accordions') ?></a></li>
                        <li><a href="ui-typography" key="t-typography"><?= lang('Files.Typography') ?></a></li>
                        <li><a href="ui-video" key="t-video"><?= lang('Files.Video') ?></a></li>
                        <li><a href="ui-general" key="t-general"><?= lang('Files.General') ?></a></li>
                        <li><a href="ui-colors" key="t-colors"><?= lang('Files.Colors') ?></a></li>
                        <li><a href="ui-rating" key="t-rating"><?= lang('Files.Rating') ?></a></li>
                        <li><a href="ui-notifications" key="t-notifications"><?= lang('Files.Notifications') ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="waves-effect">
                        <i class="bx bxs-eraser"></i>
                        <span class="badge rounded-pill bg-danger float-end">10</span>
                        <span key="t-forms"><?= lang('Files.Forms') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="form-elements" key="t-form-elements"><?= lang('Files.Form Elements') ?></a></li>
                        <li><a href="form-layouts" key="t-form-layouts"><?= lang('Files.Form Layouts') ?></a></li>
                        <li><a href="form-validation" key="t-form-validation"><?= lang('Files.Form Validation') ?></a></li>
                        <li><a href="form-advanced" key="t-form-advanced"><?= lang('Files.Form Advanced') ?></a></li>
                        <li><a href="form-editors" key="t-form-editors"><?= lang('Files.Form Editors') ?></a></li>
                        <li><a href="form-uploads" key="t-form-upload"><?= lang('Files.Form File Upload') ?></a></li>
                        <li><a href="form-xeditable" key="t-form-xeditable"><?= lang('Files.Form Xeditable') ?></a></li>
                        <li><a href="form-repeater" key="t-form-repeater"><?= lang('Files.Form Repeater') ?></a></li>
                        <li><a href="form-wizard" key="t-form-wizard"><?= lang('Files.Form Wizard') ?></a></li>
                        <li><a href="form-mask" key="t-form-mask"><?= lang('Files.Form Mask') ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-list-ul"></i>
                        <span key="t-tables"><?= lang('Files.Tables') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="tables-basic" key="t-basic-tables"><?= lang('Files.Basic Tables') ?></a></li>
                        <li><a href="tables-datatable" key="t-data-tables"><?= lang('Files.Data Tables') ?></a></li>
                        <li><a href="tables-responsive" key="t-responsive-table"><?= lang('Files.Responsive Table') ?></a></li>
                        <li><a href="tables-editable" key="t-editable-table"><?= lang('Files.Editable Table') ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bxs-bar-chart-alt-2"></i>
                        <span key="t-charts"><?= lang('Files.Charts') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="charts-apex" key="t-apex-charts"><?= lang('Files.Apex Charts') ?></a></li>
                        <li><a href="charts-echart" key="t-e-charts"><?= lang('Files.E Charts') ?></a></li>
                        <li><a href="charts-chartjs" key="t-chartjs-charts"><?= lang('Files.Chartjs Charts') ?></a></li>
                        <li><a href="charts-flot" key="t-flot-charts"><?= lang('Files.Flot Charts') ?></a></li>
                        <li><a href="charts-tui" key="t-ui-charts"><?= lang('Files.Toast UI Charts') ?></a></li>
                        <li><a href="charts-knob" key="t-knob-charts"><?= lang('Files.Jquery Knob Charts') ?></a></li>
                        <li><a href="charts-sparkline" key="t-sparkline-charts"><?= lang('Files.Sparkline Charts') ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-aperture"></i>
                        <span key="t-icons"><?= lang('Files.Icons') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="icons-boxicons" key="t-boxicons"><?= lang('Files.Boxicons') ?></a></li>
                        <li><a href="icons-materialdesign" key="t-material-design"><?= lang('Files.Material Design') ?></a></li>
                        <li><a href="icons-dripicons" key="t-dripicons"><?= lang('Files.Dripicons') ?></a></li>
                        <li><a href="icons-fontawesome" key="t-font-awesome"><?= lang('Files.Font Awesome') ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-map"></i>
                        <span key="t-maps"><?= lang('Files.Maps') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="maps-google" key="t-g-maps"><?= lang('Files.Google Maps') ?></a></li>
                        <li><a href="maps-vector" key="t-v-maps"><?= lang('Files.Vector Maps') ?></a></li>
                        <li><a href="maps-leaflet" key="t-l-maps"><?= lang('Files.Leaflet Maps') ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-share-alt"></i>
                        <span key="t-multi-level"><?= lang('Files.Multi Level') ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="true">
                        <li><a href="javascript: void(0);" key="t-level-1-1"><?= lang('Files.Level') ?> 1.1</a></li>
                        <li>
                            <a href="javascript: void(0);" class="has-arrow" key="t-level-1-2"><?= lang('Files.Level') ?> 1.2</a>
                            <ul class="sub-menu" aria-expanded="true">
                                <li><a href="javascript: void(0);" key="t-level-2-1">Level 2.1</a></li>
                                <li><a href="javascript: void(0);" key="t-level-2-2">Files.Level 2.2</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
        <!-- Sidebar -->
    </div>
</div>
<!-- Left Sidebar End -->