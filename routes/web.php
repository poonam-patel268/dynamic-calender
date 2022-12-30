<?php

use Illuminate\Support\Facades\Route;

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
    return view('welcome');
});

Route::get('/calender', [App\Http\Controllers\CalanderController::class, 'index'])->name('calender');
Route::post('/store', [App\Http\Controllers\CalanderController::class, 'store'])->name('calender.store');
Route::get('/dynamic-calender', [App\Http\Controllers\CalanderController::class, 'dynamicCalender'])->name('dynamic-calender');

