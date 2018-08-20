<style type="text/css">
	
	td{
		font-size: 12px;
	}

	select{cursor:pointer;}

	.modal {
	    display: none; /* Hidden by default */
	    position: fixed; /* Stay in place */
	    z-index: 1; /* Sit on top */
	    padding-top: 100px; /* Location of the box */
	    left: 0;
	    top: 0;
	    width: 100%; /* Full width */
	    height: 100%; /* Full height */
	    overflow: auto; /* Enable scroll if needed */
	    background-color: rgb(0,0,0); /* Fallback color */
	    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}

	/* Modal Content */
	.modal-content {
	    position: relative;
	    background-color: #fefefe;
	    margin: auto;
	    padding: 0;
	    border: 1px solid #888;
	    width: 80%;
	    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
	    -webkit-animation-name: animatetop;
	    -webkit-animation-duration: 0.4s;
	    animation-name: animatetop;
	    animation-duration: 0.4s
	    border:1px solid green;
	}
	.address-group{
		padding: 13px;
	}

	 #form-title{
        font-size: 15px;
        font-style: normal;
    }

	#itemCount {
	  position: absolute;
	  display: none;
	  top: -5px;
	  left: -15px;
	  width: 15px;
	  height: 15px;
	  border-radius: 50%;
	  background: red;
	  color: white;
	  text-align: center;
	}

	.item-detail{

		/*max-width: 260px;*/
		min-width: 260px;
	}
	
	.item-content{

	    padding: 5px;

	}

	.item-content:hover{

		box-shadow: 0px 2px 3px -1px #000;
		-moz-box-shadow: 0px 2px 3px -1px #000;
		-webkit-box-shadow: 0px 2px 3px -1px #000;
		-webkit-border-radius: 0px;
		-moz-border-radius: 0px;
		/*border-radius: 10px;   */
		-webkit-transition: all 0.3s ease-in-out;
		-moz-transition: all 0.3s ease-in-out;
		-o-transition: all 0.3s ease-in-out;
		-ms-transition: all 0.3s ease-in-out;
		transition: all 0.3s ease-in-out;  

	}

	.price-text-color{

	    color: #219FD1;
	    font-size: 12px;
	    font-style: normal;
	}

	.ori-price{

		color: #939394;
	    font-size: 10px;
	    font-style: normal;
	}

	.cart-list{
		/*border: 1px solid black;*/
	}

	.cart-row{
		/*border: 1px solid green;*/
	}

	.img-content{
		margin-right: 5px;
	}

	.pack-list{
		background-color: transparent; 
	}

	.gift-list{
		background-color: transparent;
	}

/*********************************************
    			Call Bootstrap
*********************************************/

@import url("bootstrap/bootstrap.min.css");
@import url("bootstrap-override.css");
@import url("//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css");

/*********************************************
        		Theme Elements
*********************************************/

.gold{
	color: #FFBF00;
}

/*********************************************
					PRODUCTS
*********************************************/

.product{
	border: 1px solid #dddddd;
	height: 321px;
}

.product>img{
	max-width: 230px;
}

.product-rating{
	font-size: 20px;
	margin-bottom: 25px;
}

.product-title{
	font-size: 20px;
}

.product-desc{
	font-size: 14px;
}

.product-price{
	font-size: 22px;
}

.product-stock{
	color: #74DF00;
	font-size: 20px;
	margin-top: 10px;
}

.product-info{
		margin-top: 50px;
}

/*********************************************
					VIEW
*********************************************/

.content-wrapper {
	max-width: 1140px;
	background: #fff;
	margin: 0 auto;
	margin-top: 25px;
	margin-bottom: 10px;
	border: 0px;
	border-radius: 0px;
}

.container-fluid{
	max-width: 1140px;
	margin: 0 auto;
}

.view-wrapper {
	float: right;
	max-width: 70%;
	margin-top: 25px;
}

.container {
	padding-left: 0px;
	padding-right: 0px;
	max-width: 100%;
}

/*********************************************
				ITEM 
*********************************************/

.service1-items {
	padding: 0px 0 0px 0;
	float: left;
	position: relative;
	overflow: hidden;
	max-width: 100%;
	height: 321px;
	width: 130px;
}

.service1-item {
	height: 107px;
	width: 120px;
	display: block;
	float: left;
	position: relative;
	padding-right: 20px;
	border-right: 1px solid #DDD;
	border-top: 1px solid #DDD;
	border-bottom: 1px solid #DDD;
}

