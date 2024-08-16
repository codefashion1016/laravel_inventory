<?php

namespace App\Http\Controllers;
use App\Models\Inventorys;
use Illuminate\Http\Request;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $staff = DB::table('staff')->count();
        $users = DB::table('users')->count();
        $user_activity_logs = DB::table('user_activity_logs')->count();
        $activity_logs = DB::table('activity_logs')->count();
        $chartData = Inventorys::all();

        $elastomersTotal = Inventorys::where('category_name', 'Elastomers')->sum('quantity');
        $hardwareTotal = Inventorys::where('category_name', 'Hardware')->sum('quantity');
        $componentsTotal = Inventorys::where('category_name', 'Hard Components')->sum('quantity');
        $seatsTotal = Inventorys::where('category_name', 'Seats and Gates')->sum('quantity');
        $gasketsTotal = Inventorys::where('category_name', 'Gaskets')->sum('quantity');
        $drsTotal = Inventorys::where('category_name', 'DRS Controls')->sum('quantity');
        $hpuTotal = Inventorys::where('category_name', 'Hpu')->sum('quantity');
        $flowheadTotal = Inventorys::where('category_name', 'Flowhead')->sum('quantity');

        $lowestQuantity = Inventorys::min('quantity');

        $uniqueWompartNums = Inventorys::where('quantity', $lowestQuantity)
            ->pluck('wompart_num')
            ->unique()
            ->count();

        return view('home',compact('staff','users','user_activity_logs','activity_logs','chartData','elastomersTotal','hardwareTotal','componentsTotal','seatsTotal','gasketsTotal','drsTotal','hpuTotal','flowheadTotal','lowestQuantity','uniqueWompartNums'));
    }
}
