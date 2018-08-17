<?php namespace App\Traits;

use App\User;

use App\Models\Invoice;
use App\Models\Sale;
use App\Models\Wallet;
use App\Models\Store;
use App\Models\UserPurchase;
use App\Models\UserBonus;
use App\Models\Product;
use App\Models\StockItem; 

use Validator;
use Session;
use Carbon\Carbon;
use DB;
use Mail;

trait DataStatistic
{
    public function getUserStats()
    {
        $date 		= Carbon::now();
        $startDate 	= Carbon::now()->startOfWeek()->format('Y/m/d');
        $endDate    = $date = Carbon::now()->endOfWeek()->format('Y/m/d');

        $users                   = User::count();
        $customers               = User::where('rank_id',1)->count();
        $loyal_customer          = User::where('rank_id', 2)->count();
        $marketing_officer       = User::where('rank_id', 3)->count();
        $district_officer        = User::where('rank_id', 4)->count();
        $senior_district_officer = User::where('rank_id', 5)->count();
        $today                   = User::whereDate('created_at', $date )->count();
        $this_week               = User::whereBetween('created_at',[$startDate, $endDate])->count();
        $this_month              = User::whereMonth('created_at',Carbon::now()->format('n'))->count();

        $users = [
            'ALL'	=> $users,
            'C'  	=> $customers,
            'LC' 	=> $loyal_customer,
            'MO' 	=> $marketing_officer,
            'DO' 	=> $district_officer,
            'SDO'	=> $senior_district_officer,
            'today' => $today,
            'this_week' 	=> $this_week,
            'this_month' 	=> $this_month
        ];

        return $users;
    }

    public function getSaleStats()
    {
        $year 		= Carbon::now()->year;
        $startDate 	= Carbon::now()->startOfWeek()->format('Y/m/d');
        $endDate 	= $date = Carbon::now()->endOfWeek()->format('Y/m/d');
        
        $total_sales           = Sale::where('year', $year)->sum('total_sale');
        $total_pv              = Sale::where('year', $year)->sum('total_pv');
        $today_sales           = Invoice::where('status', 'Fully Paid')->whereDate('created_at', Carbon::today())->sum('total');
        $this_week_sales       = Invoice::whereBetween('created_at',[$startDate, $endDate])->sum('total');
        $this_month_sales      = Sale::where('month', Carbon::today()->month)
                                        ->where('year', Carbon::today()->year)
                                        ->first(['total_sale', 'total_pv']);

        $sale_stats = [
            'total_sales' => $total_sales,
            'total_pv'    => $total_pv,
            'today'       => $today_sales,
            'this_week'   => $this_week_sales,
            'this_month'  => $this_month_sales
        ];

        return $sale_stats;
    }

    public function totalPurchases()
    {
        return $total_purchases = Wallet::sum('purchased');
    }

    public function totalProductPurchased()
    {
        $store = Store::count();
        $userPurchases = UserPurchase::count();

        return $store + $userPurchases;
    }

    public function getTotalSales()
    {
       
        $year = Carbon::now()->year;
        // $sales = Sale::groupBy('year')
        //                     ->selectRaw('sum(total_sale) as total_sale, sum(total_pv) as total_pv, count(*) as months')->get();
        $sales = Sale::where('year', $year)->sum('total_sale');
        

        return $sales;
    }

    public function getSaleStockActivity()
    {
        $products = Product::all();

        $stats = array();
        $data = array();

        foreach ($products as $product) {
            $data = [
             'y'       => $product->name,
             //'Sold'    => Stock::where('product_id', $product->id)->where('status', 'Sold')->count(), //original code before merge
             'Sold'    => StockItem::where('product_id', $product->id)->where('status', 'Sold')->count(),
             'Stock'   => count($product->stocks),
             'Returned'=> count($product->returnGoods)
            ];

            $stats[] = $data;
        }

        return $stats;
    }
}