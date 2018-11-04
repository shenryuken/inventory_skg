<?php

namespace App\Http\Controllers\Inventory;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests;
use App\Mail\VerifyEmail;
use App\Http\Controllers\Controller;

use App\Traits\RegisterStaff;

use DB;
use Carbon\Carbon;
use App\Admin;
use App\User;
use App\Models\Role;
use App\Models\Supplier;
use App\Models\Product;
use App\Models\Stock;
use App\Models\StockItem;
use App\Models\StockAdjustment;
use App\Models\OrderHdr;
use Datatables;
use Log;

class SalesReportController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $reports = OrderHdr::all();
        $products = Product::where('category','<>',3)->whereStatus(1)->orderBy('id')->get();
        // $products = Product::all();

        return view('inventory.orders.sales-report',compact('reports','products'));
    }
}