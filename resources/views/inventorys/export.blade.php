@extends('layouts.master')
@section('content')
<section class="section">
    <div class="card">
        <div class="card-header">
            Inventory Records
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
                        <th>WOM Serial</th>
                        <th>durometer</th>
                        <th>compound</th>
                        <th>Where used</th>
                        <th>Location</th>
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
                            <td class="phone_number">{{ $item->wom_serial }}</td>
                            <td class="email">{{ $item->durometer }}</td>
                            <td class="email">{{ $item->compound }}</td>
                            <td class="email">{{ $item->where_used }}</td>
                            <td class="email">{{ $item->location }}</td>
                        
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</section>

@endsection