.service1-item > img {
	max-height: 110px;
	max-width: 110px;
	opacity: 0.6;
	transition: all .2s ease-in;
	-o-transition: all .2s ease-in;
	-moz-transition: all .2s ease-in;
	-webkit-transition: all .2s ease-in;
}

.service1-item > img:hover {
	cursor: pointer;
	opacity: 1;
}

.service-image-left {
	padding-right: 50px;
}

.service-image-right {
	padding-left: 50px;
}

.service-image-left > center > img,.service-image-right > center > img{
	max-height: 155px;
}


.address-content{

	height: 400px;
	overflow: auto;
}

/*.package-content{

	height: 300px;
	overflow: auto;
}*/

.address-field{

	padding: 5px;
	min-height: 70px;
}

.address-field:hover{

	box-shadow: 0px 2px 3px -1px #000;
	-moz-box-shadow: 0px 2px 3px -1px #000;
	-webkit-box-shadow: 0px 2px 3px -1px #000;
	-webkit-border-radius: 0px;
	-moz-border-radius: 0px;
	border-radius: 10px;   
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	-ms-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
	cursor: pointer;
	background-color: #f4f4f4;

}

.quantity {
    float: left;
    margin-right: 15px;
    background-color: #eee;
    position: relative;
    width: 80px;
    overflow: hidden
}

.quantity input {
    margin: 0;
    text-align: center;
    width: 15px;
    height: 15px;
    padding: 0;
    float: right;
    color: #000;
    font-size: 20px;
    border: 0;
    outline: 0;
    background-color: #F6F6F6
}

.quantity input.qty {
    position: relative;
    border: 0;
    width: 100%;
    height: 40px;
    padding: 10px 25px 10px 10px;
    text-align: center;
    font-weight: 400;
    font-size: 15px;
    border-radius: 0;
    background-clip: padding-box
}

.quantity .minus, .quantity .plus {
    line-height: 0;
    background-clip: padding-box;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
    -webkit-background-size: 6px 30px;
    -moz-background-size: 6px 30px;
    color: #bbb;
    font-size: 20px;
    position: absolute;
    height: 50%;
    border: 0;
    right: 0;
    padding: 0;
    width: 25px;
    z-index: 3
}

.quantity .minus:hover, .quantity .plus:hover {
    background-color: #dad8da
}

.quantity .minus {
    bottom: 0
}

.detail{

	cursor: default;
}


/*ul > li{margin-right:25px;font-weight:lighter;cursor:pointer}
li.active{border-bottom:3px solid silver;}

.item-photo{display:flex;justify-content:center;align-items:center;border-right:1px solid #f6f6f6;}
.menu-items{list-style-type:none;font-size:11px;display:inline-flex;margin-bottom:0;margin-top:20px}
.btn-success1{width:100%;border-radius:0;}
.section{width:100%;margin-left:-15px;padding:2px;padding-left:15px;padding-right:15px;background:#f8f9f9}
.title-price{margin-top:30px;margin-bottom:0;color:black}
.title-attr{margin-top:0;margin-bottom:0;color:black;}
.btn-minus{cursor:pointer;font-size:7px;display:flex;align-items:center;padding:5px;padding-left:10px;padding-right:10px;border:1px solid gray;border-radius:2px;border-right:0;}
.btn-plus{cursor:pointer;font-size:7px;display:flex;align-items:center;padding:5px;padding-left:10px;padding-right:10px;border:1px solid gray;border-radius:2px;border-left:0;}
div.section > div {width:100%;display:inline-flex;}
div.section > div > input {margin:0;padding-left:5px;font-size:10px;padding-right:5px;max-width:18%;text-align:center;}
.attr,.attr2{cursor:pointer;margin-right:5px;height:20px;font-size:10px;padding:2px;border:1px solid gray;border-radius:2px;}
.attr.active,.attr2.active{ border:1px solid orange;}

@media (max-width: 426px) {
    .container {margin-top:0px !important;}
    .container > .row{padding:0 !important;}
    .container > .row > .col-xs-12.col-sm-5{
        padding-right:0 ;    
    }
    .container > .row > .col-xs-12.col-sm-9 > div > p{
        padding-left:0 !important;
        padding-right:0 !important;
    }
    .container > .row > .col-xs-12.col-sm-9 > div > ul{
        padding-left:10px !important;
        
    }            
    .section{width:104%;}
    .menu-items{padding-left:0;}
}*/


