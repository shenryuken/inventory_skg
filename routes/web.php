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

Route::get('/user/verify/{token}', 'Auth\RegisterController@verifyUser');

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
Route::put('profile/update/{id}', 'ProfileController@update')->name('profile.update');

Route::get('profile/upload-avatar', 'ProfileController@uploadAvatar');
Route::post('profile/upload-avatar', 'ProfileController@postUploadAvatar');

Route::get('profile/change-password-form', 'ProfileController@showChangePasswordForm');
Route::put('profile/change-password-form', 'ProfileController@updateChangePassword')->name('update.change-password');

Route::get('profile/change-securitycode-form', 'ProfileController@showChangeSecurityCodeForm');
Route::put('profile/change-securitycode-form', 'ProfileController@updateChangeSecurityCode')->name('update.change-securitycode');

Route::get('profile/upload-ic', 'ProfileController@uploadIc');
Route::post('profile/upload-ic', 'ProfileController@postUploadIc')->name('upload.ic.post');
Route::get('profile/ic-status-index', 'ProfileController@icStatusIndex');
Route::get('profile/show-ic/{id}', 'ProfileController@showIcStatus');
Route::put('profile/update-ic-status', 'ProfileController@updateIcStatus')->name('profile.update-ic-status');

Route::get('profile/show-comp_cert/{id}', 'ProfileController@showCompCertStatus');
Route::put('profile/update-comp_cert-status', 'ProfileController@updateCompCertStatus')->name('profile.update-comp_cert-status');



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
Route::get('banks', 'BankController@list')->name('bank-list');
Route::get('banks/create', 'BankController@create')->name('banks.create');
Route::get('banks/{id}/edit', 'BankController@edit');
Route::post('bank', 'BankController@store');
Route::put('banks/{id}', 'BankController@update');
Route::delete('banks/{id}','BankController@destroy');

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
Route::post('shop/add-cart-items','ShopController@addCartItems');
Route::get('shop/get-cart-items/{agent_id?}','ShopController@getCartItems');
Route::post('shop/delete-cart-item','ShopController@deleteCartItem');
Route::post('shop/update-quantity-items','ShopController@updateCartItems');
Route::get('shop/checkout-items/{agent_id?}/{delivery_type?}','ShopController@checkoutItems');
Route::get('shop/get-address','ShopController@getAddress');
Route::post('shop/save-address','ShopController@saveAddress');
Route::get('shop/get-product-package','ShopController@getProductPackage');
Route::get('shop/get-promotion-gift','ShopController@getPromotionGift');
Route::post('shop/place-order','ShopController@placeOrder');
Route::get('shop/get-delivery-status/{order_no?}','ShopController@getDeliveryStatus');



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
 Bonus
======================================================================================
*/
Route::get('bonus', 'BonusController@index');
Route::get('bonus/bonus-types', 'BonusController@bonusType');
Route::get('bonus/add-bonus-types', 'BonusController@addBonusType');
Route::get('bonus/history', 'BonusController@history');
Route::get('bonus/my-bonus-history/{id}', 'BonusController@my_bonus_history');
Route::get('bonus/show-bonus-summary/{id}', 'BonusController@showBonusSummary');
Route::get('bonus/{id}/edit-bonus-type', 'BonusController@editBonusType');
Route::put('bonus_types/{id}', ['as' => 'bonus_types.update', 'uses' => 'BonusController@updateBonusType']);

Route::get('bonus/statement/{id}', 'BonusController@bonusStatement');
Route::get('bonus/details/{id}', 'BonusController@bonusDetails');
Route::get('bonus/calculate-end-month-bonus', 'BonusController@calculate_end_month_bonus');
/*
======================================================================================
 End Bonus
======================================================================================
*/

/*
======================================================================================
 Orders  
======================================================================================
*/
//Courier Page
Route::get('orders/process/{id}', 'OrderController@processOrder');
Route::get('orders/my-orders', function(){ return view('orders.my-orders'); });
Route::get('orders/my-orders-list', 'OrderController@myOrders');
Route::post('orders/postProcessOrder', 'OrderController@postProcessOrder');
Route::get('orders/{id}', 'OrderController@show');
Route::get('orders', 'OrderController@index');
//Route::put('shop/{id}', ['as' => 'shop.update', 'uses' => 'ShopController@update']);


/*
======================================================================================
 End Orders  
======================================================================================
*/

/*
======================================================================================
 Wallet  
======================================================================================
*/
Route::get('vault/my-wallet', 'WalletController@mywallet');
Route::get('vault/transfer-point', 'WalletController@transferPoint');
Route::post('vault/transfer-point', 'WalletController@postTransferPoint');
Route::get('vault/transfer-point-history', 'WalletController@transferPointHistory');
Route::get('vault/self-maintain', 'WalletController@selfMaintain');
/*
======================================================================================
 End Wallet  
======================================================================================
*/


