<?php

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

Route::get('/', function () 
{
    if(Auth::check() && auth::user()->isAdmin == 1)
    {
        return view('admin/index');

    }else if((Auth::check() && auth::user()->isAdmin != 1))
    {
        return redirect('/home');
    }else 
    {
        return view('/home');
    }
});

Auth::routes();

Route::post('/buyticket', 'TicketsController@store')->middleware('auth');

Route::resource('adminSale', 'AdminSaleController');
Route::resource('baskets', 'BasketsController');
Route::get('/home', 'HomeController@index')->name('home');
Route::resource('places', 'PlacesController');
Route::resource('comments', 'CommentsController');
Route::resource('schedules', 'SchedulesController');
Route::resource('adminPlaces', 'AdminPlaceController');
Route::resource('adminUsers', 'AdminUserController');
Route::resource('Dates', 'DateController');


// dashboard admin


Route::resource('adminChart', 'SaleChartController');
Route::resource('placeChart', 'PlaceChartController');

// Route::resource('tickets', 'TicketsController');

// Route::get('Places/show', 'CommentsController@index');
// Route::resource('Places.show', 'CommentsController');
// Route::get('/places/{places}', 'CommentsController@index');
// Route::get('Places/action', 'LiveSearchController@action')->name('Places.action');