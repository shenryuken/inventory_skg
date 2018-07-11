<!-- START X-NAVIGATION -->
<ul class="x-navigation">
    <li class="xn-logo" >
        <a href="index.html" style="padding-top: 0;background-color: #080a0e;"><img src="{{ asset('themes/Joli/img/skgwrldogo.png') }}"  height="50" width="200" alt="skgworld"></a>
        <a href="#" class="x-navigation-control"></a>
    </li> 
    <li class="xn-profile">
        <a href="#" class="profile-mini">
            <img src="{{ asset('themes/Joli/assets/images/users/avatar.jpg') }}" alt="John Doe">
        </a>
        <div class="profile">
            <div class="profile-image">
                <img src="{{ asset('themes/Joli/assets/images/users/avatar.jpg') }}" alt="John Doe">
            </div>
            <div class="profile-data">
                <div class="profile-data-name">{{ Auth::guard('admin')->user()->username}}</div>
                <div class="profile-data-title">Web Developer/Designer</div>
            </div>
            <div class="profile-controls">
                <a href="{{ url('admin/profile/'.Auth::guard('admin')->user()->id) }}" class="profile-control-left"><span class="fa fa-info"></span></a>
                <a href="pages-messages.html" class="profile-control-right"><span class="fa fa-envelope"></span></a>
            </div>
        </div>                                                                        
    </li>                                                                     
    <li class="xn-title">Navigation</li>
    <li>
        <a href="{{ url('admin/dashboard')}}">
        	<span class="fa fa-desktop"></span> 
        	<span class="xn-text">Dashboard</span>
       	</a>
    </li>
    <li>
        <a href="{{ url('admin/profile/'. Auth::guard('admin')->user()->id)}}">
        	<span class="fa fa-user"></span> 
        	<span class="xn-text">My Profile</span>
        </a>
    </li>  
    <li class="xn-openable">
        <a href="#" class="arrow"><span class="fa fa-table"></span> <span class="xn-text">Accounts</span></a>
        <ul>                            
            <li><a href="{{ url('banks/')}}"><span class="fa fa-align-justify"></span> Bank List</a></li>
            <li><a href="{{ url('banks/create')}}"><span class="fa fa-sort-alpha-desc"></span> Add New Bank</a></li>                
        </ul>
    </li>  
    <li class="xn-openable">
        <a href="#" class="arrow"><span class="fa fa-table"></span> <span class="xn-text">Staff</span></a>
        <ul>                            
            <li><a href="{{ url('admin/lists')}}"><span class="fa fa-align-justify"></span> Staff List</a></li>
            <li><a href="{{ url('registers/staff')}}"><span class="fa fa-sort-alpha-desc"></span> Register New Staff</a></li>                
        </ul>
    </li>   
    <li class="xn-openable">
        <a href="#"><span class="fa fa-table"></span> <span class="xn-text">Member</span></a>
        <ul>                            
            <li><a href="{{ url('users/list')}}"><span class="fa fa-align-justify"></span> Member List</a></li>
            <li><a href="{{ url('registers/member')}}"><span class="fa fa-sort-alpha-desc"></span> Register New Member</a></li>
            <li><a href="{{ url('profile/ic-status-index')}}"><span class="fa fa-sort-alpha-desc"></span> MyKad/Passport Status Index</a></li>   
        </ul>
    </li> 
    <li>
    	<a href="{{ url('invoices/')}}">
    		<span class="fa fa-file-text-o"></span> Invoices
    	</a>
    </li>   
    <li>
    	<a href="{{ url('orders/')}}">
    		<span class="fa fa-file-text-o"></span> Orders
    	</a>
    </li>     
    <li>
    	<a href="{{ url('products')}}">
    		<span class="fa fa-file-text-o"></span> Products
    	</a>
    </li>  
    <li>
        <a href="{{ url('bonus/calculate-end-month-bonus') }}">
            <span class="fa fa-file-text-o"></span> Count Bonus
        </a>
    </li> 
    <li class="xn-openable">
        <a href="#"><span class="fa fa-table"></span> <span class="xn-text">Reports</span></a>
        <ul>                            
            <li><a href="{{ url('reports/members')}}"><span class="fa fa-align-justify"></span> Members</a></li>
            <li class="xn-openable"><a href="#"><span class="fa fa-sort-alpha-desc"></span> Sales</a>
                <ul>
                    <li><a href="{{ url('reports/sales')}}">General</a></li>
                    <li><a href="">By Product</a></li>
                </ul>
            </li>
            <li><a href="{{ url('reports/stocks')}}"><span class="fa fa-sort-alpha-desc"></span> Stocks</a></li>
            <li><a href="{{ url('reports/bonuses')}}"><span class="fa fa-sort-alpha-desc"></span> Bonuses</a></li>   
        </ul>
    </li>  
    <li>
        <a href="{{ route('logout') }}"
            onclick="event.preventDefault();
            document.getElementById('logout-form').submit();">
            Logout
        </a>
        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
            {{ csrf_field() }}
        </form>
    </li>                          
