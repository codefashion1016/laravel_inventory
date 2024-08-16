@extends('layouts.master')
@section('menu')
@extends('sidebar.inventorymanagement')
@endsection
@section('content')
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
                    <h3>New Inventory</h3>
                    <p class="text-subtitle text-muted">Input your imformation  </p>
                </div>
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('home') }}">Dashboard</a></li>
                            <li class="breadcrumb-item active" aria-current="page">New Inventory</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div> 
        <div class="col-lg-12 col-12">
            <div id="auth-left">
                
                <form method="POST" action="{{ route('offinventory/save') }}" class="md-float-material" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="number" class="form-control form-control-lg" name="quantity" value="{{ old('quantity') }}" placeholder="Enter Quantity">
                        <div class="form-control-icon">
                            <i class="bi bi-cash"></i>
                        </div>
                    </div>
                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="text" class="form-control form-control-lg" name="wompart_num" value="{{ old('wompart_num') }}" placeholder="Enter Part Number">
                        <div class="form-control-icon">
                            <i class="bi bi-person"></i>
                        </div>
                    </div>

                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="text" class="form-control form-control-lg" name="wom_description" value="{{ old('wom_description') }}" placeholder="Description">
                        <div class="form-control-icon">
                            <i class="bi bi-text-center"></i>
                        </div>
                    </div>

                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="number" class="form-control form-control-lg " name="wom_po" value="{{ old('wom_po') }}" placeholder="Order Number">
                        <div class="form-control-icon">
                            <i class="bi bi-puzzle"></i>
                        </div>
                    </div>

                    <div class="form-group position-relative has-icon-left mb-4">
                        <fieldset class="form-group">
                            <select class="form-select " name="category_name" id="category_name">
                                <option selected disabled>Select Category</option>
                                <option value="Elastomers">Elastomers</option>
                                <option value="Hard Components">Hard Components</option>
                                <option value="Hardware">Hardware</option>
                                <option value="Seats and Gates">Seats and Gates</option>
                                <option value="Gaskets">Gaskets</option>
                                <option value="DRS Controls">DRS Controls</option>
                                <option value="Hpu">Hpu</option>
                                <option value="Flowhead">Flowhead </option>
                            </select>
                            <div class="form-control-icon">
                                <i class="bi bi-exclude"></i>
                            </div>
                        </fieldset>
                    </div>

                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="text" class="form-control form-control-lg " name="wom_serial" placeholder="Serial Number">
                        <div class="form-control-icon">
                            <i class="bi bi-shield-lock"></i>
                        </div>
                    </div>

                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="number" step="0.1" class="form-control form-control-lg" name="durometer" placeholder="Durometer">
                        <div class="form-control-icon">
                            <i class="bi bi-x-octagon-fill"></i>
                        </div>
                    </div>
                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="text" class="form-control form-control-lg" id="datepicker1"  name="cure_date" placeholder="Cure Date">
                        <div class="form-control-icon">
                            <i class="bi bi-calendar-check-fill"></i>
                        </div>
                    </div>
                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="text" class="form-control form-control-lg" id="datepicker2"  name="expiration_date" placeholder="Expiration date">
                        <div class="form-control-icon">
                            <i class="bi bi-calendar-check-fill"></i>
                        </div>
                    </div>
                    <div class="form-group position-relative has-icon-left mb-4">
                        <input type="text" class="form-control form-control-lg" name="where_used" placeholder="Where based">
                        <div class="form-control-icon">
                            <i class="bi bi-map-fill"></i>
                        </div>
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
