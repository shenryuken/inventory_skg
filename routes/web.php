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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/users/logout', 'Auth\LoginController@userLogout')->name('users.logout');

Route::prefix('users')->group(function (){

	//User Pages
	// Route::get('/profile/{id}', 'UserController@profile');
	// Route::get('/create_profile', 'UserController@createProfile');
	// Route::get('/profile/{id}/edit', 'UserController@editProfile');
	Route::get('/dashboard', 'UserController@dashboard')->name('users.dashboard');
	// Route::post('/profile', 'UserController@saveProfile');
	// Route::put('/profile/{id}', ['as' => 'profile.update', 'uses' => 'UserController@updateProfile']);

	Route::get('/list', 'UserController@lists');
	Route::get('/update-rank/{id}', 'UserController@updateRank');
	Route::post('/assignrank', 'UserController@postAssignRank');
	
	Route::get('/register-member', 'UserController@registrationMemberForm');
	Route::post('/register-member', 'UserController@registerMember');

    Route::get('/mykad-status-index', 'UserController@mykadStatusIndex');
    Route::get('/show-mykad-status/{id}', 'UserController@showMykadStatus');
    Route::put('/update-mykad-status', 'UserController@updateMykadStatus');
	
	Route::post('/logout', 'Auth\LoginController@userLogout')->name('users.logout');
	Route::get('/{id}/edit', 'UserController@edit')->name('users.edit');
  	Route::put('/{id}', ['as' => 'user.update', 'uses' => 'UserController@update']);
  	Route::get('/', 'UserController@index');
});

