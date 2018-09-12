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
    <li class="xn-openable {{ Request::is('admin/dashboard') ? 'active' : '' }}">
        <a href="{{ url('admin/dashboard')}}">
        	<span class="fa fa-desktop"></span> 
        	<span class="xn-text">Dashboard</span>
       	</a>
    </li>
    <li class="{{ Request::is('admin/profile/*') ? 'active' : '' }}">
        <a href="{{ url('admin/profile/'. Auth::guard('admin')->user()->id)}}">
        	<span class="fa fa-user"></span> 
        	<span class="xn-text">My Profile</span>
        </a>
    </li>  
    <li class="xn-openable {{ Request::is('banks*') ? 'active' : '' }}">
        <a href="#" class="arrow"><span class="fa fa-credit-card"></span> <span class="xn-text">Accounts</span></a>
        <ul>                 
            <li class="{{ Request::is('banks') ? 'active' : '' }}">
                <a href="{{ url('banks/')}}"><span class="fa fa-align-justify"></span> Bank List </a>
            </li>
            <li class="{{ Request::is('banks/create') ? 'active' : '' }}">
                <a href="{{ url('banks/create')}}"><span class="fa fa-plus"></span> Add New Bank</a>
            </li>                
        </ul>
    </li>  
    <li class="xn-openable {{ Request::is('admin/lists') ? 'active' : '' || Request::is('registers/staff') ? 'active' : '' }}">
        <a href="#" class="arrow"><span class="fa fa-group"></span> <span class="xn-text">Staff</span></a>
        <ul>                            
            <li class="{{ Request::is('admin/lists') ? 'active' : '' }}">
                <a href="{{ url('admin/lists')}}"><span class="fa fa-align-justify"></span> Staff List</a>
            </li>
            <li class="{{ Request::is('registers/staff') ? 'active' : '' }}">
                <a href="{{ url('registers/staff')}}"><span class="fa fa-plus"></span> Register New Staff</a>
            </li>                
        </ul>
    </li>   
    <li class="xn-openable {{ Request::is('users/list') ? 'active' : '' || Request::is('registers/member') ? 'active' : '' ||  Request::is('profile/ic-status-index') ? 'active' : ''}} ">
        <a href="#"><span class="fa fa-smile-o"></span> <span class="xn-text">Agents</span></a>
        <ul>                            
            <li class="{{ Request::is('users/list') ? 'active' : '' }}"><a href="{{ url('users/list')}}"><span class="fa fa-align-justify"></span> Agent List</a></li>
            <li class="{{ Request::is('registers/member') ? 'active' : '' }}"><a href="{{ url('registers/member')}}"><span class="fa fa-plus"></span> Register New Agent</a></li>
            <li class="{{ Request::is('profile/ic-status-index') ? 'active' : '' }}"><a href="{{ url('profile/ic-status-index')}}"><span class="fa fa-plus"></span> MyKad/Passport Status Index</a></li>   
        </ul>
    </li> 
    {{-- <li>
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
    </li>   --}}
    <li class="{{ Request::is('admin/lists') ? 'active' : '' }}">
        <a href="{{ url('bonus/calculate-end-month-bonus') }}">
            <span class="fa fa-file-text-o"></span> Count Bonus
        </a>
    </li> 
    <li class="xn-openable {{ Request::is('reports/*') ? 'active' : '' }}">
        <a href="#"><span class="fa fa-table"></span> <span class="xn-text">Reports</span></a>
        <ul>                            
            <li class="{{ Request::is('admin/lists') ? 'active' : '' }}">
                <a href="{{ url('reports/members')}}"><span class="fa fa-align-justify"></span> Agents</a>
            </li>
            <li class="xn-openable {{ Request::is('reports/sales*') ? 'active' : '' }}">
                <a href="#"><span class="fa fa-sort-alpha-desc"></span> Sales</a>
                <ul>
                    <li class="{{ Request::is('admin/lists') ? 'active' : '' }}">
                        <a href="{{ url('reports/sales')}}">General</a>
                    </li>
                    <li>
                        <a href="">By Product</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="{{ url('reports/stocks')}}"><span class="fa fa-sort-alpha-desc"></span> Stocks</a>
            </li>
            <li>
                <a href="{{ url('reports/bonuses')}}"><span class="fa fa-sort-alpha-desc"></span> Bonuses</a>
            </li>   
        </ul>
    </li>  

    <li class="xn-openable {{ Request::is('inventory/*') ? 'active' : '' }}">
        <a href="#"><span class="fa fa-table"></span> <span class="xn-text">Inventory</span></a>
        <ul>                            
            <li class="{{ Request::is('inventory/dashboard') ? 'active' : '' }}">
                <a href="{{ url('inventory/dashboard')}}"><span class="fa fa-desktop"></span> Dashboard</a>
            </li>

            <li class="xn-openable {{ Request::is('inventory/product*') ? 'active' : '' }}">
                <a href="{{ url('inventory/product/listing') }}"><span class="fa fa-flask"></span> Products </a>
                <ul>
                    <li class="{{ Request::is('inventory/product/listing') ? 'active' : '' }}">
                        <a href="{{ url('inventory/product/listing') }}"><span class="fa fa-align-justify fa-sm"></span>Product Listing</a>
                    </li>
                    <li class="{{ Request::is('inventory/product/promotion/listing') ? 'active' : '' }}">
                        <a href="{{ url('inventory/product/promotion/listing') }}"><span class="fa fa-align-justify fa-sm"></span>Promotion Listing</a>
                    </li>
                    <li class="{{ Request::is('inventory/product/form') ? 'active' : '' }}">
                        <a href="{{ url('inventory/product/form') }}"><span class="fa fa-plus fa-sm"></span>Create Product Info</a>
                    </li>
                    <li class="{{ Request::is('inventory/product/package_form') ? 'active' : '' }}">
                        <a href="{{ url('inventory/product/package_form') }}"><span class="fa fa-plus fa-sm"></span>Create Package</a>
                    </li>
                    
                </ul>
            </li>

            <li class="xn-openable {{ Request::is('inventory/supplier*') ? 'active' : '' }}">
                <a href="{{ url('inventory/supplier/list') }}"><span class="fa fa-truck"></span> Suppliers </a>
                <ul>
                    <li class="{{ Request::is('inventory/supplier/list') ? 'active' : '' }}">
                        <a href="{{ url('inventory/supplier/list') }}"><span class="fa fa-align-justify fa-sm"></span>Supplier Listing</a>
                    </li>
                    <li class="{{ Request::is('inventory/supplier/create') ? 'active' : '' }}">
                        <a href="{{ url('inventory/supplier/create') }}"><span class="fa fa-plus fa-sm"></span>Create Supplier Info</a>
                    </li>
                </ul>
            </li>

            <li class="xn-openable {{ Request::is('inventory/stock*') ? 'active' : '' }}">
                <a href="{{ url('inventory/stock/current') }}"><span class="fa fa-archive"></span> Stock Management</a>
                <ul>
                    <li class="{{ Request::is('inventory/stock/current') ? 'active' : '' }}">
                        <a href="{{ url('inventory/stock/current') }}"><span class="fa fa-align-justify fa-sm"></span>Current Stock Listing</a>
                    </li>
                    <li class="{{ Request::is('inventory/stock/list') ? 'active' : '' }}">
                        <a href="{{ url('inventory/stock/list') }}"><span class="fa fa-align-justify fa-sm"></span>Stock In Listing</a>
                    </li>                    
                    <li class="{{ Request::is('inventory/stock/in') ? 'active' : '' }}">
                        <a href="{{ url('inventory/stock/in') }}"><span class="fa fa-plus fa-sm"></span>New Stock In</a>
                    </li>
                    <li class="{{ Request::is('inventory/stock/adjustment') ? 'active' : '' }}">
                        <a href="{{ url('inventory/stock/adjustment') }}"><span class="fa fa-plus fa-sm"></span>Stock Adjustment</a>
                    </li>
                </ul>
            </li>

            <li class="xn-openable {{ Request::is('inventory/order*') ? 'active' : '' }}">
                <a href="{{ url('inventory/order/sales') }}"><span class="fa fa-shopping-cart"></span> Order Management </a>
                <ul>
                    <li class="{{ Request::is('inventory/order/sales') ? 'active' : '' }}">
                        <a href="{{ url('inventory/order/sales') }}"><span class="fa fa-align-justify fa-sm"></span>Sales Order Listing</a>
                    </li>
                    <li class="{{ Request::is('inventory/stock/delivery') ? 'active' : '' }}">
                        <a href="{{ url('inventory/order/delivery') }}"><span class="fa fa-align-justify fa-sm"></span> Delivery Order Listing</a>
                    </li>
                </ul>
            </li>

            <li class="xn-openable {{ Request::is('inventory/report/stock-balance') ? 'active' : '' }}">
                <a href="{{ url('inventory//stock/report') }}"><span class="fa fa-book"></span> Report </a>
                <ul>
                    <li class="{{ Request::is('inventory/report/stock-balance') ? 'active' : '' }}">
                        <a href="{{ url('inventory/report/stock-balance') }}"> Stock Balance Report </a>
                    </li>
                    
                </ul>
            </li>

            <li class="xn-openable {{ Request::is('inventory/setting*') ? 'active' : '' }}">
                <a href="{{ url('inventory/setting/productcategory') }}"><span class="fa fa-cogs"></span> Inventory Settings </a>
                <ul>
                    <li class="{{ Request::is('inventory/setting/productcategory') ? 'active' : '' }}">
                        <a href="{{ url('inventory/setting/productcategory') }}"> Product Category </a>
                    </li>
                    <li class="{{ Request::is('inventory/setting/quantitytype') ? 'active' : '' }}">
                        <a href="{{ url('inventory/setting/quantitytype') }}"> Quantity Type </a>
                    </li>
                    <li class="{{ Request::is('inventory/setting/stockadjustment') ? 'active' : '' }}">
                        <a href="{{ url('inventory/setting/stockadjustment') }}"> Stock Adjustment Type</a>
                    </li>
                    <li class="{{ Request::is('inventory/setting/courier') ? 'active' : '' }}">
                        <a href="{{ url('inventory/setting/courier') }}"> Courier Info </a>
                    </li>
                </ul>
            </li>

            
            
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