</ul>
<ul class="x-navigation">
    <li class="xn-logo">
        <a href="javascript:;"> INVENTORY </a>
        <a href="javascript:;" class="x-navigation-control"></a>
    </li>
    <li class="xn-title">Navigation</li>
    <li class="<?php echo in_array(request()->path(), array("inventory/dashboard")) ? "active" : "" ; ?>">
        <a href="{{ url('inventory/dashboard') }}"><span class="fa fa-desktop"></span> <span class="xn-text">Dashboard</span></a>
    </li>
    <li class="xn-openable <?php echo in_array(Request::segment(1) . '/' . Request::segment(2) , array("inventory/product")) ? "active" : "" ; ?>">
        <a href="javascript:;"><span class="fa fa-puzzle-piece"></span> Product </a>
        <ul>
            <li class="<?php echo in_array(Request::segment(1) . '/' . Request::segment(2) . '/' . Request::segment(3), array("inventory/product/listing","inventory/product/search")) ? "active" : "" ; ?>">
                <a href="{{ url('inventory/product/listing') }}"><span class="fa fa-list-alt"></span> Products Listing </a>
            </li>
            <li class="<?php echo in_array(Request::segment(1) . '/' . Request::segment(2) . '/' . Request::segment(3), array("inventory/product/form","inventory/product/edit","inventory/product/view")) ? "active" : "" ; ?>">
                <a href="{{ url('inventory/product/form') }}"><span class="fa fa-plus"></span> Create Product Detail</a>
            </li>
            <li class="<?php echo in_array(Request::segment(1) . '/' . Request::segment(2) . '/' . Request::segment(3), array("inventory/product/package_form","inventory/product/package_edit","inventory/product/package_view")) ? "active" : "" ; ?>">
                <a href="{{ url('inventory/product/package_form') }}"><span class="fa fa-plus"></span>Create Product Package </a>
            </li>
            <li class="<?php echo in_array(Request::segment(1) . '/' . Request::segment(2) . '/' . Request::segment(3), array("inventory/product/promotion")) ? "active" : "" ; ?>">
                <a href="{{ url('inventory/product/promotion/listing') }}"><span class="fa fa-list"></span>Product Promotion Listing</a>
            </li>
        </ul>
    </li>
    <li class="xn-openable <?php echo in_array(Request::segment(1), array("supplier")) ? "active" : "" ; ?>">
        <a href="{{ url('supplier/supplierDetail') }}"><span class="fa fa-truck"></span> <span class="xn-text">Supplier</span></a>
        <ul>
            <li class="<?php echo in_array(Request::segment(1).'/'.Request::segment(2), array("inventory/supplier/list")) ? "active" : "" ; ?>">
                <a href="{{ url('inventory/supplier/list') }}"><span class="fa fa-puzzle-piece"></span>Supplier Lists</a>
            </li>
           
        </ul>
    </li>
    <li class="xn-openable <?php echo in_array(Request::segment(1), array("inventory/stock/current")) ? "active" : "" ; ?>"" >
        <a href="javascript:;"><span class="glyphicon glyphicon-shopping-cart"></span> Stock </a>
        <ul>
            <li class="<?php echo in_array(Request::segment(1) . '/' . Request::segment(2), array("inventory/stock/current")) ? "active" : "" ; ?>">
                <a href="{{ url('inventory/stock/current') }}"><span class="glyphicon glyphicon-list-alt"></span> Current Stock </a>
            </li>
            <li class="<?php echo in_array(Request::segment(1) . '/' . Request::segment(2), array("inventory/stock/list")) ? "active" : "" ; ?>">
                <a href="{{ url('inventory/stock/list') }}"><span class="glyphicon glyphicon-list-alt"></span> Stock Listing </a>
            </li>
            <li><a href="{{ url('inventory/stock/report/') }}"><span class="fa fa-search"></span> Stock Balance Report </a></li>
            <li class="<?php echo in_array(Request::segment(1).'/'.Request::segment(2), array("inventory/stock/report/")) ? "active" : "" ; ?>">
                <a href="{{ url('inventory/stock/report/') }}"><span class="fa fa-plus"></span>Stock In</a>
            </li>
            <li class="<?php echo in_array(Request::segment(1) . '/' . Request::segment(2), array("inventory/stock/adjustment")) ? "active" : "" ; ?>">
                <a href="{{ url('inventory/stock/adjustment/') }}"><span class="fa fa-plus"></span> Stock Adjustment </a>
            </li>
            
        </ul>
    </li>

    <li class="xn-openable <?php echo in_array(Request::segment(1), array("inventory/order")) ? "active" : "" ; ?>"" >
        <a href="javascript:;"><span class="glyphicon glyphicon-shopping-cart"></span> Order Management </a>
        <ul>
            <li class="<?php echo in_array(Request::segment(1) . '/' . Request::segment(2), array("inventory/order/sales")) ? "active" : "" ; ?>">
                <a href="{{ url('inventory/order/sales') }}"><span class="glyphicon glyphicon-list-alt"></span> Sales Order </a>
            </li>
            
        </ul>
    </li>



    <li class="xn-openable <?php echo in_array(Request::segment(1).'/'.Request::segment(2), array("inventory/setting")) ? "active" : "" ; ?>">
        <a href="javascript:;"><span class="fa fa-cogs"></span> <span class="xn-text"> Settings </span></a>
        <ul>
            <li class="<?php echo in_array(Request::segment(1).'/'.Request::segment(2) . '/' .Request::segment(3), array("inventory/setting/gst")) ? "active" : "" ; ?>">
                <a href="{{ url('inventory/setting/gst') }}"><span class="fa fa-gear"></span> Tax GST </a>
            </li>
        </ul>
        <ul >
            <li class="<?php echo in_array(Request::segment(1).'/'.Request::segment(2) . '/' .Request::segment(3), array("inventory/setting/productcategory")) ? "active" : "" ; ?>">
                <a href="{{ url('inventory/setting/productcategory') }}"><span class="fa fa-gear"></span> Product Category </a>
            </li>
        </ul>
        <ul >
            <li class="<?php echo in_array(Request::segment(1).'/'.Request::segment(2) . '/' .Request::segment(3), array("inventory/setting/quantitytype")) ? "active" : "" ; ?>">
                <a href="{{ url('inventory/setting/quantitytype') }}"><span class="fa fa-gear"></span> Quantity Type </a>
            </li>
        </ul>
        <ul >
            <li class="<?php echo in_array(Request::segment(1).'/'.Request::segment(2) . '/' .Request::segment(3), array("inventory/setting/stockadjustment")) ? "active" : "" ; ?>">
                <a href="{{ url('inventory/setting/stockadjustment') }}"><span class="fa fa-gear"></span> Stock Adjustment </a>
            </li>
        </ul>
		<ul >
			<li class="<?php echo in_array(Request::segment(1).'/'.Request::segment(2) . '/' .Request::segment(3), array("inventory/setting/courier")) ? "active" : "" ; ?>">
				<a href="{{ url('inventory/setting/courier') }}"><span class="fa fa-gear"></span> Courier </a>
			</li>
		</ul>
		<ul >
			<li class="<?php echo in_array(Request::segment(1).'/'.Request::segment(2) . '/' .Request::segment(3), array("inventory/setting/deliverytype")) ? "active" : "" ; ?>">
				<a href="{{ url('inventory/setting/deliverytype') }}"><span class="fa fa-gear"></span> Delivery Type </a>
			</li>
		</ul>
    </li>
</ul>
