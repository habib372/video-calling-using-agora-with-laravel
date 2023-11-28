<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\MeetingController;

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



// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/clear-cache', function () {
    Artisan::call('cache:clear');
    Artisan::call('route:cache');
    Artisan::call('config:cache');
    Artisan::call('view:clear');
    return "/clear-cache";
});


Route::get('/', function () {
    return view('index');
});


Auth::routes();

Route::get('/joinMeeting/{url?}', [MeetingController::class, 'joinMeeting'])->name('joinMeeting');

Route::get('/home', [MeetingController::class, 'meetingUser'])->name('meetingUser');
Route::get('/createMeeting', [MeetingController::class, 'createMeeting'])->name('createMeeting');
Route::post('/saveUserName', [MeetingController::class, 'saveUserName'])->name('saveUserName');
Route::post('/meetingApprove', [MeetingController::class, 'meetingApprove'])->name('meetingApprove');

