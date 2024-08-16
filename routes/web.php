<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PhotosController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\ResetPasswordController;
use App\Http\Controllers\FormController;
use App\Http\Controllers\UserManagementController;
use App\Http\Controllers\LockScreen;
use App\Http\Controllers\PullController;
use App\Http\Controllers\FileManagerController;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

Route::group(['middleware'=>'auth'],function()
{
    Route::get('home',function()
    {
        return view('home');
    });
    Route::get('home',function()
    {
        return view('home');
    });
});

Auth::routes();

// ----------------------------- home dashboard ------------------------------//
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// -----------------------------login----------------------------------------//
Route::get('/login', [App\Http\Controllers\Auth\LoginController::class, 'login'])->name('login');
Route::post('/login', [App\Http\Controllers\Auth\LoginController::class, 'authenticate']);
Route::get('/logout', [App\Http\Controllers\Auth\LoginController::class, 'logout'])->name('logout');

// ----------------------------- lock screen --------------------------------//
Route::get('lock_screen', [App\Http\Controllers\LockScreen::class, 'lockScreen'])->middleware('auth')->name('lock_screen');
Route::post('unlock', [App\Http\Controllers\LockScreen::class, 'unlock'])->name('unlock');

// // ------------------------------ register ---------------------------------//
Route::get('/register', [App\Http\Controllers\Auth\RegisterController::class, 'register'])->name('register');
Route::post('/register', [App\Http\Controllers\Auth\RegisterController::class, 'storeUser'])->name('register');

// ----------------------------- forget password ----------------------------//
Route::get('forget-password', [App\Http\Controllers\Auth\ForgotPasswordController::class, 'getEmail'])->name('forget-password');
Route::post('forget-password', [App\Http\Controllers\Auth\ForgotPasswordController::class, 'postEmail'])->name('forget-password');

// ----------------------------- reset password -----------------------------//
Route::get('reset-password/{token}', [App\Http\Controllers\Auth\ResetPasswordController::class, 'getPassword']);
Route::post('reset-password', [App\Http\Controllers\Auth\ResetPasswordController::class, 'updatePassword']);

// ----------------------------- user profile ------------------------------//
Route::get('profile_user', [App\Http\Controllers\UserManagementController::class, 'profile'])->name('profile_user');
Route::post('profile_user/store', [App\Http\Controllers\UserManagementController::class, 'profileStore'])->name('profile_user/store');

// ----------------------------- user userManagement -----------------------//
Route::get('userManagement', [App\Http\Controllers\UserManagementController::class, 'index'])->middleware('auth')->name('userManagement');
Route::get('user/add/new', [App\Http\Controllers\UserManagementController::class, 'addNewUser'])->middleware('auth')->name('user/add/new');
Route::post('user/add/save', [App\Http\Controllers\UserManagementController::class, 'addNewUserSave'])->name('user/add/save');
Route::get('view/detail/{id}', [App\Http\Controllers\UserManagementController::class, 'viewDetail'])->middleware('auth');
Route::post('update', [App\Http\Controllers\UserManagementController::class, 'update'])->name('update');
Route::get('delete_user/{id}', [App\Http\Controllers\UserManagementController::class, 'delete'])->middleware('auth');
Route::get('activity/log', [App\Http\Controllers\UserManagementController::class, 'activityLog'])->middleware('auth')->name('activity/log');
Route::get('activity/login/logout', [App\Http\Controllers\UserManagementController::class, 'activityLogInLogOut'])->middleware('auth')->name('activity/login/logout');

Route::get('change/password', [App\Http\Controllers\UserManagementController::class, 'changePasswordView'])->middleware('auth')->name('change/password');
Route::post('change/password/db', [App\Http\Controllers\UserManagementController::class, 'changePasswordDB'])->name('change/password/db');


