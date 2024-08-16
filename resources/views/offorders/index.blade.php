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
                    <h3>Pull Request Control</h3>
                    <p class="text-subtitle text-muted">For Inventory to check they list</p>
                </div>
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('inventoryoffshore') }}">Offshore Inventory</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Pull Request Control</li>
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
                    <div class="row mb-2">
                            <div class="col-4">
                                <form action="{{ url('offorderexport') }}" method="GET">
                                    @csrf
                                    <button class="btn btn-success" type="submit">Export Orders</button>
                                </form>
                            </div>
                            <div class="col-4">
                                
                            </div>
                            <div class="col-4">
                                <a href="{{ route('offpull/add') }}" class="btn btn-primary" style="float:right">PUll REQUEST</a>
                            </div>
                    </div>
                </div>
                <div class="card-body">
                   

                    <table class="table table-striped" id="table1">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>WOM Part Number</th>
                                <th>Category</th>
                                <th>Quantity</th>
                                <th>Status</th>
                                <th>Created At</th>
                            </tr>    
                        </thead>
                        <tbody>
                            @foreach ($orders as $key => $item)
                                <tr>
                                    <td class="id">{{ ++$key }}</td>
                                    <td class="name">{{ $item->wompart_num }}</td>
                                    <td class="phone_number">{{ $item->category }}</td>
                                    <td class="name">{{ $item->quantity }}</td>
                                    <td class="email">{{ $item->status }}</td>
                                    <td class="email">{{ $item->created_at }}</td>

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
                href="http://WOM IT">WOM IT</a></p>
            </div>
        </div>
    </footer>
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
                    <h3>Pull Request Control</h3>
                    <p class="text-subtitle text-muted">For Inventory to check they list</p>
                </div>
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('inventoryoffshore') }}">Offshore Inventory</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Pull Request Control</li>
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
                    <div class="row mb-2">
                            <div class="col-4">
                                <form action="{{ url('offorderexport') }}" method="GET">
                                    @csrf
                                    <button class="btn btn-success" type="submit">Export Orders</button>
                                </form>
                            </div>
                            <div class="col-4">
                                
                            </div>
                            <div class="col-4">
                                <a href="{{ route('offpull/add') }}" class="btn btn-primary" style="float:right">PUll REQUEST</a>
                            </div>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table table-striped" id="table1">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>User Name</th>
                                <th>WOM Part Number</th>
                                <th>Category Name</th>
                                <th>Quantity</th>
                                <th>Status</th>
                                <th>Created At</th>
                            </tr>    
                        </thead>
                        <tbody>
                            @foreach ($orders as $key => $item)
                                <tr>
                                    <td class="id">{{ ++$key }}</td>
                                    <td class="id">{{ auth()->user()->name }}</td>
                                    <td class="name">{{ $item->wompart_num }}</td>
                                    <td class="phone_number">{{ $item->category }}</td>
                                    <td class="name">{{ $item->quantity }}</td>
                                    <td class="email">{{ $item->status }}</td>
                                    <td class="email">{{ $item->created_at }}</td>

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
                href="http://WOM IT">WOM IT</a></p>
            </div>
        </div>
    </footer>
</div>
<?php endif?>
@endsection
