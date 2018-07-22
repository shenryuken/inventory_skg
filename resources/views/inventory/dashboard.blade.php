@extends('layouts.joli.app')

@section('title', 'Dashboard')
@section('content')
<!-- START BREADCRUMB -->
<ul class="breadcrumb">
    <li><a href="#">Home</a></li>  
    <li><a href="#">Inventory</a></li>                      
    <li class="active">Dashboard</li>
</ul>
<!-- END BREADCRUMB --> 
<!-- PAGE CONTENT WRAPPER -->
<div class="page-content-wrap">
    
    <!-- START WIDGETS -->
    <div class="row">
        <div class="col-md-8">
            <!-- START SALES BLOCK -->
            <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="panel-title-box">
                            <h3>Sales</h3>
                            <span>Sales activities</span>
                        </div>                                     
                        <ul class="panel-controls panel-controls-title">                                        
                            <li>
                                <div id="reportrange" class="dtrange">                                            
                                    <span></span><b class="caret"></b>
                                </div>                                     
                            </li>                                
                            <li><a href="#" class="panel-fullscreen rounded"><span class="fa fa-expand"></span></a></li>
                        </ul> 
                    </div>
                    <div class="panel-body">                                    
                        <div class="col-md-3">                        
                            <a href="#" class="tile tile-danger">
                                {{ $to_be_processed }}
                                <p>To be Processed</p>                            
                                
                            </a>                        
                        </div>

                        <div class="col-md-3">                        
                            <a href="#" class="tile tile-success">
                                {{ $to_be_shipped }}
                                <p>To be Shipped</p>                            
                                
                            </a>                        
                        </div>

                        <div class="col-md-3">                        
                            <a href="#" class="tile tile-warning">
                               {{ $to_be_delivered }}
                                <p>To be Delivered</p>                            
                                
                            </a>                        
                        </div>

                        <div class="col-md-3">                        
                            <a href="#" class="tile tile-default">
                                {{ $sales_created }}
                                <p>Sales Created</p>                            
                                
                            </a>                        
                        </div>
                                   
                    </div>
                </div>
                <!-- END SALES BLOCK -->

                
        </div>

        <div class="col-md-4">
            <!-- START SALES BLOCK -->
            <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="panel-title-box">
                            <h3>Inventory</h3>
                        </div>                                     
                        <ul class="panel-controls panel-controls-title">                                        
                            <li>
                                <div id="reportrange" class="dtrange">                                            
                                    <span></span><b class="caret"></b>
                                </div>                                     
                            </li>                                
                            <li><a href="#" class="panel-fullscreen rounded"><span class="fa fa-expand"></span></a></li>
                        </ul> 
                    </div>
                    <div class="panel-body">                                    
                        <div class="row stacked">
                            <div class="col-md-12">                                            
                                <div class="progress-list">                                               
                                    <div class="pull-left"><strong>Stock In</strong></div>
                                    <div class="pull-right">{{ $stock_in_today }} / {{ $total_stock }}</div>                                                
                                    <div class="progress progress-small progress-striped active">
                                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: {{ ($stock_in_today / $total_stock)*100 }}%;">{{ ($stock_in_today / $total_stock)*100 }}%</div>
                                    </div>
                                </div>
                                <div class="progress-list">                                               
                                    <div class="pull-left"><strong>Stock Out</strong></div>
                                    <div class="pull-right">{{ $stock_out_today }} / {{ $total_stock }}</div>                                                
                                    <div class="progress progress-small progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: {{ ($stock_out_today / $total_stock)*100 }}%;">{{ ($stock_out_today / $total_stock)*100 }}%</div>
                                    </div>
                                </div>
                                
                                <p><span class="fa fa-warning hide"></span> Data update in end of each hour. You can update it manual by pressign update button</p>
                            </div>
                        </div>                                    
                    </div>
                </div>
                <!-- END SALES BLOCK -->
        </div>
    </div>    
                   
    <div class="row">
        <div class="col-md-4">
        <!-- START USERS ACTIVITY BLOCK -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="panel-title-box">
                    <h2>Warehouse</h2>
                    <span>Inventory </span>
                </div>                                    
                <!-- <ul class="panel-controls" style="margin-top: 2px;">
                    <li><a href="#" class="panel-fullscreen"><span class="fa fa-expand"></span></a></li>
                    <li><a href="#" class="panel-refresh"><span class="fa fa-refresh"></span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="fa fa-cog"></span></a>                                        
                        <ul class="dropdown-menu">
                            <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span> Collapse</a></li>
                            <li><a href="#" class="panel-remove"><span class="fa fa-times"></span> Remove</a></li>
                        </ul>                                        
                    </li>                                        
                </ul>                                     -->
            </div>                                
            <div class="panel-body  list-group list-group-contacts">
              <a href="inventory/supplier/list" class="list-group-item">                
                <i class="fa fa-circle-o pull-left fa-lg"></i>
                <span class="contacts-title">Supplier</span>
            </a>
                          <a href="inventory/product/listing" class="list-group-item"> 
                <i class="fa fa-circle-o pull-left fa-lg"></i>
                <span class="contacts-title">Product</span>
            </a>      
                          <a href="inventory/stock/list" class="list-group-item"> 
                <i class="fa fa-circle-o pull-left fa-lg"></i>
                <span class="contacts-title">Stock</span>
            </a>            

            </div>                                    
        </div>
        <!-- END USERS ACTIVITY BLOCK -->
        </div>
        <div class="col-md-4">
        <!-- START AGENT BLOCK -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="panel-title-box">
                    <h2>Agent</h2>
                    <span>Store </span>
                </div>                                    
                <!-- <ul class="panel-controls" style="margin-top: 2px;">
                    <li><a href="#" class="panel-fullscreen"><span class="fa fa-expand"></span></a></li>
                    <li><a href="#" class="panel-refresh"><span class="fa fa-refresh"></span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="fa fa-cog"></span></a>                                        
                        <ul class="dropdown-menu">
                            <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span> Collapse</a></li>
                            <li><a href="#" class="panel-remove"><span class="fa fa-times"></span> Remove</a></li>
                        </ul>                                        
                    </li>                                        
                </ul>                                     -->
            </div>                                
            <div class="panel-body  list-group list-group-contacts">
            <a href="{{ url('shop/skg-mall') }}" class="list-group-item">                
                <i class="fa fa-circle pull-left fa-lg"></i>
                <span class="contacts-title">Product List</span>
            </a>
            <a href="{{ url('agent/get_order_list/'.Auth::user()->id) }}" class="list-group-item"> 
                <i class="fa fa-circle pull-left fa-lg"></i>
                <span class="contacts-title">Order List</span>
            </a>      
            <a href="{{ url('agent/get_address/display') }}" class="list-group-item"> 
                <i class="fa fa-circle pull-left fa-lg"></i>
                <span class="contacts-title">Address Configuration</span>
            </a>            

            </div>                                    
        </div>
        <!-- END USERS ACTIVITY BLOCK -->
        </div>
        <div class="col-md-4">
        <!-- START DELIVER BLOCK -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="panel-title-box">
                    <h2>Delivery</h2>
                    <span>Management </span>
                </div>                                    
                <!-- <ul class="panel-controls" style="margin-top: 2px;">
                    <li><a href="#" class="panel-fullscreen"><span class="fa fa-expand"></span></a></li>
                    <li><a href="#" class="panel-refresh"><span class="fa fa-refresh"></span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="fa fa-cog"></span></a>                                        
                        <ul class="dropdown-menu">
                            <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span> Collapse</a></li>
                            <li><a href="#" class="panel-remove"><span class="fa fa-times"></span> Remove</a></li>
                        </ul>                                        
                    </li>                                        
                </ul>                                     -->
            </div>                                
            <div class="panel-body  list-group list-group-contacts">
              <a href="'inventory/order/sales'" class="list-group-item">                
                <i class="fa fa-check pull-left fa-lg"></i>
                <span class="contacts-title">Create DO</span>
            </a>
                          <a href="'inventory/order/delivery'" class="list-group-item"> 
                <i class="fa fa-check pull-left fa-lg"></i>
                <span class="contacts-title">Listing</span>
            </a>      
                                    

            </div>                                    
        </div>
        <!-- END USERS ACTIVITY BLOCK -->
        </div>
    </div>

