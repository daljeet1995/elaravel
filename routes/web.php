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
//frontend routes........
Route::get('/', 'HomeController@index');

















//backend routes.......
Route::get('/logout', 'SuperAdminController@logout');
Route::get('/admin', 'AdminController@index');
Route::get('/dashboard', 'AdminController@show_dashboard');
Route::post('/admin-dashboard', 'AdminController@dashboard');


// category related route 
Route::get('/add-category', 'CategoryController@index');   
Route::get('/all-category', 'CategoryController@all_category');
Route::post('/save-category', 'CategoryController@save_category');
Route::get('/edit_category/{category_id}', 'CategoryController@edit_category');
Route::post('/update_category/{category_id}', 'CategoryController@update_category');
Route::get('/delete_category/{category_id}', 'CategoryController@delete_category');

Route::get('/unactive_category/{category_id}', 'CategoryController@unactive_category');
Route::get('/active_category/{category_id}', 'CategoryController@active_category');


//manufacture or brands 
Route::get('/add-manufacture', 'ManufactureController@index'); 
Route::post('/save-manufacture', 'ManufactureController@save_manufacture');
Route::get('/all-manufacture', 'ManufactureController@all_manufacture');
Route::get('/delete_manufacture/{manufacture_id}', 'ManufactureController@delete_manufacture');
Route::get('/edit_manufacture/{manufacture_id}', 'ManufactureController@edit_manufacture');
Route::post('/update_manufacture/{manufacture_id}', 'ManufactureController@update_manufacture');

Route::get('/unactive_manufacture/{manufacture_id}', 'ManufactureController@unactive_manufacture');
Route::get('/active_manufacture/{manufacture_id}', 'ManufactureController@active_manufacture');

// products routes are here 
Route::get('/add-product', 'ProductController@index');
Route::post('/save-product', 'ProductController@save_product');




























