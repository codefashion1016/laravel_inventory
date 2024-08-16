
@extends('layouts.master')
@section('content')
<?php if (Auth::user()->role_name == 'Super Admin' || Auth::user()->role_name == 'Admin'): ?>
    @section('menu')
    @extends('sidebar.dashboard')
    @endsection

    <div id="main">
        <header class="mb-3">
            <a href="#" class="burger-btn d-block d-xl-none">
                <i class="bi bi-justify fs-3"></i>
            </a>
        </header>
        <div class="page-heading">
            <h1>Drawing File Manager</h1>
        </div>
        {{-- message --}}
        {!! Toastr::message() !!}
        <div class="container" style="margin-bottom:50px">
            
            <div class="row">
                <div class="col-md-12" id="fm-main-block">
                <div id="fm"></div>
                </div>
            </div>
        </div>
        <!-- File manager -->
        
        <footer>
            <div class="footer clearfix mb-0 text-muted">
                <div class="float-start">
                    <p>2023 &copy; Inder W</p>
                </div>
                <div class="float-end">
                    <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                    href="http://WOM IT">WOM IT</a></p>
                </div>
            </div>
        </footer>
    </div>
    @push('scripts')
    <script src="{{ asset('vendor/file-manager/js/file-manager.js') }}"></script>
    <script>
      document.addEventListener('DOMContentLoaded', function() {
        document.getElementById('fm-main-block').setAttribute('style', 'height:' + window.innerHeight + 'px');
        fm.$store.commit('fm/setFileCallBack', function(fileUrl) {
          window.opener.fmSetLink(fileUrl);
          window.close();
        });
      });
    </script>
    @endpush 

<?php else: ?>
    
    <div id="main1" style="padding: 6rem;">
        <header class="mb-3">
            <a href="#" class="burger-btn d-block d-xl-none">
                <i class="bi bi-justify fs-3"></i>
            </a>
        </header>
        <div class="page-heading">
            <div class="page-title">
                <div class="row">
                    <div class="col-12 col-md-6 order-md-1 order-last">
                        <h1>Drawing File Manager</h1>
                    </div>
                    <div class="col-12 col-md-6 order-md-2 order-first">
                        <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{ route('home') }}">Dashboard</a></li>
                                <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('logout') }}">Logout</a></li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div> 
        </div>
        {{-- message --}}
        {!! Toastr::message() !!}
        <div class="container" style="margin-bottom:50px">
            <div class="row">
                <div class="col-md-12" id="fm-main-block">
                <div id="fm"></div>
                </div>
            </div>
        </div>

        <footer>
            <div class="footer clearfix mb-0 text-muted">
                <div class="float-start">
                    <p>2023 &copy; Inder W</p>
                </div>
                <div class="float-end">
                    <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                    href="http://WOM IT">WOM IT</a></p>
                </div>
            </div>
        </footer>
    </div>
    @push('scripts')
    <script src="{{ asset('vendor/file-manager/js/file-manager.js') }}"></script>
    <script>
      document.addEventListener('DOMContentLoaded', function() {
        document.getElementById('fm-main-block').setAttribute('style', 'height:' + window.innerHeight + 'px');
        fm.$store.commit('fm/setFileCallBack', function(fileUrl) {
          window.opener.fmSetLink(fileUrl);
          window.close();
        });
      });
    </script>
    @endpush 
    @push('scripts')
    <script>
        window.onload = function(){
            
            var currentUrl = window.location.href;
           
            
            if (currentUrl.includes('/drawingmanager')) {

                function fff() {
                    if (document.getElementsByClassName("list-unstyled fm-tree-branch")[0]) {

                    tree = document.getElementsByClassName("list-unstyled fm-tree-branch")[0];

                    tree.getElementsByTagName("li")[1].style.display = 'none';
                    tree.getElementsByTagName("li")[2].style.display = 'none';
                    tree.getElementsByTagName("li")[3].style.display = 'none';

                    fm = document.getElementsByClassName("fm-table")[0];


                    fm.getElementsByTagName("tr")[2].style.display = 'none';
                    fm.getElementsByTagName("tr")[3].style.display = 'none';
                    fm.getElementsByTagName("tr")[4].style.display = 'none';
                    }
                }

                setInterval(fff, 1);
            }

        }
    </script>
    @endpush
    
<?php endif; ?>
@endsection