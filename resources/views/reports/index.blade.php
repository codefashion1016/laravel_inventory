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
                    <h3>WOM IT Control</h3>
                    <p class="text-subtitle text-muted">For Inventory to check they list</p>
                </div>
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('home') }}">Dashboard</a></li>
                            <li class="breadcrumb-item active" aria-current="page">WOM IT</li>
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
                    Inventory Record
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
                                <th class="text-center">Modify</th>
                            </tr>    
                        </thead>
                        <tbody>
                            @foreach ($inventorys as $key => $item)
                                <tr>
                                    <td class="id">{{ ++$key }}</td>
                                    <td class="name">{{ $item->quantity }}</td>
                                    <td class="name">{{ $item->wompart_num }}</td>
                                    
                                    <td class="email">{{ $item->wom_description }}</td>
                                    <td class="phone_number">{{ $item->wom_po }}</td>
                                    <td class="phone_number">{{ $item->category_name }}</td>
                                    <td class="phone_number">{{ $item->where_used }}</td>
                                  
                                    <td class="text-center">
                                        <a href="{{ route('inventory/add/new') }}">
                                            <span class="badge bg-info"><i class="bi bi-person-plus-fill"></i></span>
                                        </a>
                                        <a href="{{ url('inventory/detail/'.$item->id) }}">
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
                href="http://WOM IT">WOM IT</a></p>
            </div>
        </div>
    </footer>
</div>
@endsection
