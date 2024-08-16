<?php

namespace App\Http\Controllers;

use App\Models\Inventorys;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use DB;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\InventorysExport;
use App\Imports\InventorysImport;

class InventoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $inventorys = Inventorys::all();
        // dd($inventorys);
        return view('inventorys.index',compact('inventorys'));
    }
    public function category()
    {
        $categories = Inventorys::distinct('category_name')->pluck('category_name');
        return view('inventorys.category', compact('categories'));
    }
    public function showByCategory($category)
    {
        $inventoryItems = Inventorys::where('category_name', $category)->get();
        return view('inventorys.sub_category', compact('category', 'inventoryItems'));
    }
    public function type()
    {
        return view('inventorys.type');
    }
    public function drs()
    {
        return view('inventorys.drs');
    }
    public function offshore()
    {
        return view('inventorys.offshore');
    }
    public function onshore()
    {
        return view('inventorys.onshore');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('inventorys.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   
        $existingInventory = Inventorys::where('wompart_num', $request->wompart_num)->first();
        if ($existingInventory) {
            Toastr::error('This part number already exists in the database.', 'Error');
            return redirect()->route('inventoryManagement');
        }
               
        $request->validate([

            'wompart_num' => 'required|string|max:255|unique:inventorys,wompart_num',
            'wom_po'     => 'required|string|max:255',
            'category_name'=>  'required|string|max:255',
            'wom_description'     => 'required|string|max:255',
            'where_used' => 'required|string|max:255',
            
        ]);
        
        $inventorys = new Inventorys;
        $inventorys->wompart_num  = $request->wompart_num;
        $inventorys->quantity  = $request->quantity;
        $inventorys->wom_po       = $request->wom_po;
        $inventorys->wom_description        = $request->wom_description;
        $inventorys->category_name        = $request->category_name;
        $inventorys->wom_serial = $request->wom_serial;
        $inventorys->durometer    = $request->durometer;
        $inventorys->cure_date     = $request->cure_date;
        $inventorys->expiration_date     = $request->expiration_date;
        $inventorys->where_used     = $request->where_used;
        $inventorys->location     = $request->location;
        
        
        $inventorys->save();

        Toastr::success('New inventory created successfully :)','Success');
        return redirect()->route('inventoryManagement');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Inventory  $inventory
     * @return \Illuminate\Http\Response
     */
    public function viewDetail($id)
    {
        $data = DB::table('inventorys')->where('id',$id)->get();
        $categories = DB::table('inventorys')->distinct()->pluck('category_name');
        return view('inventorys.view',compact('data', 'categories'));
    }
    public function partDetail($id)
    {
        $data = DB::table('inventorys')->where('id',$id)->get();
        $categories = DB::table('inventorys')->distinct()->pluck('category_name');
        return view('partsearch.view',compact('data', 'categories'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Inventory  $inventory
     * @return \Illuminate\Http\Response
     */
    public function edit(Inventorys $inventorys)
    {
        return view('inventory.edit',compact('inventorys'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Inventory  $inventory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Inventorys $inventorys)
    {

        $id           = $request->id;
        $quantity           = $request->quantity;
        $wompart_num     = $request->wompart_num;
        $wom_po        = $request->wom_po;
        $wom_description = $request->wom_description;
        $category_name       = $request->category_name;
        $wom_serial = $request->wom_serial;
        $durometer    = $request->durometer;
        $cure_date     = $request->cure_date;
        $expiration_date     = $request->expiration_date;
        $location     = $request->location;
        $where_used     = $request->where_used;
        
        $update = [

            'id'           => $id,
            'quantity'           => $quantity,
            'wompart_num'   => $wompart_num,
            'wom_po'       => $wom_po,
            'wom_description'  => $wom_description,
            'category_name' => $category_name,
            'wom_serial' =>    $wom_serial,
            'durometer' =>     $durometer,
            'cure_date' => $cure_date,
            'expiration_date' => $expiration_date,
            'where_used'    => $where_used,
            'location'    => $location,

        ];

        Inventorys::where('id',$request->id)->update($update);
        Toastr::success('Inventory updated successfully :)','Success');
        return redirect()->route('inventoryManagement');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Inventory  $inventory
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $delete = Inventorys::find($id);
        $delete->delete();
        Toastr::success('Inventory deleted successfully :)','Success');
        return redirect()->route('inventoryManagement');
    }

    public function search(){
        $inventoryItems = Inventorys::all();
        $uniqueValues = [
            'wom_description' => Inventorys::distinct('wom_description')->pluck('wom_description'),
            'where_used' => Inventorys::distinct('where_used')->pluck('where_used'),
            // Add other custom fields as needed
        ];
        return view('partsearch.index', compact('inventoryItems', 'uniqueValues'));
    }

    public function filter(Request $request)
    {
        // Get filter values from the request
        $uniqueValues = [
            'wom_description' => Inventorys::distinct('wom_description')->pluck('wom_description'),
            'where_used' => Inventorys::distinct('where_used')->pluck('where_used'),
            // Add other custom fields as needed
        ];

        // Get filter values from the request
        $filterValues = $request->only(['wompart_num', 'wom_description', 'where_used']);

        // Check if wompart_num exists in the database
        $partNumberExists = Inventorys::where('wompart_num', $request->wompart_num)->exists();

        if (!$partNumberExists) {
            // Redirect back with an error message
            Toastr::error('This Part Number does not exist.', 'Error');
            return redirect()->back()->withInput();
        }

        // Query the database based on the filter values
        $inventoryItems = Inventorys::when($filterValues, function ($query) use ($filterValues) {
            foreach ($filterValues as $field => $value) {
                if ($value) {
                    $query->where($field, 'like', "$value");
                }
            }
        })->get();

        return view('partsearch.index', compact('inventoryItems', 'filterValues', 'uniqueValues'));
    }

    public function import(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xlsx,xls,csv|max:2048',
        ]);


        try {
            $file = $request->file('file');

            $import = new InventorysImport;
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
        return Excel::download(new InventorysExport, 'inventorys.csv');
    }
    public function showChart()
    {
        $data = Inventorys::all(); // Replace YourModel with your actual model

        return response()->json(['data' => $data]);
    }

}
