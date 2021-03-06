@extends('layouts.joli.app')
@section('title','Stock Report')
@section('content')

<!-- START BREADCRUMB -->
<ul class="breadcrumb">
        <li><a href="{{ url('home') }}">Home</a></li>
        <li><a href="#">Stock</a></li>
        <li class="active">Stock Report</li>
    </ul>
    <!-- END BREADCRUMB -->     
    
    <!-- PAGE CONTENT WRAPPER -->
    
    <div class="page-content-wrap">
        <div class="row">
            <div class="col-md-12">
               
                    <div class="panel panel-default">
                        <div class="panel-heading">

                                    <h1 class="panel-title">Stock Balance Report</h1>

                                    <div class="btn-group pull-right">
                                        <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i> Export Data</button>
                                        <ul class="dropdown-menu">                                       
                                            <li><a href="#" onClick ="$('#stock_bal_report').tableExport({type:'csv',formats:['csv'],fileName:'stock_balance_report',escape:'false'});"><img src='{{asset('themes/Joli/img/icons/csv.png')}}' width="24"/> CSV</a></li>
                                            <li><a href="#" onClick ="$('#stock_bal_report').tableExport({type:'txt',escape:'false'});"><img src='{{asset('themes/Joli/img/icons/txt.png')}}' width="24"/> TXT</a></li>
                                            <li><a href="#" onClick ="$('#stock_bal_report').tableExport({type:'pdf',escape:'false'});"><img src='{{asset('themes/Joli/img/icons/pdf.png')}}' width="24"/> PDF</a></li>
                                        </ul>
                                    </div>                 
                      
                        </div>
                        <div class="panel-body">
                                <p>Filter</p>      
                                <form class="form-horizontal" role="form">   
                                                             
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Start Date:</label>
                                            <div class="col-md-2">
                                                <input type="text" id="min" name="min" class="form-control datepicker">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                                <label class="col-md-2 control-label">End Date:</label>
                                                <div class="col-md-2">
                                                    <input type="text" id="max" name="max" class="form-control datepicker">
                                                </div>
                                        </div>
                                        <div class="form-group">
                                                <label class="col-md-2 control-label">Products:</label>
                                                <div class="col-md-2">
                                                    <select  id="product-select" class="form-control">
                                                    <option value="">All</option>
                                                        @foreach ($products as $product)
                                                    <option value="{{$product->code}}">{{$product->name}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                        </div>

                                        <div class="form-group">
                                                <div class="col-md-4">
                                            <input type="button" class="btn btn-default btn-rounded pull-right" id="clear_filter" value="Clear Filter">
                                                </div>
                                        </div>
                                </form>

                        </div>

                        <div class="panel-body">
                                       
                                                 <div class="table-responsive">
                                                     <table id="stock_bal_report" class="table table-bordered table-hover">
                                                         <thead>
                                                             <tr>
                                                                 <th class="hidden"></th>
                                                                 <th>Date</th>
                                                                 <th>Product</th>
                                                                 <th>Product Code</th>
                                                                 <th>Supplier</th>
                                                                 <th>Supplier Code</th>
                                                                 <th>Description</th>
                                                                 <th class="success">Stock In</th>
                                                                 <th class="warning">Stock Out</th>
                                                                 <th class="info">Balance</th>
                                                             </tr>
                                                         </thead>
                                                         <tbody>
                                                             @for($i=0;$i<count($reports);$i++)
                                                                <tr>
                                                                    <td class="hidden">{{ $reports[$i]['server_date'] }}</td>
                                                                    <td>{{ $reports[$i]['date'] }}</td>
                                                                    <td>{{ $reports[$i]['product_name'] }}</td>
                                                                    <td>{{ $reports[$i]['product_code'] }}</td>
                                                                    <td>{{ $reports[$i]['supplier_name'] }}</td>
                                                                    <td>{{ $reports[$i]['supplier_code'] }}</td>
                                                                    <td>{{ $reports[$i]['description'] }}</td>								    
                                                                    <td  class="success">{{ $reports[$i]['stock_in'] }}</td>                                                                    
                                                                    <td  class="warning" data-toggle="tooltip" data-original-title="{{ $reports[$i]['adjustment_type'] }}" data-container="body" data-toggle="tooltip" data-placement="bottom" title="" title="">{{ $reports[$i]['stock_out'] }}</td>
                                                                    <td class="info"></td>
                                                                </tr>
                                                             @endfor
                                                            </tbody>
                                                        <tfoot>
                                                            <tr style="background-color: mistyrose;">
                                                                <td><strong>Total & Balance</strong></td>
                                                                <td class="hidden"></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td><strong>{{ $stock_in_total }}</strong></td>
                                                                <td><strong>{{ $stock_out_total }}</strong></td>
                                                                <td></td>
                                                            </tr>
                                                        </tfoot>
                                                     </table>
                                                 </div>  
                        </div>
                    
            </div>
        </div>
    </div>
    </div>
@endsection

{{-- page level scripts --}}
@section('footer_scripts')
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/bootstrap/bootstrap-datepicker.js') }}"></script>
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/tableExport.js') }}"></script>
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/libs/base64.js') }}"></script> 
	<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jquery.base64.js') }}"></script>
	<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/html2canvas.js') }}"></script>
	<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/libs/sprintf.js') }}"></script>
	<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/jspdf.js') }}"></script>


    {{-- <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script> 
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script> --}}

    







<script type="text/javascript">


    $(document).ready(function($) {
        var groupColumn = 1;
        $.fn.datepicker.defaults.format = "dd/mm/yyyy";
        var d = new Date();
        var early_month = d.getFullYear() + "-" + ("0"+(d.getMonth()+1)).slice(-2) + "-" +"01"
        var today = d.getFullYear() + "-" + ("0"+(d.getMonth()+1)).slice(-2) + "-" +("0" + d.getDate()).slice(-2)

        var t = $('#stock_bal_report').DataTable({
        "footerCallback": function ( row, data, start, end, display ) {
            var api = this.api(), data;
 
            // Remove the formatting to get integer data for summation
            var intVal = function ( i ) {
                return typeof i === 'string' ?
                    i.replace(/[\$,]/g, '')*1 :
                    typeof i === 'number' ?
                        i : 0;
            };
 
            // Total over all pages
            total1 = api
                .column( 7 ,{search: 'applied'})
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 );

            total2 = api
            .column( 8  ,{search: 'applied'})
            .data()
            .reduce( function (a, b) {
                return intVal(a) + intVal(b);
            }, 0 );
 
            // Total over this page
            pageTotal1 = api
                .column( 7  , { page: 'current'} )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 );

            pageTotal2 = api
                .column( 8, { page: 'current'} )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 );

 
            // Update footer
            $( api.column( 7     ).footer() ).html(
                '<strong>'+total1 +'</strong>'
            );

            $( api.column( 8 ).footer() ).html(
                '<strong>'+total2 + '</strong>'
            );

            $( api.column( 9 ).footer() ).html(
                '<strong>'+ (parseInt(total1) - parseInt(total2))  + '</strong>'
            );
        },
        "drawCallback": function( settings ) {
        var api = this.api();

   
        var balance = 0;

        var colorID = 0;

        var color_list = ['#a6cee3',
                        '#1f78b4',
                        '#b2df8a',
                        '#33a02c',
                        '#fb9a99',
                        '#e31a1c',
                        '#fdbf6f',
                        '#ff7f00',
                        '#cab2d6',
                        '#6a3d9a',
                        '#ffff99',
                        '#b15928',
                        '#8dd3c7',
                        '#ffffb3',
                        '#bebada',
                        '#fb8072',
                        '#80b1d3',
                        '#fdb462',
                        '#b3de69',
                        '#fccde5',
                        '#d9d9d9',
                        '#bc80bd',
                        '#ccebc5',
                        '#ffed6f'];
       

        api.rows({page:'current'}).every( function ( rowIdx, tableLoop, rowLoop ) {
            var d = this.data();

            stock_in = parseInt(d[7]) || 0;
            stock_out = parseInt(d[8]) || 0;

            balance = balance + stock_in - stock_out;
            $(this.cell(rowIdx, 9).node()).html(balance);

            if(rowIdx !== 0)
            {
                d2 = this.rows(rowIdx-1,{page:'current'}).data();
              if(d[1]!= d2[1] )
              {
                colorID++;
                //   console.log(this.row())
                //   console.log(d2.data()[1])
              }
            }

            this.invalidate(); // invalidate the data DataTables has cached for this row
        } );

         var rows = api.rows( {page:'current'} ).nodes();
            var last=null;

        api.column(groupColumn, {page:'current'} ).data().each( function ( group, i ) {
                if ( last !== group ) {
                    $(rows).eq( i ).before(
                        '<tr class="group success"><td colspan="9">'+group+'</td></tr>'
                    );
 
                    last = group;
                }
            } );

    },

                    "order": [],
                    "scrollY":"450px",
                    "scrollCollapse": true,
                    "paging":false,
                    "columnDefs": [
                                { targets: 'no-sort', orderable: false },
                                // { "visible": false, "targets": groupColumn }

                                ]                    
                });

        
        $('#min').datepicker("update",new Date(today)).on('change',function(){t.draw()});
        $('#max').datepicker("update",new Date(today)).on('change',function(){t.draw()});
        $('#product-select').on('change',function(){t.draw()});

        $.fn.dataTable.ext.search.push(
                    function( settings, data, dataIndex ) {                       
                        var product = $('#product-select').val().toLowerCase(); 
                        if((data[3].toLowerCase().indexOf(product) !== -1 ) || product == "") 
                        {
                            return true;
                        }
                        return false;
                    }
                );


         $.fn.dataTable.ext.search.push(
                    function( settings, data, dataIndex ) {
                        var min = new Date($('#min').val()) ; //parseInt( $('#min').val(), 10 );
                        var max = new Date($('#max').val()); //parseInt( $('#max').val(), 10 );
                        var age = new Date(data[0]) || 0; //parseFloat( data[3] ) || 0; // use data for the age column

                         
                
                        if ( ( isNaN( min ) && isNaN( max ) ) ||
                            ( isNaN( min ) && age <= max ) ||
                            ( min <= age   && isNaN( max ) ) ||
                            ( min <= age   && age <= max ) )
                        {
                            return true;
                        }else{
                            
                        }
                        return false;
                    }
                );

        


        $(function () {
            $("[data-toggle='tooltip']").tooltip();
        });

    $(".click").on('click',function() {
            window.location = $(this).data("href");
        });

        $('#clear_filter').on('click',function(){
        
            $('#min').val("");
            $('#max').val("");

            $('#product-select').val("");
            t.draw();
        })
    });
    
    function fn_clear(){
        console.log("clear!");
    }

    
    
    </script>

@stop
