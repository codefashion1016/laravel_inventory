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
                    <h3>Research Inventory  Control</h3>
                    <p class="text-subtitle text-muted">Filter Inventory to check they list</p>
                </div>
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('home') }}">Dashboard</a></li>
                            <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('inventoryonshore') }}">Back</a></li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        {{-- message --}}
        {!! Toastr::message() !!}
        <section class="section">
            <div class="card">
                <div class="card-header">
                    <form action="{{ route('filter_inventory') }}" method="GET">
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

                        <button type="submit" class="btn btn-primary mr-2">Filter</button>
                        <a href="{{ route('partsearch') }}" class="btn btn-secondary">Reset</a>
                    </form>
                </div>
                <div class="card-body">
                    <table class="table table-striped" id="table1">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Quantity</th>
                                <th>WOM Part Number</th>
                                <th>WOM Description</th>
                                <th>WOM PO#</th>
                                <th>Category Name</th>
                                <th>Where used</th>
                                <th>Location</th>
                                <th class="text-center">Modify</th>
                            </tr>    
                        </thead>
                        <tbody>
                            @foreach ($inventoryItems as $key => $item)
                                <tr>
                                    <td class="id">{{ ++$key }}</td>
                                    <td class="name">{{ $item->quantity }}</td>
                                    <td class="name">{{ $item->wompart_num }}</td>
                                    
                                    <td class="email">{{ $item->wom_description }}</td>
                                    <td class="phone_number">{{ $item->wom_po }}</td>
                                    <td class="phone_number">{{ $item->category_name }}</td>
                                    <td class="phone_number">{{ $item->where_used }}</td>
                                    <td class="phone_number">{{ $item->location }}</td>
                                  
                                    <td class="text-center">
                                        <a href="{{ route('inventory/add/new') }}">
                                            <span class="badge bg-info"><i class="bi bi-person-plus-fill"></i></span>
                                        </a>
                                        <a href="{{ url('partsearch/detail/'.$item->id) }}">
                                            <span class="badge bg-success"><i class="bi bi-pencil-square"></i></span>
                                        </a>  
                                        <a href="{{ url('delete_inventory/'.$item->id) }}" onclick="return confirm('Are you sure to want to delete it?')"><span class="badge bg-danger"><i class="bi bi-trash"></i></span></a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
    <footer>
        <div class="footer clearfix mb-0 text-muted ">
            <div class="float-start">
                <p>2023 &copy; Inder W</p>
            </div>
            <div class="float-end">
                <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                href="http://Inventory Management">Invetory Management</a></p>
            </div>
        </div>
    </footer>
</div>
<?php else: ?>
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
                    <h3>Research Inventory  Control</h3>
                    <p class="text-subtitle text-muted">Filter Inventory to check they list</p>
                </div>
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('home') }}">Dashboard</a></li>
                            <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('inventoryonshore') }}">Back</a></li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        {{-- message --}}
        {!! Toastr::message() !!}
        <section class="section">
            <div class="card">
                <div class="card-header">
                    <form action="{{ route('filter_inventory') }}" method="GET">
                        <div class="form-group position-relative">
                            <input type="text" class="form-control" name="wompart_num" placeholder="Part Number">
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

                        <button type="submit" class="btn btn-primary mr-2">Filter</button>
                        <a href="{{ route('partsearch') }}" class="btn btn-secondary">Reset</a>
                    </form>
                </div>
                <div class="card-body">
                    <table class="table table-striped" id="table1">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Quantity</th>
                                <th>WOM Part Number</th>
                                <th>WOM Description</th>
                                <th>WOM PO#</th>
                                <th>Category Name</th>
                                <th>Where used</th>
                                <th>Location</th>
                                <!-- <th class="text-center">Modify</th> -->
                            </tr>    
                        </thead>
                        <tbody>
                            @foreach ($inventoryItems as $key => $item)
                                <tr>
                                    <td class="id">{{ ++$key }}</td>
                                    <td class="name">{{ $item->quantity }}</td>
                                    <td class="name">{{ $item->wompart_num }}</td>
                                    
                                    <td class="email">{{ $item->wom_description }}</td>
                                    <td class="phone_number">{{ $item->wom_po }}</td>
                                    <td class="phone_number">{{ $item->category_name }}</td>
                                    <td class="phone_number">{{ $item->where_used }}</td>
                                    <td class="phone_number">{{ $item->location }}</td>
                                  
                                    <!-- <td class="text-center">
                                        <a href="{{ route('inventory/add/new') }}">
                                            <span class="badge bg-info"><i class="bi bi-person-plus-fill"></i></span>
                                        </a>
                                        <a href="{{ url('partsearch/detail/'.$item->id) }}">
                                            <span class="badge bg-success"><i class="bi bi-pencil-square"></i></span>
                                        </a>
                                    </td> -->
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
    <footer>
        <div class="footer clearfix mb-0 text-muted ">
            <div class="float-start">
                <p>2023 &copy; Inder W</p>
            </div>
            <div class="float-end">
                <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                href="http://Inventory Management">Invetory Management</a></p>
            </div>
        </div>
    </footer>
</div>
<?php endif?>
@endsection
