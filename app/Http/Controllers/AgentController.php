<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\users;
use App\inventory\product_m;
use App\inventory\product_image_m;
use App\inventory\product_package_m;
use App\order_transection;
use App\address;
use App\delivery_type;
use App\order_hdr;
use App\order_item;
use App\global_status;
use App\config_tax;
use Auth;
use DB;

use App\Http\Controllers\Inventory\Product;
use App\Http\Controllers\DeliveryOrder\DeliveryOrderController;

class AgentController extends Controller
{
}