// ----------------------------- WOM IT -----------------------//
Route::get('inventoryManagement', [App\Http\Controllers\InventoryController::class, 'index'])->name('inventoryManagement');
Route::get('inventory', [App\Http\Controllers\InventoryController::class, 'category'])->name('inventory');
Route::get('inventorytype', [App\Http\Controllers\InventoryController::class, 'type'])->name('inventorytype');
Route::get('inventorydrs', [App\Http\Controllers\InventoryController::class, 'drs'])->name('inventorydrs');
Route::get('inventoryonshore', [App\Http\Controllers\InventoryController::class, 'onshore'])->name('inventoryonshore');
Route::get('inventoryoffshore', [App\Http\Controllers\InventoryController::class, 'offshore'])->name('inventoryoffshore');


Route::get('/inventory/{category}', [App\Http\Controllers\InventoryController::class, 'showByCategory']);

Route::get('inventory/add/new', [App\Http\Controllers\InventoryController::class, 'create'])->middleware('auth')->name('inventory/add/new');
Route::post('inventory/save', [App\Http\Controllers\InventoryController::class, 'store'])->name('inventory/save');
Route::get('inventory/detail/{id}', [App\Http\Controllers\InventoryController::class, 'viewDetail'])->middleware('auth');
Route::post('inventory/update', [App\Http\Controllers\InventoryController::class, 'update'])->name('inventory/update');
Route::get('delete_inventory/{id}', [App\Http\Controllers\InventoryController::class, 'delete'])->middleware('auth');
// ----------------------------- Inventory Part Search -----------------------//
Route::get('partsearch', [App\Http\Controllers\InventoryController::class, 'search'])->middleware('auth')->name('partsearch');
Route::get('filter_inventory', [App\Http\Controllers\InventoryController::class, 'filter'])->middleware('auth')->name('filter_inventory');

// ----------------------------- Inventory Pull Request -----------------------//

Route::get('orders', [App\Http\Controllers\PullController::class, 'index'])->middleware('auth')->name('orders');
Route::get('pull/add', [App\Http\Controllers\PullController::class, 'create'])->middleware('auth')->name('pull/add');
Route::post('pull_request', [App\Http\Controllers\PullController::class, 'pullsave'])->middleware('auth')->name('pull_request');
// Route::get('pull_management', [App\Http\Controllers\PullController::class, 'filter'])->middleware('auth')->name('pull_management');

//-----------------------------------------Excel Import and Export------------------------//

Route::get('export', [App\Http\Controllers\InventoryController::class, 'export']);
Route::post('import', [App\Http\Controllers\InventoryController::class, 'import']);
//-----------------------------------------Excel Import and Export Pull-------------------//
Route::get('orderexport', [App\Http\Controllers\PullController::class, 'export']);
Route::post('orderimport', [App\Http\Controllers\PullController::class, 'import']);


//-------------------------------Offshore InventoryController-----------------//
Route::get('offinventoryManagement', [App\Http\Controllers\OffinventoryController::class, 'index'])->name('offinventoryManagement');
Route::get('offinventory', [App\Http\Controllers\OffinventoryController::class, 'category'])->name('offinventory');


Route::get('/offinventory/{category}', [App\Http\Controllers\OffinventoryController::class, 'showByCategory']);

Route::get('offinventory/add/new', [App\Http\Controllers\OffinventoryController::class, 'create'])->middleware('auth')->name('offinventory/add/new');
Route::post('offinventory/save', [App\Http\Controllers\OffinventoryController::class, 'store'])->name('offinventory/save');
Route::get('offinventory/detail/{id}', [App\Http\Controllers\OffinventoryController::class, 'viewDetail'])->middleware('auth');
Route::post('offinventory/update', [App\Http\Controllers\OffinventoryController::class, 'update'])->name('offinventory/update');
Route::get('delete_offinventory/{id}', [App\Http\Controllers\OffinventoryController::class, 'delete'])->middleware('auth');
// ----------------------------- Inventory Part Search -----------------------//
Route::get('offpartsearch', [App\Http\Controllers\OffinventoryController::class, 'search'])->middleware('auth')->name('offpartsearch');
Route::get('filter_offinventory', [App\Http\Controllers\OffinventoryController::class, 'filter'])->middleware('auth')->name('filter_offinventory');


