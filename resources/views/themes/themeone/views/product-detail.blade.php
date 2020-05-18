
@extends('layout')
@section('content')

<section class="site-content">
	<div class="container">
		<div class="breadcum-area">
        	<div class="breadcum-inner">
            	<h3>{{$result['detail']['product_data'][0]->products_name}}</h3>
                <ol class="breadcrumb">
                    
                    <li class="breadcrumb-item"><a href="{{ URL::to('/')}}">@lang('website.Home')</a></li>
                    
                    @if(!empty($result['category_name']) and !empty($result['sub_category_name']))
                    	<!--<li class="breadcrumb-item"><a href="{{ URL::to('/shop?category='.$result['category_slug'])}}">{{$result['category_name']}}</a></li>-->
                    	<li class="breadcrumb-item"><a href="{{ URL::to('/shop?category='.$result['sub_category_slug'])}}">{{$result['sub_category_name']}}</a></li>
                    @elseif(!empty($result['category_name']) and empty($result['sub_category_name']))
                    	<li class="breadcrumb-item"><a href="{{ URL::to('/shop?category='.$result['category_slug'])}}">{{$result['category_name']}}</a></li>
                    @endif
                    
                    <li class="breadcrumb-item active">{{$result['detail']['product_data'][0]->products_name}}</li>
                </ol>
            </div>
		</div>

		<div class="product-detail-area">
			<div class="row">
				<div class="col-12">
                	<div class="detail-area">
                        <div class="row">
                        @if(!empty($result['detail']['product_data'][0]->products_left_banner) and $result['detail']['product_data'][0]->products_left_banner_start_date <= time() and $result['detail']['product_data'][0]->products_left_banner_expire_date >= time())
                        	<div class="col-12 col-lg-2">
                            	<img class="img-thumbnail" src="{{asset('').$result['detail']['product_data'][0]->products_left_banner }}" alt="img-fluid">
                            </div>
                        @endif
                        
                        @if(!empty($result['detail']['product_data'][0]->products_left_banner) and $result['detail']['product_data'][0]->products_left_banner_start_date <= time() and $result['detail']['product_data'][0]->products_left_banner_expire_date >= time() and !empty($result['detail']['product_data'][0]->products_right_banner) and $result['detail']['product_data'][0]->products_right_banner_start_date <= time() and $result['detail']['product_data'][0]->products_right_banner_expire_date >= time())
                            <div class="col-12 col-lg-4">
                        @else
                        	<div class="col-12 col-lg-5">
                        @endif
                        
                                <div id="product-slider" class="carousel slide">
                                	@php
									
                                    if(!empty($result['detail']['product_data'][0]->discount_price) or !empty($result['detail']['product_data'][0]->flash_price)){
										if(!empty($result['detail']['product_data'][0]->discount_price)){
                                       	 	$discount_price = $result['detail']['product_data'][0]->discount_price;	
										}else{
											$discount_price = $result['detail']['product_data'][0]->flash_price;	
										}
                                        $orignal_price = $result['detail']['product_data'][0]->products_price;	
                                        
                                        if(($orignal_price+0)>0){
                                            $discounted_price = $orignal_price-$discount_price;
                                            $discount_percentage = $discounted_price/$orignal_price*100;
                                        }else{
                                            $discount_percentage = 0;
                                        }
                                        echo "<span class='discount-tag'>".(int)$discount_percentage."%</span>";
                                    }
									
									@endphp
                                    <!-- main slider carousel items -->
                                    <div class="carousel-inner">
                                        <a class="carousel-control-prev" href="#product-slider" role="button" data-slide="prev">
                                            <span class="fa fa-angle-left" aria-hidden="true"></span>
                                            <span class="sr-only">@lang('website.Previous')</span>
                                        </a>
                                        <a class="carousel-control-next" href="#product-slider" role="button" data-slide="next">
                                            <span class="fa fa-angle-right" aria-hidden="true"></span>
                                            <span class="sr-only">@lang('website.Next')</span>
                                        </a>
                                        <!-- default image -->
                                        <div class="active item carousel-item" data-slide-number="0">
                                            <img class="img-thumbnail" src="{{asset('').$result['detail']['product_data'][0]->products_image }}" alt="img-fluid">
                                        </div>
    
                                        @foreach( $result['detail']['product_data'][0]->images as $key=>$images )
                                            <div class="item carousel-item" data-slide-number="{{++$key}}">
                                                <img class="img-thumbnail" src="{{asset('').$images->image }}" alt="img-fluid">
                                            </div>
                                        @endforeach
                                    </div>
                                    
                                    <div class="carousel-indicators" style="display: inline-block; margin-left: 0; margin-right: 0;">                                
                                        <div class="thumbnail active" data-slide-to="0" data-target="#product-slider" style="float: left; margin-bottom:10px;">
                                            <a id="carousel-selector-0">
                                                <img class="img-thumbnail " src="{{asset('').$result['detail']['product_data'][0]->products_image }}" alt="img-fluid" style="    max-width: 80px;">
                                            </a>
                                        </div>
                                                    
                                        @foreach( $result['detail']['product_data'][0]->images as $key=>$images )
                                            <div class="thumbnail" data-slide-to="{{++$key}}" data-target="#product-slider" style="float: left; margin-bottom:10px;">
                                                <a id="carousel-selector-1">
                                                    <img class="img-thumbnail " src="{{asset('').$images->image }}" alt="img-fluid" style="    max-width: 80px;">
                                                </a>
                                            </div>
                                        @endforeach
                                    </div>
                                    
                                    

                                </div>
                            </div>
                            
            			    @if(!empty($result['detail']['product_data'][0]->products_left_banner) and $result['detail']['product_data'][0]->products_left_banner_start_date <= time() and $result['detail']['product_data'][0]->products_left_banner_expire_date >= time() or !empty($result['detail']['product_data'][0]->products_right_banner) and $result['detail']['product_data'][0]->products_right_banner_start_date <= time() and $result['detail']['product_data'][0]->products_right_banner_expire_date >= time())
                            <div class="col-12 col-lg-4">
                            @else
                                <div class="col-12 col-lg-5">
                            @endif
                            
                                <div class="product-summary">
                                    <div class="like-box">
                                        <span products_id='{{$result['detail']['product_data'][0]->products_id}}' class="fa @if($result['detail']['product_data'][0]->isLiked==1) fa-heart @else fa-heart-o @endif is_liked">
                                        	<span class="badge badge-secondary">{{$result['detail']['product_data'][0]->products_liked}}</span>
                                        </span>                                          
                                    </div>   
                                    
                                    
                                    @if(!empty($result['detail']['product_data'][0]->flash_start_date))
                                        <div class="sale-counter">
                                        @if( $result['detail']['product_data'][0]->server_time >= $result['detail']['product_data'][0]->flash_start_date)
                                           <span style="display: none" id="counter_product"></span>											
                                        @endif
                                         </div>                                            
                                     @endif  
                                     
                                      @if(!empty($result['detail']['product_data'][0]->flash_start_date) and $result['detail']['product_data'][0]->server_time < $result['detail']['product_data'][0]->flash_start_date )
                                           <span class="discount-tag upcomming-tag">@lang('website.UP COMMING')</span>
                                      @endif
                                                                      
                                    <h3 class="product-title">{{$result['detail']['product_data'][0]->products_name}}</h3>   
                           
                                                                   
                                    <div class="product-info" style="display:-webkit-inline-box;">
                                        @if(isset($result['reviews']))
                                                    @if(isset($result['reviews']['avg_rate']))
                                                      @if($result['reviews']['avg_rate']=='1' || $result['reviews']['avg_rate']==1)
                                                      <img src="{{ URL::to('/images/stars-1.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']>1 && $result['reviews']['avg_rate']<2)
                                                      <img src="{{ URL::to('/images/stars-11.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']==2)
                                                      <img src="{{ URL::to('/images/stars-2.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']>2 && $result['reviews']['avg_rate']<3)
                                                      <img src="{{ URL::to('/images/stars-21.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']==3)
                                                      <img src="{{ URL::to('/images/stars-3.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']>3 && $result['reviews']['avg_rate']<4)
                                                      <img src="{{ URL::to('/images/stars-31.png')}}" alt="Senitta">
                                                       @elseif($result['reviews']['avg_rate']==4)
                                                      <img src="{{ URL::to('/images/stars-4.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']>4 && $result['reviews']['avg_rate']<5)
                                                      <img src="{{ URL::to('/images/stars-41.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']==5)
                                                      <img src="{{ URL::to('/images/stars-5.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']==0)
                                                      <img src="{{ URL::to('/images/stars-0.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']>0 && $result['reviews']['avg_rate']<1)
                                                      <img src="{{ URL::to('/images/stars-01.png')}}" alt="Senitta">
                                                      @endif
                                                    
                                                     @endif
                                                    @endif
                                        @if(!empty($result['category_name']) and !empty($result['sub_category_name']))
                                            
                                         <!--<a href="{{ URL::to('/shop?category='.$result['sub_category_slug'])}}" class="category">{{$result['sub_category_name']}}</a>-->
                                        @elseif(!empty($result['category_name']) and empty($result['sub_category_name']))
                                         <!--<a href="{{ URL::to('/shop?category='.$result['category_slug'])}}" class="category">{{$result['category_name']}}</a>-->
                                            
                                        @endif
                                        
                                        <div class="orders">{{$result['detail']['product_data'][0]->products_ordered}}&nbsp;@lang('website.Order(s)')</div>                                                                                
                                        @if($result['detail']['product_data'][0]->products_type == 0)
                                        	
                                            @if($result['detail']['product_data'][0]->defaultStock == 0)
                                            <div class="availbility"><i class="fa fa-check" aria-hidden="true"></i>&nbsp; @lang('website.Out of Stock') </div>
                                           
                                            @else 
                                                <div class="availbility"><i class="fa fa-check" aria-hidden="true"></i>&nbsp; @lang('website.In stock') </div>
                                            @endif
                                            
                                        @else
                                        	 <div class="availbility stock-out-cart" hidden><i class="fa fa-check" aria-hidden="true"></i>&nbsp; @lang('website.Out of Stock') </div>
                                             <div class="availbility stock-cart" hidden><i class="fa fa-check" aria-hidden="true"></i>&nbsp; @lang('website.In stock') </div>
                                        @endif                                                                                
                                        
                                    </div>
            
                                     <div class="product-price">
                                     	@if(!empty($result['detail']['product_data'][0]->flash_price))
                                        <span class="discount">
                                                    {{$web_setting[19]->value}}{{$result['detail']['product_data'][0]->flash_price+0}} 
                                         </span>
                                        @elseif(!empty($result['detail']['product_data'][0]->discount_price))
                                            <span class="discount">
                                                    {{$web_setting[19]->value}}{{$result['detail']['product_data'][0]->discount_price+0}} 
                                            </span>
                                        @endif		
                                        
                                        <!--discount_price-->
                                        <span class="price @if(!empty($result['detail']['product_data'][0]->discount_price) or !empty($result['detail']['product_data'][0]->flash_price)) line-through @else change_price @endif" >
                                            {{$web_setting[19]->value}}{{$result['detail']['product_data'][0]->products_price+0}}
                                        </span>                                    
                                                                
                                        @if($result['detail']['product_data'][0]->products_min_order>0)
                                        	<span class="min-order-tag">
                                       		&nbsp; @lang('website.Min Order Limit:') {{ $result['detail']['product_data'][0]->products_min_order }}
                                            </span>
                                        @endif
                                       
                                    </div>
            
                                    <form name="attributes" id="add-Product-form" method="post" >
                                        <input type="hidden" name="products_id" value="{{$result['detail']['product_data'][0]->products_id}}">
                                        
                                        <input type="hidden" name="products_price" id="products_price" value="@if(!empty($result['detail']['product_data'][0]->flash_price)) {{$result['detail']['product_data'][0]->flash_price+0}} @elseif(!empty($result['detail']['product_data'][0]->discount_price)){{$result['detail']['product_data'][0]->discount_price+0}}@else{{$result['detail']['product_data'][0]->products_price+0}}@endif">
                                        
                                        <input type="hidden" name="checkout" id="checkout_url" value="@if(!empty(app('request')->input('checkout'))) {{ app('request')->input('checkout') }} @else false @endif" >	
                                        
                                        <input type="hidden" id="max_order" value="@if(!empty($result['detail']['product_data'][0]->products_max_stock)) {{ $result['detail']['product_data'][0]->products_max_stock }} @else 0 @endif" >                                                                              
                                        
                                        @if(count($result['detail']['product_data'][0]->attributes)>0)                                            
                                            <div class="form-row">                                             
                                        
                                                @php                                                    
                                                    $index = 0;                                                    
                                                @endphp 
                                                @foreach( $result['detail']['product_data'][0]->attributes as $key=>$attributes_data )  
                                                @php                                                    
                                                    $functionValue = 'function_'.$key++;                                                    
                                                @endphp                   
                                                <input type="hidden" name="option_name[]" value="{{ $attributes_data['option']['name'] }}" >
                                                <input type="hidden" name="option_id[]" value="{{ $attributes_data['option']['id'] }}" >
                                                <input type="hidden" name="{{ $functionValue }}" id="{{ $functionValue }}" value="0" >									
                                                <input id="attributeid_<?=$index?>" type="hidden" value="">										
                                                <input id="attribute_sign_<?=$index?>" type="hidden" value="">												
                                                <input id="attributeids_<?=$index?>" type="hidden" name="attributeid[]" value="" >
                                                <div class="form-group col-sm-4">							
                                                    <label for="values_<?=$index?>" class="col-sm-12 col-form-label">{{ $attributes_data['option']['name'] }}</label>		
                                                    <div class="col-sm-12">								
                                                      
                                                        <select name="{{ $attributes_data['option']['id'] }}" onChange="getQuantity()" class="currentstock form-control attributeid_<?=$index++?>" attributeid = "{{ $attributes_data['option']['id'] }}">
															@php
															$is_default = 0;
															@endphp
                                                            @foreach( $attributes_data['values'] as $values_data )
                                                            {{ $values_data['is_default'] }}
																@if($is_default==0)
																	@if($values_data['is_default']==1)
																		<option  attributes_value="{{ $values_data['products_attributes_id'] }}" value="{{ $values_data['id'] }}" prefix = '{{ $values_data['price_prefix'] }}'  value_price ="{{ $values_data['price']+0 }}" >{{ $values_data['value'] }}</option>
																	@endif	
																@endif

																@if($is_default==1){
																	@if($values_data['is_default']==0)
																		<option  attributes_value="{{ $values_data['products_attributes_id'] }}" value="{{ $values_data['id'] }}" prefix = '{{ $values_data['price_prefix'] }}'  value_price ="{{ $values_data['price']+0 }}" >{{ $values_data['value'] }}</option>
																	@endif	
																@endif

																@php
																$is_default++;
																@endphp
																													   
                                                            @endforeach								
                                                        </select>								
                                                    </div>							
                                                </div>
                                                @endforeach							
                                            </div>
                                        @endif	
                                        
                                        <div class="form-inline product-box">
                                        @php
                                        	
                                          	if($result['detail']['product_data'][0]->products_min_order>0){
                                             	$min_order_limit = $result['detail']['product_data'][0]->products_min_order;
                                            }else{ 
                                            	$min_order_limit = 1;
                                            }
											
                                            
                                            if(!empty($result['detail']['product_data'][0]->products_max_stock) and $result['detail']['product_data'][0]->products_max_stock>0 and  $result['detail']['product_data'][0]->products_max_stock < $result['detail']['product_data'][0]->defaultStock){
                                             	$max_order_limit = $result['detail']['product_data'][0]->products_max_stock;
                                             }else{ 
                                             	$max_order_limit = $result['detail']['product_data'][0]->defaultStock;
                                             }
                                            
											
                                        	if(!empty($result['detail']['product_data'][0]->flash_price)){
                                            	
                                                $product_price = $min_order_limit*$result['detail']['product_data'][0]->flash_price+0;
                                                $default_price = $result['detail']['product_data'][0]->flash_price+0;
                                                
                                            }elseif(!empty($result['detail']['product_data'][0]->discount_price)){
                                             
                                             	$product_price = $min_order_limit*$result['detail']['product_data'][0]->discount_price+0;
                                                $default_price = $result['detail']['product_data'][0]->discount_price+0;
                                                    
                                            }else{
                                             
                                                $product_price =$min_order_limit*$result['detail']['product_data'][0]->products_price+0;
                                                $default_price = $result['detail']['product_data'][0]->products_price+0;
                                             }
                                             
                                        @endphp
                                        
                                            <div class="form-group Qty" @if(!empty($result['detail']['product_data'][0]->flash_start_date) and $result['detail']['product_data'][0]->server_time < $result['detail']['product_data'][0]->flash_start_date ) style="display: none" @endif>
                                                <label for="quantity" class="col-form-label">@lang('website.Quantity') </label>                        
                                                <div class="input-group">						
                                                    <span class="input-group-btn first qtyminus">						
                                                    	<button class="btn btn-defualt" type="button">-</button>						
                                                    </span>	
                                                    <input type="text" readonly name="quantity" value="{{$min_order_limit}}" min="{{$min_order_limit}}" max="{{$max_order_limit}}" class="form-control qty">											
                                                    						
                                                    <span class="input-group-btn last qtyplus" style="margin-left:-24%;">						
                                                    	<button class="btn btn-defualt" type="button">+</button>						
                                                    </span>						
                                                </div>
                                            </div>
                                            
                                            <div class="price-box">
                                                <span>@lang('website.Total Price')&nbsp;:</span>
                                                <span class="total_price">
                                                {{$web_setting[19]->value}}{{$product_price}}
                                                </span>				
                                            </div>  
                                           
                                            
                                            <div class="buttons" style="margin-top: 0px;">    
                                             @if(!empty($result['detail']['product_data'][0]->flash_start_date) and $result['detail']['product_data'][0]->server_time < $result['detail']['product_data'][0]->flash_start_date )
                                             
                                              @else
                                               @if($result['detail']['product_data'][0]->products_type == 0)
                                        			
                                                    @if($result['detail']['product_data'][0]->defaultStock == 0 or $result['detail']['product_data'][0]->defaultStock < $min_order_limit )
                                                   		<button class="btn btn-danger " type="button">@lang('website.Out of Stock')</button>
                                                    @else 
                                                        <button class="btn btn-secondary add-to-Cart" type="button" products_id="{{$result['detail']['product_data'][0]->products_id}}">@lang('website.Add to Cart')</button>
                                                    @endif                                                    
                                                @else
                                                     <button class="btn btn-secondary add-to-Cart stock-cart" hidden type="button" products_id="{{$result['detail']['product_data'][0]->products_id}}">@lang('website.Add to Cart')</button>                                                     
                                                     <button class="btn btn-danger stock-out-cart" hidden type="button">@lang('website.Out of Stock')</button>                                                     
                                                @endif
                                              @endif
                                            </div>   
                                        </div>
                                    </form>	


<h3><b style="font-size:16px;">Rating</b></h3>

<div class="row" style="background-color:#fff;border-radius:5px;">
<div class="column">
    <p style="text-align:center;" class="ratttt">
    <?php echo number_format($result['reviews']['avg_rate'], 2);?></p> 
        <p style="text-align:center;">
 @if(isset($result['reviews']))
                                                    @if(isset($result['reviews']['avg_rate']))
                                                      @if($result['reviews']['avg_rate']=='1' || $result['reviews']['avg_rate']==1)
                                                      <img src="{{ URL::to('/images/stars-1.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']>1 && $result['reviews']['avg_rate']<2)
                                                      <img src="{{ URL::to('/images/stars-11.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']==2)
                                                      <img src="{{ URL::to('/images/stars-2.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']>2 && $result['reviews']['avg_rate']<3)
                                                      <img src="{{ URL::to('/images/stars-21.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']==3)
                                                      <img src="{{ URL::to('/images/stars-3.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']>3 && $result['reviews']['avg_rate']<4)
                                                      <img src="{{ URL::to('/images/stars-31.png')}}" alt="Senitta">
                                                       @elseif($result['reviews']['avg_rate']==4)
                                                      <img src="{{ URL::to('/images/stars-4.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']>4 && $result['reviews']['avg_rate']<5)
                                                      <img src="{{ URL::to('/images/stars-41.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']==5)
                                                      <img src="{{ URL::to('/images/stars-5.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']==0)
                                                      <img src="{{ URL::to('/images/stars-0.png')}}" alt="Senitta">
                                                      @elseif($result['reviews']['avg_rate']>0 && $result['reviews']['avg_rate']<1)
                                                      <img src="{{ URL::to('/images/stars-01.png')}}" alt="Senitta">
                                                      @endif
                                                    
                                                     @endif
                                                    @endif
                                                    </p>
                                                    <p style="text-align:center;">
                                                    <?php echo $result['reviews']['total_ratings'];?></p> 
                                                        
</div>
<div class="column">
   <div class="row" style="margin-left:0px;margin-right:0px;">
<div class="side">
    <div>1</div>
  </div>
  <div class="middle">
    <div class="bar-container">
      <div class="bar-1" style="height:12px;border-radius:5px;width:<?php echo $result['reviews']['counter'][0]['count']/$result['reviews']['total_ratings']*100;?>%"></div>
    </div>
  </div>
  <div class="side right">
    <div></div>
  </div>
 </div> 
 <div class="row" style="margin-left:0px;margin-right:0px;">
   <div class="side">
    <div>2</div>
  </div>
  <div class="middle">
    <div class="bar-container">
      <div class="bar-2" style="height:12px;border-radius:5px;width:<?php echo $result['reviews']['counter'][1]['count']/$result['reviews']['total_ratings']*100;?>%"></div>
    </div>
  </div>
  <div class="side right">
    <div></div>
  </div>
   </div>
   <div class="row" style="margin-left:0px;margin-right:0px;">
    <div class="side">
    <div>3</div>
  </div>
  <div class="middle">
    <div class="bar-container">
      <div class="bar-3" style="height:12px;border-radius:5px;width:<?php echo $result['reviews']['counter'][2]['count']/$result['reviews']['total_ratings']*100;?>%"></div>
    </div>
  </div>
  <div class="side right">
    <div></div>
  </div>
  </div> 
  <div class="row" style="margin-left:0px;margin-right:0px;">
    <div class="side">
    <div>4</div>
  </div>
  <div class="middle">
    <div class="bar-container">
      <div class="bar-4"style="height:12px;border-radius:5px;width:<?php echo $result['reviews']['counter'][3]['count']/$result['reviews']['total_ratings']*100;?>%"></div>
    </div>
  </div>
  <div class="side right">
    <div></div>
  </div>
  
   </div>
   <div class="row" style="margin-left:0px;margin-right:0px;">
  <div class="side">
    <div>5</div>
  </div>
  <div class="middle">
    <div class="bar-container">
      <div class="bar-5" style="height:12px;border-radius:5px;width:<?php echo $result['reviews']['counter'][4]['count']/$result['reviews']['total_ratings']*100;?>%"></div>
    </div>
  </div>
  <div class="side right">
    <div></div>
  </div>
</div> 
</div>
</div>

<p>&nbsp;</p>
<table style="width:100%;font-size: 14px;font-family:calibri;text-align:center;">
@foreach($result['reviews']['data'] as $review_value)
<tr>
<td style="padding:10px;width:33%"><img src="{{ URL::to('/<?php echo $review_value->customers_picture; ?>')}}" style="height:50px;width:50px;border-radius:50px;" alt="Senitta"><br><?php echo $review_value->customers_firstname.' '.$review_value->customers_lastname;?><br>

                                                      @if($review_value->reviews_rating=='1' || $review_value->reviews_rating==1)
                                                      <img src="{{ URL::to('/images/stars-1.png')}}" alt="Senitta">
                                                      
                                                      @elseif($review_value->reviews_rating==2)
                                                      <img src="{{ URL::to('/images/stars-2.png')}}" alt="Senitta">
                                                      
                                                      @elseif($review_value->reviews_rating==3)
                                                      <img src="{{ URL::to('/images/stars-3.png')}}" alt="Senitta">
                                                     
                                                       @elseif($review_value->reviews_rating==4)
                                                      <img src="{{ URL::to('/images/stars-4.png')}}" alt="Senitta">
                                                      
                                                      @elseif($review_value->reviews_rating==5)
                                                      <img src="{{ URL::to('/images/stars-5.png')}}" alt="Senitta">
                                                      @endif
                                                    
                                                    


</td>
<td style="padding:5px;width:33%"><?php
$length= strlen($review_value->review_msg);
//echo $length;
if($length>50)
{
echo substr($review_value->review_msg, 0, 50).'...';
}
else
{
 echo $review_value->review_msg;   
}
?></td>
<td style="padding:5px;width:33%"><?php echo date('d-m-Y', strtotime($review_value->date_added)); ?></td>
</tr>  
 @endforeach
</table>

<button onclick="myFunction()">View All</button>
<div id="demo1" style="display: none">
<table style="width:100%;font-size: 14px;font-family:calibri;text-align:center;">
@foreach($result['reviews']['data1'] as $review_value1)
<tr>
<td style="padding:10px;width:33%"><img src="{{ URL::to('/<?php echo $review_value1->customers_picture; ?>')}}" style="height:50px;width:50px;border-radius:50px;" alt="Senitta"><br><?php echo $review_value1->customers_firstname.' '.$review_value1->customers_lastname;?><br>

                                                      @if($review_value1->reviews_rating=='1' || $review_value1->reviews_rating==1)
                                                      <img src="{{ URL::to('/images/stars-1.png')}}" alt="Senitta">
                                                      
                                                      @elseif($review_value1->reviews_rating==2)
                                                      <img src="{{ URL::to('/images/stars-2.png')}}" alt="Senitta">
                                                      
                                                      @elseif($review_value1->reviews_rating==3)
                                                      <img src="{{ URL::to('/images/stars-3.png')}}" alt="Senitta">
                                                     
                                                       @elseif($review_value1->reviews_rating==4)
                                                      <img src="{{ URL::to('/images/stars-4.png')}}" alt="Senitta">
                                                      
                                                      @elseif($review_value1->reviews_rating==5)
                                                      <img src="{{ URL::to('/images/stars-5.png')}}" alt="Senitta">
                                                      @endif
                                                    
                                                    


</td>
<td style="padding:5px;width:33%"><?php echo substr($review_value1->review_msg, 0, 500);?></td>
<td style="padding:5px;width:33%"><?php echo date('d-m-Y', strtotime($review_value1->date_added)); ?></td>
</tr>  
 @endforeach
</table>    
</div>    
<p>&nbsp;</p>

@if (Auth::guard('customer')->check())
<b>Write a Review</b><br>
<form method="post" action="{{ URL::to('/review_submit.php')}}" id="feedback">
<div class="rate">
    <input type="radio" id="star5" name="rate" value="5"/>
    <label for="star5" title="5">5 stars</label>
    <input type="radio" id="star4" name="rate" value="4" />
    <label for="star4" title="4">4 stars</label>
    <input type="radio" id="star3" name="rate" value="3" />
    <label for="star3" title="3">3 stars</label>
    <input type="radio" id="star2" name="rate" value="2" />
    <label for="star2" title="2">2 stars</label>
    <input type="radio" id="star1" name="rate" value="1"/>
    <label for="star1" title="1">1 star</label>
  </div><br><br>
<input type="hidden" name="products_id" value="{{$result['detail']['product_data'][0]->products_id}}">
<input type="hidden" name="customers_id" value="{{ auth()->guard('customer')->user()->customers_id}}">

<textarea name="message" rows="3" cols="30" minlength="50" placeholder="Describe your experience..." required class="rwmsg" oninvalid="this.setCustomValidity('Text length should be 50 characters or more.')"></textarea><br><br>

<input type="button" class="btn btn-secondary" value="Submit Review" name="review_submit" onclick="submitForm()">
</form>
@else
<button onclick="alert('Please Login First')" class="btn btn-secondary">Write a Review</button>
@endif
                                    
                                    
                                </div>	
                            </div>
                         
                         
                         
                        @if(!empty($result['detail']['product_data'][0]->products_right_banner) and $result['detail']['product_data'][0]->products_right_banner_start_date <= time() and $result['detail']['product_data'][0]->products_right_banner_expire_date >= time())
                            <div class="col-12 col-lg-2">
                            	<img class="img-thumbnail" src="{{asset('').$result['detail']['product_data'][0]->products_right_banner }}" alt="img-fluid">
                            </div>
                        @endif
                            <div class="col-12">
                                <div class="product-tabs">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-pills" id="myTab" role="tablist">
                                      <li class="nav-item">
                                        <a class="nav-link active" id="product-desc-tab" data-toggle="tab" href="#product_desc" role="tab" aria-controls="product_desc" aria-selected="true">@lang('website.Products Description')</a>
                                      </li>
                                      
                                    </ul>
                                    
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="product_desc" role="tabpanel" aria-labelledby="product-desc-tab">
                                            <p class="product-description"><?=stripslashes($result['detail']['product_data'][0]->products_description)?></p>	
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
				
                    <div class="related-product-area">
                        <div class="heading">
                                <h2>@lang('website.Related Products') 
                                @foreach($result['detail']['product_data'][0]->categories as $key=>$category)
                                    @if(++$key === 1)
                                    <small class="pull-right"><a href="{{ URL::to('/shop?category_id='.$category->categories_id)}}">@lang('website.View All')</a></small>
                                    @endif
                                @endforeach
                                </h2>
                                
                                <hr>
                            </div>
                        <div class="row">
                            
                            
                            <div class="products products-4x">
                                @foreach($result['simliar_products']['product_data'] as $key=>$products)
            
                                @if($result['detail']['product_data'][0]->products_id != $products->products_id)
                
                                @if(++$key<=5)
                
                
                                <div class="product">
                                    <a href="{{ URL::to('/product-detail/'.$products->products_slug)}}">
                                    <article>
                                        <div class="thumb"><img class="img-fluid" src="{{asset('').$products->products_image}}" alt="{{$products->products_name}}"></div>
                                        <?php
                                            $current_date = date("Y-m-d", strtotime("now"));
                                            
                                            $string = substr($products->products_date_added, 0, strpos($products->products_date_added, ' '));
                                            $date=date_create($string);
                                            date_add($date,date_interval_create_from_date_string($web_setting[20]->value." days"));
                                            
                                            
                                            $after_date = date_format($date,"Y-m-d");
                                            
                                            if($after_date>=$current_date){
                                                print '<span class="new-tag">New</span>';
                                            }
                                            
                                            if(!empty($products->discount_price)){
                                                $discount_price = $products->discount_price;	
                                                $orignal_price = $products->products_price;	
                                                
                                                if(($orignal_price+0)>0){
													$discounted_price = $orignal_price-$discount_price;
													$discount_percentage = $discounted_price/$orignal_price*100;
												}else{
													$discount_percentage = 0;
												}
                                                echo "<span class='discount-tag'>".(int)$discount_percentage."%</span>";
                                            }
                                        ?>
                                        
                                        <!--<span class="tag text-center">
                                            @foreach($products->categories as $key=>$category)
                                    			{{$category->categories_name}}@if(++$key === count($products->categories)) @else, @endif		                                			@endforeach
                                        </span>-->
                                        
                                        <h2 class="title text-center">{{$products->products_name}}</h2>                                            
                                        <div class="price text-center">
                                            @if(!empty($products->discount_price))
                                                {{$web_setting[19]->value}}{{$products->discount_price+0}}
                                                <span>{{$web_setting[19]->value}}{{$products->products_price+0}}</span> 
                                            @else
                                                {{$web_setting[19]->value}}{{$products->products_price+0}}
                                            @endif
                                        </div>
                                                                                
                                        <div class="product-hover">
                                            <!--<div class="icons">
                                                <div class="icon-liked">
                                                    <span products_id = '{{$products->products_id}}' class="fa @if($products->isLiked==1) fa-heart @else fa-heart-o @endif is_liked"><span class="badge badge-secondary">{{$products->products_liked}}</span></span>
                                                </div>
                                                @if($products->products_type!=2)
                                                	<a href="{{ URL::to('/product-detail/'.$products->products_slug)}}" class="fa fa-eye"></a>
                                                @endif
                                            </div>-->
                                            
                                            <div class="buttons">
                                            	@if($products->products_type==0)
                                                    @if(!in_array($products->products_id,$result['cartArray']))
                                                        <button type="button" class="btn btn-block btn-secondary cart" products_id="{{$products->products_id}}">@lang('website.Add to Cart')</button>
                                                    @elseif($products->products_min_order>0)
                                                         <a class="btn btn-block btn-secondary" href="{{ URL::to('/product-detail/'.$products->products_slug)}}">@lang('website.View Detail')</a>
                                                    @else 
                                                        <button type="button" class="btn btn-block btn-secondary active">@lang('website.Added')</button>
                                                    @endif
                                                @elseif($products->products_type==1)
                                                    <a class="btn btn-block btn-secondary" href="{{ URL::to('/product-detail/'.$products->products_slug)}}">@lang('website.View Detail')</a>
                                                @elseif($products->products_type==2)
                                                    <a href="{{$products->products_url}}" target="_blank" class="btn btn-block btn-secondary">@lang('website.External Link')</a>
                                                @endif
                                            </div>
                                            
                                         </div>
                                    </article>
                                  </a></div>
                
                                @endif		
                
                                @endif
                
                                @endforeach
                            </div>
    
                        </div>
                    </div>
                </div>
			</div>
		</div>
	</div>
</section>
<script>
    function submitForm(){
        event.preventDefault();
        let stars = document.getElementsByName('rate');
        let selected = false;
        for(x in stars){
            if(stars[x].checked){
                selected = true;
                break;
            }
        }
        if(selected){
            document.getElementById('feedback').submit();
        }
        else{
            alert("Please provide a star rating.");
        }
    }
</script>
@endsection


<style>
    @media screen and (max-width: 600px) {
  .like-box { 
    margin-top: -11%;
  }
  .ratttt { 
    margin-top: 50% !important;
  }
  .rwmsg{
      margin-left:2% !important;
  }
}
.rwmsg{
      margin-left:-35%;
  }
  
  .ratttt { 
    margin-top: 10%;
  }
.rate {
    float: left;
    height: 46px;
    padding: 0 10px;
}
.rate:not(:checked) > input {
    position:fixed;
    top:-9999px;
}
.rate:not(:checked) > label {
    float:right;
    width:1em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:30px;
    color:#ccc;
}
.rate:not(:checked) > label:before {
    content: '★ ';
}
.rate > input:checked ~ label {
    color: #F0CA4D;
    position:static;
    overflow:hidden;
}
.rate:not(:checked) > label:hover,
.rate:not(:checked) > label:hover ~ label {
    color: #F0CA4D;  
}
.rate > input:checked + label:hover,
.rate > input:checked + label:hover ~ label,
.rate > input:checked ~ label:hover,
.rate > input:checked ~ label:hover ~ label,
.rate > label:hover ~ input:checked ~ label {
    color: #F0CA4D;
}
.heading {
  font-size: 25px;
  margin-right: 25px;
}

.fa {
  font-size: 25px;
}

.checked {
  color: orange;
}

/* Three column layout */
.side {
  float: left;
  width: 6%;
  margin-top:4px;
}

.middle {
  margin-top:10px;
  float: left;
  width: 70%;
}

/* Place text to the right */
.right {
  text-align: right;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.column {
  float: left;
  width: 50%;
  padding: 10px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* The bar container */
.bar-container {
  width: 100%;
  background-color: #f1f1f1;
  text-align: center;
  color: white;
  border-radius:5px;
}

/* Individual bars */
.bar-5 {background-color: #eab814;}
.bar-4 {background-color: #eab814;}
.bar-3 {background-color: #eab814;}
.bar-2 {background-color: #eab814;}
.bar-1 {background-color: #eab814;}

/* Responsive layout - make the columns stack on top of each other instead of next to each other */
@media (max-width: 400px) {
  .side, .middle {
    width: 100%;
  }
  .right {
    display: none;
  }
}
</style>
<script>
function myFunction() {
    // alert('hi');
  var x = document.getElementById("demo1");
  if (x.style.display == "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
</script>

  




