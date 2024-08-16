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
                    <h3>New Pull</h3>
                    <p class="text-subtitle text-muted">Input your imformation  </p>
                </div>
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('orders') }}">Orders</a></li>
                            <li class="breadcrumb-item active" aria-current="page">New Inventory</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div> 
        <div class="col-lg-12 col-12">
            <div id="auth-left">
                
                <form method="POST" action="{{ route('pull_request') }}" class="md-float-material" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="text" class="form-control form-control-lg" name="wompart_num" value="{{ old('wompart_num') }}" placeholder="Part Number">
                        <div class="form-control-icon">
                            <i class="bi bi-cash"></i>
                        </div>
                    </div>
                    @foreach ($uniqueValues as $field => $values)
                        <div class="form-group">
                            <label for="{{ $field }}">{{ ucfirst($field) }}</label>
                            <select name="{{ $field }}" id="{{ $field }}" class="form-control">
                                <option value="">All</option>
                                @foreach ($values as $value)
                                    <option value="{{ $value }}">
                                        {{ $value }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    @endforeach
                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="number" class="form-control form-control-lg" name="quantity" value="{{ old('quantity') }}" placeholder="Enter Quantity">
                        <div class="form-control-icon">
                            <i class="bi bi-cash"></i>
                        </div>
                    </div>
                    <div class="form-group position-relative has-icon-left mb-4">
                        <fieldset class="form-group">
                            <select class="form-select " name="status" id="status">
                                <option selected disabled>Select Status</option>
                                <option value="Equipment Repair">Equipment Repair</option>
                                <option value="Maintenance">Maintenance</option>
                                <option value="Expired">Expired</option>
                                <option value="IRS Transfer">IRS Transfer</option>
                            </select>
                            <div class="form-control-icon">
                                <i class="bi bi-exclude"></i>
                            </div>
                        </fieldset>
                    </div>
                    <button type="submit" class="btn btn-primary">Pull Request</button>
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
                    <h3>New Pull</h3>
                    <p class="text-subtitle text-muted">Input your imformation  </p>
                </div>
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('orders') }}">Orders</a></li>
                            <li class="breadcrumb-item active" aria-current="page">New Inventory</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div> 
        <div class="col-lg-12 col-12">
            <div id="auth-left">
                
                <form method="POST" action="{{ route('pull_request') }}" class="md-float-material" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="text" class="form-control form-control-lg" name="wompart_num" value="{{ old('wompart_num') }}" placeholder="Part Number">
                        <div class="form-control-icon">
                            <i class="bi bi-cash"></i>
                        </div>
                    </div>
                    @foreach ($uniqueValues as $field => $values)
                        <div class="form-group">
                            <label for="{{ $field }}">{{ ucfirst($field) }}</label>
                            <select name="{{ $field }}" id="{{ $field }}" class="form-control">
                                <option value="">All</option>
                                @foreach ($values as $value)
                                    <option value="{{ $value }}">
                                        {{ $value }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    @endforeach
                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="number" class="form-control form-control-lg" name="quantity" value="{{ old('quantity') }}" placeholder="Enter Quantity">
                        <div class="form-control-icon">
                            <i class="bi bi-cash"></i>
                        </div>
                    </div>
                    <div class="form-group position-relative has-icon-left mb-4">
                        <fieldset class="form-group">
                            <select class="form-select " name="status" id="status">
                                <option selected disabled>Select Status</option>
                                <option value="Equipment Repair">Equipment Repair</option>
                                <option value="Maintenance">Maintenance</option>
                                <option value="Expired">Expired</option>
                                <option value="IRS Transfer">IRS Transfer</option>
                            </select>
                            <div class="form-control-icon">
                                <i class="bi bi-exclude"></i>
                            </div>
                        </fieldset>
                    </div>
                    <button type="submit" class="btn btn-primary">Pull Request</button>
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
