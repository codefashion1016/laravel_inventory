@extends('layouts.master')
@section('content')
   
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
                        <h1>Onshore Inventory</h1>
                    </div>
                    <div class="col-12 col-md-6 order-md-2 order-first">
                        <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{ route('inventoryonshore') }}">Onshore Inventory</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Inventory Mangement</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        {{-- message --}}
        {!! Toastr::message() !!}
        <div class="page-content">
            <section class="row" style="margin-top:100px">
                <div class="col-12 col-lg-12">
                    <div class="row">
                       @foreach($categories as $category)
                        <div class="col-6 col-lg-4 col-md-6">
                            <div class="card">
                                <div class="card-body px-3 py-4-5">
                                    <div class="row">
                                        
                                        <div class="col-md-12" style="text-align:center">
                                            <h4 class="text-muted font-semibold"><a href="{{ url('/inventory/' . $category) }}">{{ $category }}</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </section>
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
@endsection