Route::prefix('admin')->group(function (){
	Route::get('/login', 'Auth\AdminLoginController@showLoginForm')->name('admin.login');
	Route::post('/login', 'Auth\AdminLoginController@login')->name('admin.login.submit');
	Route::get('/', 'AdminController@index')->name('admin.dashboard');
	Route::get('/logout', 'Auth\AdminLoginController@logout')->name('admin.logout');

	//Password reset routes
	Route::post('/password/email', 'Auth\AdminForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
	Route::get('/password/reset', 'Auth\AdminForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
	Route::post('/password/reset', 'Auth\AdminResetPasswordController@reset');
	Route::get('/password/reset/{token}', 'Auth\AdminResetPasswordController@showResetForm')->name('admin.password.reset');

	//Admin Pages routes
	Route::get('/dashboard', 'AdminController@dashboard')->name('admin.dashboard');
	Route::get('{id}/edit', 'AdminController@edit');
	Route::put('/update/{id}', 'AdminController@update')->name('admin.update');
	Route::get('/assignrole', 'AdminController@assignRole');
	Route::post('/assignrole', 'AdminController@postAssignRole')->name('admin.assign.role');
	Route::get('/revokerole/{id}', 'AdminController@revokeRole');
	Route::post('/revokerole', 'AdminController@postRevokeRole');
	Route::get('/lists', 'AdminController@lists');
});

/*
======================================================================================
 Profile
======================================================================================
*/
Route::get('profile/create', 'ProfileController@create');
Route::get('profile/{id}/edit', 'ProfileController@edit');
Route::get('user/profile/{id}', 'ProfileController@show');
Route::get('admin/profile/{id}', 'ProfileController@showAdmin');

Route::get('profile/upload-avatar', 'ProfileController@uploadAvatar');
Route::post('profile/upload-avatar', 'ProfileController@postUploadAvatar');

Route::get('profile/upload-ic', 'ProfileController@uploadIc');
Route::post('profile/upload-ic', 'ProfileController@postUploadIc')->name('upload.ic.post');
Route::get('profile/ic-status-index', 'ProfileController@icStatusIndex');
Route::get('profile/show-ic/{id}', 'ProfileController@showIcStatus');
Route::put('profile/update-ic-status', 'ProfileController@updateIcStatus')->name('profile.update-ic-status');
Route::put('profile/{id}', 'ProfileController@update')->name('profile.update');
Route::post('profile', 'ProfileController@store');

/*
======================================================================================
 End Profile
======================================================================================
*/

/*
======================================================================================
 Banks
======================================================================================
*/
Route::get('banks', 'BankController@list');
Route::get('banks/create', 'BankController@create')->name('banks.create');
Route::get('banks/{id}/edit', 'BankController@edit');
Route::post('bank', 'BankController@store');
Route::put('banks/{id}', 'BankController@update');

/*
======================================================================================
 End Banks
======================================================================================
*/

//Register Staff
Route::get('registers/staff', 'RegisterController@registrationStaffForm');
Route::post('registers/staff', 'RegisterController@registerStaff');

//Register Member
Route::get('registers/member', 'RegisterController@registrationMemberForm');
Route::post('registers/member', 'RegisterController@registerMember');

Route::get('firstTimePurchaseRegistration', 'RegisterController@firstTimePurchaseRegistration')->name('firstTimePurchaseRegistration');

//UserTree Route
Route::get('/referrals/hierarchy/{id}', 'ReferralController@getHierarchy');
Route::get('/referrals/my-downline', 'ReferralController@getDownline');
Route::get('/register-member', 'UserController@registrationMemberForm');
Route::get('/change-email', 'UserController@changeEmail');
Route::post('/change-email', 'UserController@postChangeEmail');
//Route::get('/user', 'UserController@index');

/*
======================================================================================
 Shop 
======================================================================================
*/
Route::get('shop/skg-mall', 'ShopController@skgMall');
Route::get('shop/agents', 'ShopController@agentsStoreList');
Route::get('shop/agent-store/{id}', 'ShopController@agentStore');

Route::post('shop/addToCart', 'ShopController@addToCart');
Route::put('shop/cart/update/{id}', 'ShopController@updateCart')->name('update.cart');
Route::get('shop/cart', 'ShopController@cart');
Route::get('shop/first-cart', 'ShopController@firstCart');
Route::get('shop/cart/{id}', 'ShopController@agentStoreCart');
Route::delete('shop/remove/{pid}', 'ShopController@removeFromCart');
Route::get('shop/checkout', 'ShopController@checkout');
Route::get('shop/emptyCart', 'ShopController@emptyCart');



/*
======================================================================================
 End Shop  
======================================================================================
*/

/*
======================================================================================
 Payments
======================================================================================
*/
Route::get('payments', 'OrderController@index');
Route::post('payments/options', 'PaymentController@options');
Route::get('payments/cash', 'PaymentController@cash');
Route::post('payments/postPayCash', 'PaymentController@postPayCash');
Route::get('payments/paypal', 'PaymentController@paypal');
Route::get('payments/credit_debit_card', 'PaymentController@creditDebitCard');
Route::get('payments/ewallet', 'PaymentController@ewallet');

//Route::put('shop/{id}', ['as' => 'shop.update', 'uses' => 'ShopController@update']);


/*
======================================================================================
 End Payments
========================================
/*
======================================================================================
 Invoices  
======================================================================================
*/

Route::get('invoices/my-customer-invoices/{id}', 'InvoiceController@getAllCustomerInvoices');
Route::get('invoices/my-customer/{id}', 'InvoiceController@showCustomerInvoice');
Route::get('invoices/my-invoices', 'InvoiceController@myInvoices');
Route::get('invoices/{id}', 'InvoiceController@show');
Route::get('invoices', 'InvoiceController@index');
//Route::put('shop/{id}', ['as' => 'shop.update', 'uses' => 'ShopController@update']);

/*
======================================================================================
 End Invoices  
======================================================================================
*/


/*
======================================================================================
 INVENTORY
======================================================================================
*/
Route::get('inventory/dashboard', 'Inventory\InventoryController@index');
#Supplier
Route::get('inventory/supplier/', 'Inventory\SupplierController@index');
Route::get('inventory/supplier/list', 'Inventory\SupplierController@list');
Route::get('inventory/supplier/{id}', 'Inventory\SupplierController@show');
Route::get('inventory/supplier/{id}/edit', 'Inventory\SupplierController@edit');
Route::post('inventory/supplier/update', 'Inventory\SupplierController@update');
Route::get('inventory/supplier/create', 'Inventory\SupplierController@create');
Route::post('inventory/supplier/store', 'Inventory\SupplierController@store');
Route::get('inventory/supplier/{id}/delete', 'Inventory\SupplierController@destroy');
#Stock In
Route::post('inventory/stock/in/new_stock','Inventory\StockInController@newStock');
Route::get('inventory/stock/in/new_stock', 'Inventory\StockInController@index');


/*
======================================================================================
 End Invoices  
======================================================================================
*/