</div>

<script type='text/javascript' src='{!! asset('joli/js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js') !!}'></script>
<script type='text/javascript' src='{!! asset('joli/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js') !!}'></script>
<script>
        /* Vector Map */
        var jvm_wm = new jvm.WorldMap({container: $('#dashboard-map-seles'),
                                    map: 'world_mill_en', 
                                    backgroundColor: '#FFFFFF',                                      
                                    regionsSelectable: true,
                                    regionStyle: {selected: {fill: '#B64645'},
                                                    initial: {fill: '#33414E'}},
                                    markerStyle: {initial: {fill: '#1caf9a',
                                                   stroke: '#1caf9a'}},
                                    markers: [{latLng: [50.27, 30.31], name: 'Kyiv - 1'},                                              
                                              {latLng: [52.52, 13.40], name: 'Berlin - 2'},
                                              {latLng: [48.85, 2.35], name: 'Paris - 1'},                                            
                                              {latLng: [51.51, -0.13], name: 'London - 3'},                                                                                                      
                                              {latLng: [40.71, -74.00], name: 'New York - 5'},
                                              {latLng: [35.38, 139.69], name: 'Tokyo - 12'},
                                              {latLng: [37.78, -122.41], name: 'San Francisco - 8'},
                                              {latLng: [28.61, 77.20], name: 'New Delhi - 4'},
                                              {latLng: [39.91, 116.39], name: 'Beijing - 3'}]
                                });    
    /* END Vector Map */
</script>
@endsection
