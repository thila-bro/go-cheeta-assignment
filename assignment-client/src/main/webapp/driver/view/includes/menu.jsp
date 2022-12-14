<%-- 
    Document   : menu.jsp
    Created on : Sep 5, 2022, 11:28:27 PM
    Author     : thilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    boolean isLogin     = false; 
    String firstName    = "";
    String lastName     = "";
    String email        = "";
    String userID       = "";
    
    HttpSession ses = request.getSession();
    
    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("ISDRIVERLOGIN")) {
            if (Boolean.parseBoolean(cookie.getValue()) == true) {
                isLogin = true;
            }
        } else if (cookie.getName().equals("DRIVERFIRSTNAME")) {
            firstName = cookie.getValue();
        } else if (cookie.getName().equals("DRIVERLASTNAME")) {
            lastName = cookie.getValue();
        } else if (cookie.getName().equals("DRIVEREMAIL")) {
            email = cookie.getValue();
        } else if (cookie.getName().equals("DRIVERID")) {
            userID = cookie.getValue();
        }
    }
    
    if (!isLogin) {
        ses.setAttribute("loginSessionExpire", "Session expired. Please login");
        response.sendRedirect("/assignment-client/admin/login.jsp");
    }

%>
<!DOCTYPE html>
<header id="page-topbar">
    <div class="navbar-header">
        <div class="d-flex">
            <!-- LOGO -->
            <div class="navbar-brand-box">
                <a href="/assignment-client/driver/view/index.jsp" class="logo logo-dark">
                    <span class="logo-sm">
                        <img src="/assignment-client/admin/asset/img/logo.svg" alt="" height="22">
                    </span>
                    <span class="logo-lg">
                        <img src="/assignment-client/admin/asset/img/logo-dark.png" alt="" height="17">
                    </span>
                </a>

                <a href="/assignment-client/driver/view/index.jsp" class="logo logo-light">
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
                <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img class="rounded-circle header-profile-user" src="/assignment-client/admin/asset/img/avatar-3.jpg" alt="Header Avatar">
                    <span class="d-none d-xl-inline-block ms-1" key="t-henry"><%= firstName + " " + lastName %></span>
                    <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
                </button>
                <div class="dropdown-menu dropdown-menu-end">
                    <!-- item-->
                    <a class="dropdown-item" href="/assignment-client/driver/view/profile/update.jsp"><i class="bx bx-user font-size-16 align-middle me-1"></i> <span key="t-profile">Profile</span></a>
<!--                    <a class="dropdown-item" href="#"><i class="bx bx-wallet font-size-16 align-middle me-1"></i> <span key="t-my-wallet">My Wallet</span></a>
                    <a class="dropdown-item d-block" href="#"><span class="badge bg-success float-end">11</span><i class="bx bx-wrench font-size-16 align-middle me-1"></i> <span key="t-settings">Settings</span></a>
                    <a class="dropdown-item" href="auth-lock-screen"><i class="bx bx-lock-open font-size-16 align-middle me-1"></i> <span key="t-lock-screen">Lock screen</span></a>-->
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item text-danger" href="/assignment-client/driver/controller/logout.jsp"><i class="bx bx-power-off font-size-16 align-middle me-1 text-danger"></i> <span key="t-logout">Logout</span></a>
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

<!--                <li>
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
                </li>-->

                <li>
                    <a href="/assignment-client/driver/view/histry/list.jsp" class="waves-effect">
                        <i class="bx bx-calendar"></i>
                        <span key="t-calendar">Bookings</span>
                    </a>
                </li>

                

            </ul>
        </div>
        <!-- Sidebar -->
    </div>
</div>
<!-- Left Sidebar End -->