// ----------------------------- Inventory Pull Request -----------------------//

Route::get('offorders', [App\Http\Controllers\PulloffController::class, 'index'])->middleware('auth')->name('offorders');
Route::get('offpull/add', [App\Http\Controllers\PulloffController::class, 'create'])->middleware('auth')->name('offpull/add');
Route::post('offpull_request', [App\Http\Controllers\PulloffController::class, 'pullsave'])->middleware('auth')->name('offpull_request');
// Route::get('pull_management', [App\Http\Controllers\PullController::class, 'filter'])->middleware('auth')->name('pull_management');

//-----------------------------------------Excel Import and Export------------------------//

Route::get('offexport', [App\Http\Controllers\OffinventoryController::class, 'export']);
Route::post('offimport', [App\Http\Controllers\OffinventoryController::class, 'import']);
//-----------------------------------------Excel Import and Export Pull-------------------//
Route::get('offorderexport', [App\Http\Controllers\PulloffController::class, 'export']);
Route::post('offorderimport', [App\Http\Controllers\PulloffController::class, 'import']);

//------------------------------------------PDF upload and download, view-----------------//
Route::get('drawing_lists', [App\Http\Controllers\DrawingController::class, 'index'])->middleware('auth')->name('drawing_lists');
// Route::get('drawing_lists/{category}', [App\Http\Controllers\DrawingController::class, 'category']);
Route::get('drawing/add/new', [App\Http\Controllers\DrawingController::class, 'create'])->middleware('auth')->name('drawing/add/new');
Route::post('drawing/save', [App\Http\Controllers\DrawingController::class, 'store'])->name('drawing/save');
Route::post('/upload-pdf', [App\Http\Controllers\DrawingController::class, 'uploadPdf'])->name('upload.pdf');
Route::get('download-pdf/{id}', [App\Http\Controllers\DrawingController::class, 'downloadPdf'])->name('download.pdf');
// Route::get('view-pdf/{id}', [App\Http\Controllers\DrawingController::class, 'viewPdf'])->name('view.pdf');
Route::get('delete_drawing/{id}', [App\Http\Controllers\DrawingController::class, 'delete'])->middleware('auth');


//------------------------------- file manager----------------------------//
Route::get('filemanager', [FileManagerController::class, 'index'])->name('filemanager');
Route::get('drawingmanager', [FileManagerController::class, 'draw'])->name('drawingmanager');

Route::get('trainmanager', [FileManagerController::class, 'train'])->name('trainmanager');


// Route::get('activity/log', [App\Http\Controllers\InventoryController::class, 'activityLog'])->middleware('auth')->name('activity/log');
// Route::get('activity/login/logout', [App\Http\Controllers\InventoryController::class, 'activityLogInLogOut'])->middleware('auth')->name('activity/login/logout');

// ----------------------------- form staff ------------------------------//
Route::get('form/staff/new', [App\Http\Controllers\FormController::class, 'index'])->middleware('auth')->name('form/staff/new');
Route::post('form/save', [App\Http\Controllers\FormController::class, 'saveRecord'])->name('form/save');
Route::get('form/view/detail', [App\Http\Controllers\FormController::class, 'viewRecord'])->middleware('auth')->name('form/view/detail');
Route::get('form/view/detail/{id}', [App\Http\Controllers\FormController::class, 'viewDetail'])->middleware('auth');
Route::post('form/view/update', [App\Http\Controllers\FormController::class, 'viewUpdate'])->name('form/view/update');
Route::get('delete/{id}', [App\Http\Controllers\FormController::class, 'viewDelete'])->middleware('auth');