/*for promotion purpose*/

.shape{    
    border-style: solid; 
    border-width: 0 90px 90px 0; 
    float:right; height: 0px; 
    width: 0px;
    -webkit-transform: rotate(360deg);  
    -moz-transform: rotate(360deg);  
    -o-transform: rotate(360deg);  
    transform: rotate(360deg);
    position: absolute;
    margin-left: 140px;
    text-align: center;
}
.shape-text{
    color:#fff; font-size:12px; 
    font-weight:bold; 
    position:relative; 
    right:-35px; 
    top:-1px; 
    white-space: nowrap;
	-ms-transform:rotate(30deg); /* IE 9 */
	-o-transform: rotate(360deg);  /* Opera 10.5 */
	-webkit-transform:rotate(46deg); /* Safari and Chrome */
	transform:rotate(46deg);
	font-size: 14px;
}
.shape {
	border-color: rgba(255,255,255,0) #d9534f rgba(255,255,255,0) rgba(255,255,255,0);
}
.offer-info {	
	border-color: #5bc0de;
}
.offer-info .shape{
	border-color: transparent #5bc0de transparent transparent;
}

/*package dialog*/

table.table-package {
  display: flex;
  flex-flow: column;
  height: 100%;
  width: 100%;
  border-collapse: separate;
  border-spacing: 0 1px;
}

table.table-package thead.thead-package {
  flex: 0 0 auto;
  width: calc(100% - 0.9em);
}

table.table-package tbody.tbody-package {
  flex: 1 1 auto;
  display: block;
  overflow-y: scroll;
}

table.table-package tbody.tbody-package tr.tr-package {
  width: 100%;
}

table.table-package thead.thead-package,
table.table-package tbody.tbody-package tr.tr-package {
  display: table;
  table-layout: fixed;
}

tbody.tbody-package td.td-package,
thead.thead-package th.th-package {
  border-right: 1px solid transparent;
  vertical-align: top;
}

thead.thead-package th.th-package {
  height: 35px;
  font-size: 16px;
  text-align: left;
  text-transform: uppercase;
}

tbody.tbody-package td.td-package {
  text-align: left;
  height: 30px;
  /*background: #d5d5d5;*/
}

.package-list {
  width: 100%;
  height: 350px;
}


/*gift dialog*/

table.table-gift, table.table-gift {
  display: flex;
  flex-flow: column;
  height: 100%;
  width: 100%;
  border-collapse: separate;
  border-spacing: 0 1px;
}

table.table-gift thead.thead-gift {
  flex: 0 0 auto;
  width: calc(100% - 0.9em);
}

table.table-gift tbody.tbody-gift {
  flex: 1 1 auto;
  display: block;
  overflow-y: scroll;
}

table.table-gift tbody.tbody-gift tr.tr-gift {
  width: 100%;
}

table.table-gift thead.thead-gift,
table.table-gift tbody.tbody-gift tr.tr-gift {
  display: table;
  table-layout: fixed;
}

tbody.tbody-gift td.td-gift,
thead.thead-gift th.th-gift {
  border-right: 1px solid transparent;
  vertical-align: top;
}

thead.thead-gift th.th-gift {
  height: 35px;
  font-size: 16px;
  text-align: left;
  text-transform: uppercase;
}

tbody.tbody-gift td.td-gift {
  text-align: left;
  height: 30px;
  /*background: #d5d5d5;*/
}

.promotion-gift-list {
  width: 100%;
  height: 350px;
}


/*POPUP BOX*/

.popbox {
    display: none;
    position: absolute;
    z-index: 99999;
    width: 400px;
    padding: 10px;
    background: #EEEFEB;
    color: #000000;
    border: 1px solid #4D4F53;
    margin: 0px;
    -webkit-box-shadow: 0px 0px 5px 0px rgba(164, 164, 164, 1);
    box-shadow: 0px 0px 5px 0px rgba(164, 164, 164, 1);
}
.popbox h2 {
    background-color: #4D4F53;
    color: #E3E5DD;
    font-size: 14px;
    display: block;
    width: 100%;
    /*margin: -10px 0px 8px -10px;*/
    padding: 5px 10px;
}

a.gift-list:hover, a.gift-list:visited, a.gift-list:active{
	text-decoration: none;
	cursor: pointer;
}

a.pack-list:hover, a.pack-list:visited, a.pack-list:active{
	text-decoration: none;
	cursor: pointer;
}

</style>