/*
======================================================================================
 Reports
======================================================================================
*/
Route::get('reports/members', 'ReportController@members')->name('members.report');
Route::get('reports/sales/bymonth/{month}/{year}', 'ReportController@salesByMonthYear');
Route::get('reports/sales', 'ReportController@sales')->name('sales.report');
Route::get('reports/bonuses', 'ReportController@bonuses')->name('bonuses.report');
Route::get('reports/stocks', 'ReportController@stocks')->name('stocks.report');
/*
======================================================================================
 End Reports
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
Route::get('inventory/supplier/view/{id?}', 'Inventory\SupplierController@show');
Route::get('inventory/supplier/edit/{id?}', 'Inventory\SupplierController@edit');
Route::post('inventory/supplier/update', 'Inventory\SupplierController@update');
Route::get('inventory/supplier/create', 'Inventory\SupplierController@create');
Route::post('inventory/supplier/store', 'Inventory\SupplierController@store');
Route::get('inventory/supplier/delete/{id?}', 'Inventory\SupplierController@destroy');
#Stock In
Route::get('inventory/stock/in/', 'Inventory\StockInController@index');
Route::post('inventory/stock/in/store', 'Inventory\StockInController@store');
Route::get('inventory/stock/list', 'Inventory\StockInController@list');
Route::get('inventory/stock/in/view/{x?}', 'Inventory\StockInController@show');
#Stock Adjustment
Route::get('inventory/stock/adjustment/', 'Inventory\StockAdjustmentController@index');
Route::get('inventory/stock/adjustment/stock_product', 'Inventory\StockAdjustmentController@stockProduct');
Route::get('inventory/stock/adjustment/check_barcode', 'Inventory\StockAdjustmentController@checkBarcode');
Route::post('inventory/stock/adjustment/store', 'Inventory\StockAdjustmentController@store');
#Stock Reports
Route::get('inventory/stock/current/', 'Inventory\StockReportController@indexCurrentStock');
Route::get('inventory/report/stock-balance/', 'Inventory\StockReportController@index');
Route::get('inventory/report/sales', 'Inventory\SalesReportController@index');
Route::get('inventory/stock/barcode/{x?}', 'Inventory\StockReportController@barcode');

#Order Delivery
Route::get('inventory/order/sales', 'Inventory\OrderController@salesIndex');
Route::get('inventory/order/delivery', 'Inventory\OrderController@deliveryIndex');
Route::get('inventory/order/delivery/create/{order_no?}', 'Inventory\OrderController@deliveryCreate');
Route::get('inventory/order/sales/view/{order_no?}', 'Inventory\OrderController@salesDetail');
Route::get('inventory/order/delivery/view/{order_no?}', 'Inventory\OrderController@deliveryDetail');
// Route::get('inventory/order/delivery/view/{order_no?}', 'Inventory\OrderController@deliveryOrderPDF');
Route::post('print/docket-gdex', 'Inventory\OrderController@gdexDocket');
Route::post('inventory/order/delivery/store', 'Inventory\OrderController@deliveryStore');
Route::post('inventory/order/delivery/complete', 'Inventory\OrderController@deliveryComplete');


#Product
Route::get('inventory/product', function () {  return redirect("inventory/product/listing"); });
Route::get('inventory/product/listing', 'Inventory\ProductController@listing');
Route::get('inventory/product/search/{x?}', 'Inventory\ProductController@search');
Route::post('inventory/product/form_search', 'Inventory\ProductController@form_search');
Route::get('inventory/product/form', 'Inventory\ProductController@form');
Route::get('inventory/product/edit/{x?}/{y?}', 'Inventory\ProductController@edit');
Route::get('inventory/product/view/{x?}', 'Inventory\ProductController@view');
Route::post('inventory/product/insert', 'Inventory\ProductController@insert');
Route::post('inventory/product/update/{x?}', 'Inventory\ProductController@update');
Route::get('inventory/product/package_form', 'Inventory\ProductController@package_form');
Route::get('inventory/product/package_edit/{x?}/{y?}', 'Inventory\ProductController@package_edit');
Route::get('inventory/product/package_view/{x?}', 'Inventory\ProductController@package_view');
Route::post('inventory/product/package_insert', 'Inventory\ProductController@package_insert');
Route::post('inventory/product/package_update/{x?}', 'Inventory\ProductController@package_update');
Route::get('inventory/product/reload_image/{x?}', 'Inventory\ProductController@reload_image');
Route::post('inventory/product/upload_image/{x?}', 'Inventory\ProductController@upload_image');
Route::post('inventory/product/set_mainimage', 'Inventory\ProductController@set_mainimage');
Route::post('inventory/product/check_existcode', 'Inventory\ProductController@check_existcode');
Route::get('inventory/product/delete/{x?}', 'Inventory\ProductController@delete');
Route::get('inventory/product/delete_image/{x?}', 'Inventory\ProductController@delete_image');
Route::get('inventory/product/all_data_product', 'Inventory\ProductController@all_data_product');
Route::get('inventory/product/single_data_product/{x?}', 'Inventory\ProductController@single_data_product');
#Product promotion
Route::get('inventory/product/promotion', function () {  return redirect("inventory/product/promotion/listing"); });
Route::get('inventory/product/promotion/listing', 'Inventory\ProductPromotionController@listing');
Route::get('inventory/product/promotion/search/{x?}', 'Inventory\ProductPromotionController@search');
Route::post('inventory/product/promotion/form_search', 'Inventory\ProductPromotionController@form_search');
Route::get('inventory/product/promotion/form', 'Inventory\ProductPromotionController@form');
Route::get('inventory/product/promotion/view/{x?}', 'Inventory\ProductPromotionController@view');
Route::post('inventory/product/promotion/insert', 'Inventory\ProductPromotionController@insert');
Route::get('inventory/product/promotion/edit/{x?}', 'Inventory\ProductPromotionController@edit');
Route::post('inventory/product/promotion/update/{x?}', 'Inventory\ProductPromotionController@update');
Route::get('inventory/product/promotion/delete/{x?}', 'Inventory\ProductPromotionController@delete');
#Settings
Route::get('inventory/setting', function () {  return redirect("inventory/product/listing"); });
// Tax GST
Route::get('inventory/setting/gst', 'Inventory\Configuration\GstController@view');
Route::get('inventory/setting/gst/form', 'Inventory\Configuration\GstController@form');
Route::post('inventory/setting/gst/update', 'Inventory\Configuration\GstController@update');
// Stock Adjustment stockadjustment
Route::get('inventory/setting/stockadjustment', 'Inventory\Configuration\StockadjustmentTypeController@listing');
Route::get('inventory/setting/stockadjustment/search/{x?}', 'Inventory\Configuration\StockadjustmentTypeController@search');
Route::post('inventory/setting/stockadjustment/form_search', 'Inventory\Configuration\StockadjustmentTypeController@form_search');
Route::get('inventory/setting/stockadjustment/delete/{x?}', 'Inventory\Configuration\StockadjustmentTypeController@delete');
Route::post('inventory/setting/stockadjustment/save', 'Inventory\Configuration\StockadjustmentTypeController@save');
// Quantity Type
Route::get('inventory/setting/quantitytype', 'Inventory\Configuration\QuantitytypeController@listing');
Route::get('inventory/setting/quantitytype/search/{x?}', 'Inventory\Configuration\QuantitytypeController@search');
Route::post('inventory/setting/quantitytype/form_search', 'Inventory\Configuration\QuantitytypeController@form_search');
Route::get('inventory/setting/quantitytype/delete/{x?}', 'Inventory\Configuration\QuantitytypeController@delete');
Route::post('inventory/setting/quantitytype/save', 'Inventory\Configuration\QuantitytypeController@save');
// Product Category
Route::get('inventory/setting/productcategory', 'Inventory\Configuration\ProductcategoryController@listing');
Route::get('inventory/setting/productcategory/search/{x?}', 'Inventory\Configuration\ProductcategoryController@search');
Route::post('inventory/setting/productcategory/form_search', 'Inventory\Configuration\ProductcategoryController@form_search');
Route::get('inventory/setting/productcategory/delete/{x?}', 'Inventory\Configuration\ProductcategoryController@delete');
Route::post('inventory/setting/productcategory/save', 'Inventory\Configuration\ProductcategoryController@save');
// Courier
Route::get('inventory/setting/courier', 'Inventory\Configuration\CourierController@listing');
Route::get('inventory/setting/courier/search/{x?}', 'Inventory\Configuration\CourierController@search');
Route::post('inventory/setting/courier/form_search', 'Inventory\Configuration\CourierController@form_search');
Route::get('inventory/setting/courier/delete/{x?}', 'Inventory\Configuration\CourierController@delete');
Route::post('inventory/setting/courier/save', 'Inventory\Configuration\CourierController@save');
Route::post('inventory/setting/courier/check_existcode', 'Inventory\Configuration\CourierController@check_existcode');
// Delivery Type
Route::get('inventory/setting/deliverytype', 'Inventory\Configuration\DeliverytypeController@listing');
Route::get('inventory/setting/deliverytype/search/{x?}', 'Inventory\Configuration\DeliverytypeController@search');
Route::post('inventory/setting/deliverytype/form_search', 'Inventory\Configuration\DeliverytypeController@form_search');
Route::get('inventory/setting/deliverytype/delete/{x?}', 'Inventory\Configuration\DeliverytypeController@delete');
Route::post('inventory/setting/deliverytype/save', 'Inventory\Configuration\DeliverytypeController@save');
Route::post('inventory/setting/deliverytype/check_existcode', 'Inventory\Configuration\DeliverytypeController@check_existcode');

/*
======================================================================================
 End Invoices  

======================================================================================
*/

/*
======================================================================================
Test Bonus 
======================================================================================
*/
Route::get('testbonus/user-list', 'TestBonusController@userList');
Route::get('testbonus/retail-profit/{id}', 'TestBonusController@getRetailProfitByUserId');
Route::get('testbonus/override-retail-profit/{id}', 'TestBonusController@getOverrideRetailProfitByUserId');

/*
======================================================================================
End Test Bonus  
======================================================================================
*/

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
