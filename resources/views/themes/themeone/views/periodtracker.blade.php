@extends('layout')
@section('content')
<section class="site-content">
	<div class="container">
  		<div class="breadcum-area">
            <div class="breadcum-inner">
                <h3>Period Tracker</h3>
                <ol class="breadcrumb">                    
                    <li class="breadcrumb-item"><a href="{{ URL::to('/')}}">@lang('website.Home')</a></li>
            		<li class="breadcrumb-item active">Period Tracker</li>
                </ol>
            </div>
        </div>

<?php 
$current_date= date("M d,Y");
?>

<div class="row">
  <div class="column">
    <div class="card">
        <form action="">
      <!--<h3>Last Period</h3>-->
     
      <p><b>1. When did your last period start?</b><br>
      <input type="text" name="current_date" value="<?php echo $current_date; ?>" id="datepicker" style="font-size:14px;"/>
      </p>
      <p><b></b>2. How many days did your period last?</b><br>
      <div class="number">
	<span class="minus">-</span>
	<input type="text" value="4" max="10" name="last_period" disabled/>
	<span class="plus">+</span>
</div>
      </p>
      <p><b>3. How long is your menstrual cycle?</b><br>
            <div class="number">
	<span class="minus1">-</span>
	<input type="text" value="28" max="45" name="menstrual_cycle" disabled/>
	<span class="plus1">+</span>
</div>
      </p>
      <button id="track">Track</button>
      </form>
    </div>
  </div>
</div>
<script>
    	$(document).ready(function() {
			$('.minus').click(function () {
				var $input = $(this).parent().find('input');
				var count = parseInt($input.val()) - 1;
				count = count < 1 ? 1 : count;
				$input.val(count);
				$input.change();
				return false;
			});
			$('.plus').click(function () {
				var $input = $(this).parent().find('input');
				$input.val(parseInt($input.val()) + 1);
				$input.change();
				return false;
			});
			$('.minus1').click(function () {
				var $input = $(this).parent().find('input');
				var count = parseInt($input.val()) - 1;
				count = count < 1 ? 1 : count;
				$input.val(count);
				$input.change();
				return false;
			});
			$('.plus1').click(function () {
				var $input = $(this).parent().find('input');
				$input.val(parseInt($input.val()) + 1);
				$input.change();
				return false;
			});
		});
</script>
<style>
    	span {cursor:pointer; }
		
		.minus, .plus{
			width:40px;
			height:40px;
			background:#f2f2f2;
			border-radius:4px;
			padding:8px 5px 8px 5px;
			border:1px solid #ddd;
      display: inline-block;
      vertical-align: middle;
      text-align: center;
		}
		.minus1, .plus1{
			width:40px;
			height:40px;
			background:#f2f2f2;
			border-radius:4px;
			padding:8px 5px 8px 5px;
			border:1px solid #ddd;
      display: inline-block;
      vertical-align: middle;
      text-align: center;
		}
		input{
			height:34px;
      text-align: center;
      font-size: 14px;
			border:1px solid #ddd;
			border-radius:4px;
      display: inline-block;
      vertical-align: middle;
			
</style>
<style>
/* Float four columns side by side */
.column {
  float: left;
  width: 100%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
}
</style>
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $("#datepicker").datepicker({ dateFormat: "M d,yy" }).val()
  } );
  </script>
</div>
</section>
@endsection 