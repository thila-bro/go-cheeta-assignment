<%-- 
    Document   : menu
    Created on : Aug 2, 2022, 4:25:30 PM
    Author     : thilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    boolean isLogin = false;
    boolean isSuper = false;
    String email = "";
    String firstName = "";
    String lastName = "";
    HttpSession ses = request.getSession();

    for (Cookie cookie : request.getCookies()) {
        if (cookie.getName().equals("ISADMINLOGIN")) {
            if (Boolean.parseBoolean(cookie.getValue()) == true) {
                isLogin = true;
            }
        }
        if (cookie.getName().equals("ISSUPER")) {
            if (Boolean.parseBoolean(cookie.getValue()) == true) {
                isSuper = true;
            }
        }
        if (cookie.getName().equals("ADMINEMAIL")) {
            email = cookie.getValue();
        }
        if (cookie.getName().equals("ADMINFIRSTNAME")) {
            firstName = cookie.getValue();
        }
        if (cookie.getName().equals("ADMINLASTNAME")) {
            lastName = cookie.getValue();
        }
    }

    if (!isLogin) {
        ses.setAttribute("loginSessionExpire", "Session expired. Please login");
        response.sendRedirect("/assignment-client/admin/login.jsp");
    }


%>

<header id="page-topbar">
    <div class="navbar-header">
        <div class="d-flex">
            <!-- LOGO -->
            <div class="navbar-brand-box">
                <a href="/assignment-client/admin/controller/cookieCheck.jsp" class="logo logo-dark">
                    <span class="logo-sm">
                        <img src="/assignment-client/admin/asset/img/logo.svg" alt="" height="22">
                    </span>
                    <span class="logo-lg">
                        <img src="/assignment-client/admin/asset/img/logo-dark.png" alt="" height="17">
                    </span>
                </a>

                <a href="/assignment-client/admin/controller/cookieCheck.jsp" class="logo logo-light">
                    <!--                    <span class="logo-sm">
                                            <img src="/assignment-client/admin/asset/img/logo-light.svg" alt="" height="22">
                                        </span>-->
                    <span class="logo-lg">
                        <!--<img src="/assignment-client/admin/asset/img/logo-light.png" alt="" height="19">-->
                        <span style="font-size: 2rem; font-weight: bold">Go Cheeta</span>
                    </span>
                </a>
            </div>

            <button type="button" class="btn btn-sm px-3 font-size-16 header-item waves-effect" id="vertical-menu-btn">
                <i class="fa fa-fw fa-bars"></i>
            </button>
        </div>

        <div class="d-flex">

            <div class="dropdown d-inline-block">
                <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img class="rounded-circle header-profile-user" src="/assignment-client/admin/asset/img/avatar-3.jpg" alt="Header Avatar">
                    <span class="d-none d-xl-inline-block ms-1" key="t-henry"><%= firstName + " " + lastName%></span>
                    <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
                </button>
                <div class="dropdown-menu dropdown-menu-end">
                    <!-- item-->
                    <a class="dropdown-item" href="/assignment-client/admin/views/profile/update.jsp"><i class="bx bx-user font-size-16 align-middle me-1"></i> <span key="t-profile">Profile</span></a>
                    <!--                    <a class="dropdown-item" href="#"><i class="bx bx-wallet font-size-16 align-middle me-1"></i> <span key="t-my-wallet">My Wallet</span></a>
                                        <a class="dropdown-item d-block" href="#"><span class="badge bg-success float-end">11</span><i class="bx bx-wrench font-size-16 align-middle me-1"></i> <span key="t-settings">Settings</span></a>
                                        <a class="dropdown-item" href="auth-lock-screen"><i class="bx bx-lock-open font-size-16 align-middle me-1"></i> <span key="t-lock-screen">Lock screen</span></a>-->
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item text-danger" href="/assignment-client/admin/controller/logout.jsp"><i class="bx bx-power-off font-size-16 align-middle me-1 text-danger"></i> <span key="t-logout">Logout</span></a>
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

                <li>
                    <a href="/assignment-client/admin/views/customer/all.jsp" class="waves-effect">
                        <i class="bx bx-user"></i>
                        <span key="t-calendar">Customer</span>
                    </a>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-store"></i>
                        <span key="t-ecommerce"><span>Branch</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="/assignment-client/admin/views/branch/city/add.jsp" key="t-products">Branch City</a></li>
                        <!--<li><a href="/assignment-client/admin/branch/add.jsp" key="t-products">Branch</a></li>-->
                        <li>
                            <a href="javascript: void(0);" class="has-arrow" key="branch">Branch</a>
                            <ul class="sub-menu" aria-expanded="true">
                                <li><a href="/assignment-client/admin/views/branch/admin/add.jsp" key="branch">Branch Admin</a></li>
                                <li><a href="/assignment-client/admin/views/branch/add.jsp" key="branch">Branch</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="bx bx-store"></i>
                        <span key="t-vehicles"><span>Vehicles</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="/assignment-client/admin/views/vehicle/type/add.jsp" key="t-products">Vehicle Type</a></li>
                        <li><a href="/assignment-client/admin/views/vehicle/add.jsp" key="t-products">Vehicle</a></li>
                    </ul>
                </li>

                <li>
                    <a href="/assignment-client/admin/views/driver/add.jsp" class="waves-effect">
                        <i class="bx bx-calendar"></i>
                        <span key="t-calendar">Driver</span>
                    </a>
                </li>

                <li>
                    <a href="/assignment-client/admin/views/distance/all.jsp" class="waves-effect">
                        <i class="bx bx-calendar"></i>
                        <span key="t-calendar">Distance</span>
                    </a>
                </li>


                <% if (isSuper) { %>
                <li class="menu-title" key="t-menu">Super Admin</li>

                <li>
                    <a href="/assignment-client/admin/views/template/email/all.jsp" class="waves-effect">
                        <i class="bx bx-calendar"></i>
                        <span key="t-calendar">Email Template</span>
                    </a>
                </li>
                <% }%>

            </ul>
        </div>
        <!-- Sidebar -->
    </div>
</div>
<!-- Left Sidebar End -->