<?php 
namespace App\Traits;

use App\Models\Product;
use App\Models\Sale;
use App\Models\ProductSale;


trait SalesTrait
{
	public function updateSalesDataByProduct($item, $price)
	{
		$year = (new \DateTime)->format("Y");
        $month = (new \DateTime)->format("n");

        $saleProduct = ProductSale::firstOrNew(['product_id' => $item['product_id'], 'year' => $year , 'month' => $month] );
        $saleProduct->quantity = $item['total_quantity'];
        $saleProduct->amount   = $saleProduct->amount + ($price*$item['total_quantity']);
        $saleProduct->save();
	}

	public function updateSalesData($total_pv, $total_price)
	{
		$year = (new \DateTime)->format("Y");
        $month = (new \DateTime)->format("n"); 
        dd($total_pv, $total_price);
        

    	$sale = Sale::firstOrNew(['year' => $year , 'month' => $month]);
        $sale->total_pv     = $sale->total_pv + $total_pv;
        $sale->total_sale   = $sale->total_sale + $total_price;
        $sale->save();
	}
}