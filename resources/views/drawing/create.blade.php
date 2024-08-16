@extends('layouts.master')
@section('menu')
@extends('sidebar.inventorymanagement')
@endsection
@section('content')
<?php if (Auth::user()->role_name == 'Super Admin' || Auth::user()->role_name == 'Admin'): ?>
<div id="main">
    <header class="mb-3">
        <a href="#" class="burger-btn d-block d-xl-none">
            <i class="bi bi-justify fs-3"></i>
        </a>
    </header>
    <div class="page-heading">
        <div class="page-title">
            <div class="row">
                <div class="col-12 col-md-6 order-md-1 order-last">
                    <h3>New Drawings</h3>
                    <p class="text-subtitle text-muted">Input your imformation  </p>
                </div>
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('home') }}">Dashboard</a></li>
                            <li class="breadcrumb-item active" aria-current="page">New Drawing</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div> 
        <div class="col-lg-12 col-12">
            <div id="auth-left">
                
                <form method="POST" action="{{ route('drawing/save') }}" class="md-float-material" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="text" class="form-control form-control-lg" name="title" value="{{ old('title') }}" placeholder="Enter Title">
                        <div class="form-control-icon">
                            <i class="bi bi-cash"></i>
                        </div>
                    </div>

                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="text" class="form-control form-control-lg" name="description" value="{{ old('description') }}" placeholder="Description">
                        <div class="form-control-icon">
                            <i class="bi bi-text-center"></i>
                        </div>
                    </div>

                    
                    
                    <div class="form-group">
                        <label for="file">Choose file:</label>
                        {!! Form::file('file', ['class' => 'form-control-file']) !!}
                    </div>
                    <button class="btn btn-primary btn-block btn-lg shadow-lg mt-5">Create</button>
                </form>
            </div>
        </div>
        <div class="col-lg-7 d-none d-lg-block">
            <div id="auth-right">
            </div>
        </div>
    </div>
</div>
<?php else:?>
<div id="main1" style="padding:6em;">
    <header class="mb-3">
        <a href="#" class="burger-btn d-block d-xl-none">
            <i class="bi bi-justify fs-3"></i>
        </a>
    </header>
    <div class="page-heading">
        <div class="page-title">
            <div class="row">
                <div class="col-12 col-md-6 order-md-1 order-last">
                    <h3>New Drawing</h3>
                    <p class="text-subtitle text-muted">Input your imformation  </p>
                </div>
               
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('home') }}">Dashboard</a></li>
                            <li class="breadcrumb-item active" aria-current="page">New Drawing</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div> 
        <div class="col-lg-12 col-12">
            <div id="auth-left">
                
                <form method="POST" action="{{ route('drawing/save') }}" class="md-float-material" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="text" class="form-control form-control-lg" name="title" value="{{ old('title') }}" placeholder="Enter Title">
                        <div class="form-control-icon">
                            <i class="bi bi-cash"></i>
                        </div>
                    </div>

                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="text" class="form-control form-control-lg" name="description" value="{{ old('description') }}" placeholder="Description">
                        <div class="form-control-icon">
                            <i class="bi bi-text-center"></i>
                        </div>
                    </div>

                    
                    
                    <div class="form-group">
                        <label for="file">Choose file:</label>
                        {!! Form::file('file', ['class' => 'form-control-file']) !!}
                    </div>
                    <button class="btn btn-primary btn-block btn-lg shadow-lg mt-5">Create</button>
                </form>
            </div>
        </div>
        <div class="col-lg-7 d-none d-lg-block">
            <div id="auth-right">
            </div>
        </div>
    </div>
</div>
<?php endif?>
@endsection
@push('scripts')
<script>
    document.addEventListener('DOMContentLoaded', function () {
        flatpickr("#datepicker1", {
            enableTime: false, // Set to true if you want to include time selection
            dateFormat: "Y-m-d" // Set the desired date format
        });
        flatpickr("#datepicker2", {
            enableTime: false, // Set to true if you want to include time selection
            dateFormat: "Y-m-d" // Set the desired date format
        });
        
    });
</script>
@endpush
