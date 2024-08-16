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
                    <h3>PDF DRAWINGS</h3>
                    <p class="text-subtitle text-muted">For drawings to check they list</p>
                </div>
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('drawing_lists') }}">Drawing Category</a></li>
                            <li class="breadcrumb-item active" aria-current="page">PDF DRAWINGS</li>
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
                                <h5>Drawing</h5>
                            </div>
                            <div class="col-4">
                                <form action="{{ route('upload.pdf') }}" method="POST" enctype="multipart/form-data" style="display:flex;">
                                    @csrf
                                    <div class="form-group">
                                        <label for="file">Choose file:</label>
                                        {!! Form::file('file', ['class' => 'form-control-file']) !!}
                                    </div>
                                    <button class="btn btn-primary" type="submit" style="width:189px;height:42px;">Import Drawings</button>
                                </form>
                            </div>
                            <div class="col-4">
                                
                            </div>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table table-striped" id="table1">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>User Name</th>
                                <th>Title</th>
                                <th>Description</th>
                                <th>Created At</th>
                                <th>View</th>
                            </tr>    
                        </thead>
                        <tbody>
                            @foreach ($drawingItems as $key => $item)
                                <tr>
                                    <td class="id">{{ ++$key }}</td>
                                    <td class="name">{{ auth()->user()->name }}</td>
                                    <td class="name">{{ $item->title }}</td>
                                    <td class="phone_number">{{ $item->description }}</td>
                                    <td class="email">{{ $item->created_at }}</td>
                                    <th>
                                        <a href="{{ url('download-pdf/' . $item->id) }}" class="btn btn-primary">VIEW & DOWNLOAD</a>
                                        <a href="{{ url('delete_drawing/'.$item->id) }}" onclick="return confirm('Are you sure to want to delete it?')"><span class="badge bg-danger"><i class="bi bi-trash"></i></span></a>
                                    </th>
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
                    <h3>PDF DRAWINGS</h3>
                    <p class="text-subtitle text-muted">For drawings to check they list</p>
                </div>
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('drawing_lists') }}">Drawing Category</a></li>
                            <li class="breadcrumb-item active" aria-current="page">PDF DRAWINGS</li>
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
                    
                </div>
                 <div class="card-body">
                    <table class="table table-striped" id="table1">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>User Name</th>
                                <th>Title</th>
                                <th>Description</th>
                                <th>Created At</th>
                                <th>View</th>
                            </tr>    
                        </thead>
                        <tbody>
                            @foreach ($drawingItems as $key => $item)
                                <tr>
                                    <td class="id">{{ ++$key }}</td>
                                    <td class="name">{{ auth()->user()->name }}</td>
                                    <td class="name">{{ $item->title }}</td>
                                    <td class="phone_number">{{ $item->description }}</td>
                                    <td class="email">{{ $item->created_at }}</td>
                                    <th>
                                        <a href="{{ url('download-pdf/' . $item->id) }}" class="btn btn-primary">VIEW & DOWNLOAD</a>
                                        <a href="{{ url('delete_drawing/'.$item->id) }}" onclick="return confirm('Are you sure to want to delete it?')"><span class="badge bg-danger"><i class="bi bi-trash"></i></span></a>
                                    </th>
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
