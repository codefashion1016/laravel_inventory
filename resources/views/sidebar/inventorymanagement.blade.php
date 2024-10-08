<?php if (Auth::user()->role_name == 'Super Admin' || Auth::user()->role_name == 'Admin'): ?>
<div id="sidebar" class="active">
    <div class="sidebar-wrapper active">
        <div class="sidebar-header">
            <div class="d-flex justify-content-between">
                <div class="logo">
                    <a href="{{ route('home') }}"><img src="{{ URL::to('assets/images/logo/logo.png') }}" alt="Logo" srcset=""></a>
                </div>
                <div class="toggler">
                    <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                </div>
            </div>
        </div>
        <div class="sidebar-menu">
            <ul class="menu">
                <li class="sidebar-title">Menu</li>

                <li class="sidebar-item">
                    <a href="{{ route('home') }}" class='sidebar-link'>
                        <i class="bi bi-house-fill"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <div class="card-body">
                        <div class="badges">
                            @if (Auth::user()->role_name=='Admin')
                            <span>Name: <span class="fw-bolder">{{ Auth::user()->name }}</span></span>
                            <hr>
                            <span>Role Name:</span>
                            <span class="badge bg-success">Admin</span>
                            @endif
                            @if (Auth::user()->role_name=='Super Admin')
                                <span>Name: <span class="fw-bolder">{{ Auth::user()->name }}</span></span>
                                <hr>
                                <span>Role Name:</span>
                                <span class="badge bg-info">Super Admin</span>
                            @endif
                            @if (Auth::user()->role_name=='Normal User')
                                <span>Name: <span class="fw-bolder">{{ Auth::user()->name }}</span></span>
                                <hr>
                                <span>Role Name:</span>
                                <span class="badge bg-warning">User Normal</span>
                            @endif
                        </div>
                    </div>
                </li>
                <!-- <li class="sidebar-item">
                    <a href="{{ route('change/password') }}" class='sidebar-link'>
                        <i class="bi bi-shield-lock"></i>
                        <span>Change Password</span>
                    </a>
                </li> -->
                
                @if (Auth::user()->role_name=='Admin')
                    <!-- <li class="sidebar-title">Page &amp; Controller</li> -->
                    <li class="sidebar-item  has-sub {{ request()->is('userManagement') ? 'active': '' }}">
                        <a href="#" class='sidebar-link'>
                            <i class="bi bi-hexagon-fill"></i>
                            <span>User Management</span>
                        </a>
                        <ul class="submenu">
                            <li class="submenu-item">
                                <a href="{{ route('userManagement') }}">User Control</a>
                            </li>
                            <li class="submenu-item">
                                <a href="{{ route('activity/log') }}">User Activity Log</a>
                            </li>
                            <li class="submenu-item">
                                <a href="{{ route('activity/login/logout') }}">Activity Log</a>
                            </li>
                        </ul>
                    </li>
                @endif
                <li class="sidebar-item">
                    <a href="{{ route('change/password') }}" class='sidebar-link'>
                        <i class="bi bi-shield-lock"></i>
                        <span>Change Password</span>
                    </a>
                </li>
                <li class="sidebar-item  has-sub {{ request()->is('inventoryManagement') ? 'active': '' }}">
                    <a href="#" class='sidebar-link'>
                        <i class="bi bi-grid-1x2-fill"></i>
                        <span>Onshore Inventory</span>
                    </a>
                    <ul class="submenu">
                        <li class="submenu-item">
                            <a href="{{ route('inventoryManagement') }}">Add inventory</a>
                        </li>
                        <li class="submenu-item">
                            <a href="{{ route('partsearch') }}">Part Search</a>
                        </li>
                        <li class="submenu-item">
                            <a href="{{ route('orders') }}">Pull Request</a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-item  has-sub {{ request()->is('offinventoryManagement') ? 'active': '' }}">
                    <a href="#" class='sidebar-link'>
                        <i class="bi bi-grid-1x2"></i>
                        <span>Offshore Inventory</span>
                    </a>
                    <ul class="submenu">
                        <li class="submenu-item">
                            <a href="{{ route('offinventoryManagement') }}">Add inventory</a>
                        </li>
                        <li class="submenu-item">
                            <a href="{{ route('offpartsearch') }}">Part Search</a>
                        </li>
                        <li class="submenu-item">
                            <a href="{{ route('offorders') }}">Pull Request</a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-item {{ request()->is('filemanager') ? 'active': '' }}">
                    <a href="{{ route('filemanager') }}" class='sidebar-link'>
                        <i class="bi bi-file-earmark-arrow-up-fill"></i>
                        <span>Procedure</span>
                    </a>
                </li>
                <li class="sidebar-item {{ request()->is('drawing_lists') ? 'active': '' }}">
                    <a href="{{ route('drawing_lists') }}" class='sidebar-link'>
                        <i class="bi bi-palette-fill"></i>
                        <span>Drawing Lists</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="{{ route('logout') }}" class='sidebar-link'>
                        <i class="bi bi-box-arrow-right"></i>
                        <span>Log Out</span>
                    </a>
                </li>                
            </ul>
        </div>
        <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
    </div>
</div>
<?php endif?>