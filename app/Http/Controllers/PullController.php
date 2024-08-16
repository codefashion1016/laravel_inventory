<?php

namespace App\Http\Controllers;
use App\Models\Order;
use App\Models\Inventorys;
use App\Http\Requests\PullInventoryRequest;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\OrderExport;
use App\Imports\OrderImport;
use Brian2694\Toastr\Facades\Toastr;

class PullController extends Controller
{

    public function index()
    {
        $orders = Order::all();

            return view('orders.index', compact('orders'))
                ->with('success', 'Inventory pulled successfully.');
    }
    public function create()
    {
        $uniqueValues = [
            'category_name' => Inventorys::distinct('category_name')->pluck('category_name'),
            // Add other custom fields as needed
        ];
       
        return view('orders.create', compact('uniqueValues'));
    }

    public function pullsave(Request $request)
    {
        $request->validate([
            'quantity' => 'required|numeric',
        ]);

        $womPartNumber = $request->wompart_num;
        $newQuantity = $request->quantity;
        // Check if the inventory with the given 'wompart_num' exists
        $inventory = Inventorys::where('wompart_num', $womPartNumber)->first();
        
        if ($inventory) {
            $categoryName = $inventory->category_name;
            
            // Decrement the quantity in the Inventorys table
            $currentQuantity = Inventorys::where('wompart_num', $womPartNumber)->value('quantity');
            // var_dump($inventory);die;

            if ($currentQuantity >= $newQuantity) {
                Inventorys::where('wompart_num', $womPartNumber)
                    ->decrement('quantity', $newQuantity);
                if ($categoryName) {
                    // Check if the order with the given 'wompart_num' exists
                    $order = Order::where('wompart_num', $womPartNumber)->first();
            
                    if ($order) {
                        // If the record exists, update the quantity
                        $order->quantity += $newQuantity;
                        $order->save();
                    } else {
                        // If the record doesn't exist, create a new record
                        Order::create([
                            'quantity' => $newQuantity,
                            'category' => $categoryName,
                            'wompart_num' => $womPartNumber,
                            'status' => $request->status,
                        ]);
                    }
            
                    return redirect()->route('orders')->with('success', 'Inventory pulled successfully.');
                } else {
                    // Handle the case where category name is missing
                    return redirect()->back()->with('error', 'Category name is missing. Please try again.');
                }
            } else {
                // Set the quantity to 0
                Inventorys::where('wompart_num', $womPartNumber)
                    ->update(['quantity' => $currentQuantity]);
                Toastr::error('Inventory quantity is not enough now.', 'Error');
            
                return redirect()->back()->with('error', 'Inventory quantity is not enough now.');
            }
            
            // Check if the category name exists
            
        } else {
            // Handle the case where inventory doesn't exist
            return redirect()->back()->with('error', 'Inventory not found. Please try again.');
        }
    }
    public function import(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xlsx,xls,csv|max:2048',
        ]);


        try {
            $file = $request->file('file');

            $import = new OrderImport;
            Excel::import($import, $file);

            Toastr::success('Import successful', 'Success');
            return redirect()->back();

        } catch (\Exception $e) {
            // Check if the exception is of type ImportException
            if ($e instanceof \App\Imports\ImportException) {
                Toastr::error($e->getMessage(), 'Error');
            } else {
                // Handle other exceptions (e.g., database errors)
                Toastr::error($e->getMessage(), 'Error');
            }

            return redirect()->back();
        }
    }
       
    public function export()
    {
        return Excel::download(new OrderExport, 'Orderspull.csv');
    }

}
