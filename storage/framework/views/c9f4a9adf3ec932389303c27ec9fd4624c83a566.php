<?php $__env->startSection('content'); ?>
<section class="site-content">
	<div class="container">
		<div class="breadcum-area">
        	<div class="breadcum-inner">
            	<h3><?php echo e($result['detail']['product_data'][0]->products_name); ?></h3>
                <ol class="breadcrumb">
                    
                    <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->getFromJson('website.Home'); ?></a></li>
                    
                    <?php if(!empty($result['category_name']) and !empty($result['sub_category_name'])): ?>
                    	<li class="breadcrumb-item"><a href="<?php echo e(URL::to('/shop?category='.$result['category_slug'])); ?>"><?php echo e($result['category_name']); ?></a></li>
                    	<li class="breadcrumb-item"><a href="<?php echo e(URL::to('/shop?category='.$result['sub_category_slug'])); ?>"><?php echo e($result['sub_category_name']); ?></a></li>
                    <?php elseif(!empty($result['category_name']) and empty($result['sub_category_name'])): ?>
                    	<li class="breadcrumb-item"><a href="<?php echo e(URL::to('/shop?category='.$result['category_slug'])); ?>"><?php echo e($result['category_name']); ?></a></li>
                    <?php endif; ?>
                    
                    <li class="breadcrumb-item active"><?php echo e($result['detail']['product_data'][0]->products_name); ?></li>
                </ol>
            </div>
		</div>

		<div class="product-detail-area">
			<div class="row">
				<div class="col-12">
                	<div class="detail-area">
                        <div class="row">
                        <?php if(!empty($result['detail']['product_data'][0]->products_left_banner) and $result['detail']['product_data'][0]->products_left_banner_start_date <= time() and $result['detail']['product_data'][0]->products_left_banner_expire_date >= time()): ?>
                        	<div class="col-12 col-lg-2">
                            	<img class="img-thumbnail" src="<?php echo e(asset('').$result['detail']['product_data'][0]->products_left_banner); ?>" alt="img-fluid">
                            </div>
                        <?php endif; ?>
                        
                        <?php if(!empty($result['detail']['product_data'][0]->products_left_banner) and $result['detail']['product_data'][0]->products_left_banner_start_date <= time() and $result['detail']['product_data'][0]->products_left_banner_expire_date >= time() and !empty($result['detail']['product_data'][0]->products_right_banner) and $result['detail']['product_data'][0]->products_right_banner_start_date <= time() and $result['detail']['product_data'][0]->products_right_banner_expire_date >= time()): ?>
                            <div class="col-12 col-lg-4">
                        <?php else: ?>
                        	<div class="col-12 col-lg-5">
                        <?php endif; ?>
                        
                                <div id="product-slider" class="carousel slide">
                                	<?php 
									
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
									
									 ?>
                                    <!-- main slider carousel items -->
                                    <div class="carousel-inner">
                                        <a class="carousel-control-prev" href="#product-slider" role="button" data-slide="prev">
                                            <span class="fa fa-angle-left" aria-hidden="true"></span>
                                            <span class="sr-only"><?php echo app('translator')->getFromJson('website.Previous'); ?></span>
                                        </a>
                                        <a class="carousel-control-next" href="#product-slider" role="button" data-slide="next">
                                            <span class="fa fa-angle-right" aria-hidden="true"></span>
                                            <span class="sr-only"><?php echo app('translator')->getFromJson('website.Next'); ?></span>
                                        </a>
                                        <!-- default image -->
                                        <div class="active item carousel-item" data-slide-number="0">
                                            <img class="img-thumbnail" src="<?php echo e(asset('').$result['detail']['product_data'][0]->products_image); ?>" alt="img-fluid">
                                        </div>
    
                                        <?php $__currentLoopData = $result['detail']['product_data'][0]->images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$images): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <div class="item carousel-item" data-slide-number="<?php echo e(++$key); ?>">
                                                <img class="img-thumbnail" src="<?php echo e(asset('').$images->image); ?>" alt="img-fluid">
                                            </div>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </div>
                                    
                                    <div class="carousel-indicators" style="display: inline-block; margin-left: 0; margin-right: 0;">                                
                                        <div class="thumbnail active" data-slide-to="0" data-target="#product-slider" style="float: left; margin-bottom:10px;">
                                            <a id="carousel-selector-0">
                                                <img class="img-thumbnail " src="<?php echo e(asset('').$result['detail']['product_data'][0]->products_image); ?>" alt="img-fluid" style="    max-width: 80px;">
                                            </a>
                                        </div>
                                                    
                                        <?php $__currentLoopData = $result['detail']['product_data'][0]->images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$images): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <div class="thumbnail" data-slide-to="<?php echo e(++$key); ?>" data-target="#product-slider" style="float: left; margin-bottom:10px;">
                                                <a id="carousel-selector-1">
                                                    <img class="img-thumbnail " src="<?php echo e(asset('').$images->image); ?>" alt="img-fluid" style="    max-width: 80px;">
                                                </a>
                                            </div>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </div>
                                    
                                    

                                </div>
                            </div>
                            
            			    <?php if(!empty($result['detail']['product_data'][0]->products_left_banner) and $result['detail']['product_data'][0]->products_left_banner_start_date <= time() and $result['detail']['product_data'][0]->products_left_banner_expire_date >= time() or !empty($result['detail']['product_data'][0]->products_right_banner) and $result['detail']['product_data'][0]->products_right_banner_start_date <= time() and $result['detail']['product_data'][0]->products_right_banner_expire_date >= time()): ?>
                            <div class="col-12 col-lg-4">
                            <?php else: ?>
                                <div class="col-12 col-lg-5">
                            <?php endif; ?>
                            
                                <div class="product-summary">
                                    <div class="like-box">
                                        <span products_id='<?php echo e($result['detail']['product_data'][0]->products_id); ?>' class="fa <?php if($result['detail']['product_data'][0]->isLiked==1): ?> fa-heart <?php else: ?> fa-heart-o <?php endif; ?> is_liked">
                                        	<span class="badge badge-secondary"><?php echo e($result['detail']['product_data'][0]->products_liked); ?></span>
                                        </span>                                          
                                    </div>   
                                    
                                    
                                    <?php if(!empty($result['detail']['product_data'][0]->flash_start_date)): ?>
                                        <div class="sale-counter">
                                        <?php if( $result['detail']['product_data'][0]->server_time >= $result['detail']['product_data'][0]->flash_start_date): ?>
                                           <span style="display: none" id="counter_product"></span>											
                                        <?php endif; ?>
                                         </div>                                            
                                     <?php endif; ?>  
                                     
                                      <?php if(!empty($result['detail']['product_data'][0]->flash_start_date) and $result['detail']['product_data'][0]->server_time < $result['detail']['product_data'][0]->flash_start_date ): ?>
                                           <span class="discount-tag upcomming-tag"><?php echo app('translator')->getFromJson('website.UP COMMING'); ?></span>
                                      <?php endif; ?>
                                                                      
                                    <h3 class="product-title"><?php echo e($result['detail']['product_data'][0]->products_name); ?></h3>   
                                                                    
                                    <div class="product-info">
                                        
                                        <?php if(!empty($result['category_name']) and !empty($result['sub_category_name'])): ?>
                                            
                                         <a href="<?php echo e(URL::to('/shop?category='.$result['sub_category_slug'])); ?>" class="category"><?php echo e($result['sub_category_name']); ?></a>
                                        <?php elseif(!empty($result['category_name']) and empty($result['sub_category_name'])): ?>
                                         <a href="<?php echo e(URL::to('/shop?category='.$result['category_slug'])); ?>" class="category"><?php echo e($result['category_name']); ?></a>
                                            
                                        <?php endif; ?>
                                        
                                        <div class="orders"><?php echo e($result['detail']['product_data'][0]->products_ordered); ?>&nbsp;<?php echo app('translator')->getFromJson('website.Order(s)'); ?></div>                                                                                
                                        <?php if($result['detail']['product_data'][0]->products_type == 0): ?>
                                        	
                                            <?php if($result['detail']['product_data'][0]->defaultStock == 0): ?>
                                            <div class="availbility"><i class="fa fa-check" aria-hidden="true"></i>&nbsp; <?php echo app('translator')->getFromJson('website.Out of Stock'); ?> </div>
                                           
                                            <?php else: ?> 
                                                <div class="availbility"><i class="fa fa-check" aria-hidden="true"></i>&nbsp; <?php echo app('translator')->getFromJson('website.In stock'); ?> </div>
                                            <?php endif; ?>
                                            
                                        <?php else: ?>
                                        	 <div class="availbility stock-out-cart" hidden><i class="fa fa-check" aria-hidden="true"></i>&nbsp; <?php echo app('translator')->getFromJson('website.Out of Stock'); ?> </div>
                                             <div class="availbility stock-cart" hidden><i class="fa fa-check" aria-hidden="true"></i>&nbsp; <?php echo app('translator')->getFromJson('website.In stock'); ?> </div>
                                        <?php endif; ?>                                                                                
                                        
                                    </div>
            
                                     <div class="product-price">
                                     	<?php if(!empty($result['detail']['product_data'][0]->flash_price)): ?>
                                        <span class="discount">
                                                    <?php echo e($web_setting[19]->value); ?><?php echo e($result['detail']['product_data'][0]->flash_price+0); ?> 
                                         </span>
                                        <?php elseif(!empty($result['detail']['product_data'][0]->discount_price)): ?>
                                            <span class="discount">
                                                    <?php echo e($web_setting[19]->value); ?><?php echo e($result['detail']['product_data'][0]->discount_price+0); ?> 
                                            </span>
                                        <?php endif; ?>		
                                        
                                        <!--discount_price-->
                                        <span class="price <?php if(!empty($result['detail']['product_data'][0]->discount_price) or !empty($result['detail']['product_data'][0]->flash_price)): ?> line-through <?php else: ?> change_price <?php endif; ?>" >
                                            <?php echo e($web_setting[19]->value); ?><?php echo e($result['detail']['product_data'][0]->products_price+0); ?>

                                        </span>                                    
                                                                
                                        <?php if($result['detail']['product_data'][0]->products_min_order>0): ?>
                                        	<span class="min-order-tag">
                                       		&nbsp; <?php echo app('translator')->getFromJson('website.Min Order Limit:'); ?> <?php echo e($result['detail']['product_data'][0]->products_min_order); ?>

                                            </span>
                                        <?php endif; ?>
                                       
                                    </div>
            
                                    <form name="attributes" id="add-Product-form" method="post" >
                                        <input type="hidden" name="products_id" value="<?php echo e($result['detail']['product_data'][0]->products_id); ?>">
                                        
                                        <input type="hidden" name="products_price" id="products_price" value="<?php if(!empty($result['detail']['product_data'][0]->flash_price)): ?> <?php echo e($result['detail']['product_data'][0]->flash_price+0); ?> <?php elseif(!empty($result['detail']['product_data'][0]->discount_price)): ?><?php echo e($result['detail']['product_data'][0]->discount_price+0); ?><?php else: ?><?php echo e($result['detail']['product_data'][0]->products_price+0); ?><?php endif; ?>">
                                        
                                        <input type="hidden" name="checkout" id="checkout_url" value="<?php if(!empty(app('request')->input('checkout'))): ?> <?php echo e(app('request')->input('checkout')); ?> <?php else: ?> false <?php endif; ?>" >	
                                        
                                        <input type="hidden" id="max_order" value="<?php if(!empty($result['detail']['product_data'][0]->products_max_stock)): ?> <?php echo e($result['detail']['product_data'][0]->products_max_stock); ?> <?php else: ?> 0 <?php endif; ?>" >                                                                              
                                        
                                        <?php if(count($result['detail']['product_data'][0]->attributes)>0): ?>                                            
                                            <div class="form-row">                                             
                                        
                                                <?php                                                     
                                                    $index = 0;                                                    
                                                 ?> 
                                                <?php $__currentLoopData = $result['detail']['product_data'][0]->attributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$attributes_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>  
                                                <?php                                                     
                                                    $functionValue = 'function_'.$key++;                                                    
                                                 ?>                   
                                                <input type="hidden" name="option_name[]" value="<?php echo e($attributes_data['option']['name']); ?>" >
                                                <input type="hidden" name="option_id[]" value="<?php echo e($attributes_data['option']['id']); ?>" >
                                                <input type="hidden" name="<?php echo e($functionValue); ?>" id="<?php echo e($functionValue); ?>" value="0" >									
                                                <input id="attributeid_<?=$index?>" type="hidden" value="">										
                                                <input id="attribute_sign_<?=$index?>" type="hidden" value="">												
                                                <input id="attributeids_<?=$index?>" type="hidden" name="attributeid[]" value="" >
                                                <div class="form-group col-sm-4">							
                                                    <label for="values_<?=$index?>" class="col-sm-12 col-form-label"><?php echo e($attributes_data['option']['name']); ?></label>		
                                                    <div class="col-sm-12">								
                                                      
                                                        <select name="<?php echo e($attributes_data['option']['id']); ?>" onChange="getQuantity()" class="currentstock form-control attributeid_<?=$index++?>" attributeid = "<?php echo e($attributes_data['option']['id']); ?>">
															<?php 
															$is_default = 0;
															 ?>
                                                            <?php $__currentLoopData = $attributes_data['values']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $values_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <?php echo e($values_data['is_default']); ?>

																<?php if($is_default==0): ?>
																	<?php if($values_data['is_default']==1): ?>
																		<option  attributes_value="<?php echo e($values_data['products_attributes_id']); ?>" value="<?php echo e($values_data['id']); ?>" prefix = '<?php echo e($values_data['price_prefix']); ?>'  value_price ="<?php echo e($values_data['price']+0); ?>" ><?php echo e($values_data['value']); ?></option>
																	<?php endif; ?>	
																<?php endif; ?>

																<?php if($is_default==1): ?>{
																	<?php if($values_data['is_default']==0): ?>
																		<option  attributes_value="<?php echo e($values_data['products_attributes_id']); ?>" value="<?php echo e($values_data['id']); ?>" prefix = '<?php echo e($values_data['price_prefix']); ?>'  value_price ="<?php echo e($values_data['price']+0); ?>" ><?php echo e($values_data['value']); ?></option>
																	<?php endif; ?>	
																<?php endif; ?>

																<?php 
																$is_default++;
																 ?>
																													   
                                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>								
                                                        </select>								
                                                    </div>							
                                                </div>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>							
                                            </div>
                                        <?php endif; ?>	
                                        
                                        <div class="form-inline product-box">
                                        <?php 
                                        	
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
                                             
                                         ?>
                                        
                                            <div class="form-group Qty" <?php if(!empty($result['detail']['product_data'][0]->flash_start_date) and $result['detail']['product_data'][0]->server_time < $result['detail']['product_data'][0]->flash_start_date ): ?> style="display: none" <?php endif; ?>>
                                                <label for="quantity" class="col-form-label"><?php echo app('translator')->getFromJson('website.Quantity'); ?> </label>                        
                                                <div class="input-group">						
                                                    <span class="input-group-btn first qtyminus">						
                                                    	<button class="btn btn-defualt" type="button">-</button>						
                                                    </span>						
                                                    <input type="text" readonly name="quantity" value="<?php echo e($min_order_limit); ?>" min="<?php echo e($min_order_limit); ?>" max="<?php echo e($max_order_limit); ?>" class="form-control qty">						
                                                    <span class="input-group-btn last qtyplus">						
                                                    	<button class="btn btn-defualt" type="button">+</button>						
                                                    </span>						
                                                </div>
                                            </div>
                                            
                                            <div class="price-box">
                                                <span><?php echo app('translator')->getFromJson('website.Total Price'); ?>&nbsp;:</span>
                                                <span class="total_price">
                                                <?php echo e($web_setting[19]->value); ?><?php echo e($product_price); ?>

                                                </span>				
                                            </div>  
                                           
                                            
                                            <div class="buttons" style="margin-top: 30px;">    
                                             <?php if(!empty($result['detail']['product_data'][0]->flash_start_date) and $result['detail']['product_data'][0]->server_time < $result['detail']['product_data'][0]->flash_start_date ): ?>
                                             
                                              <?php else: ?>
                                               <?php if($result['detail']['product_data'][0]->products_type == 0): ?>
                                        			
                                                    <?php if($result['detail']['product_data'][0]->defaultStock == 0 or $result['detail']['product_data'][0]->defaultStock < $min_order_limit ): ?>
                                                   		<button class="btn btn-danger " type="button"><?php echo app('translator')->getFromJson('website.Out of Stock'); ?></button>
                                                    <?php else: ?> 
                                                        <button class="btn btn-secondary add-to-Cart" type="button" products_id="<?php echo e($result['detail']['product_data'][0]->products_id); ?>"><?php echo app('translator')->getFromJson('website.Add to Cart'); ?></button>
                                                    <?php endif; ?>                                                    
                                                <?php else: ?>
                                                     <button class="btn btn-secondary add-to-Cart stock-cart" hidden type="button" products_id="<?php echo e($result['detail']['product_data'][0]->products_id); ?>"><?php echo app('translator')->getFromJson('website.Add to Cart'); ?></button>                                                     
                                                     <button class="btn btn-danger stock-out-cart" hidden type="button"><?php echo app('translator')->getFromJson('website.Out of Stock'); ?></button>                                                     
                                                <?php endif; ?>
                                              <?php endif; ?>
                                            </div>   
                                        </div>
                                    </form>								
                                </div>	
                            </div>
                         
                        <?php if(!empty($result['detail']['product_data'][0]->products_right_banner) and $result['detail']['product_data'][0]->products_right_banner_start_date <= time() and $result['detail']['product_data'][0]->products_right_banner_expire_date >= time()): ?>
                            <div class="col-12 col-lg-2">
                            	<img class="img-thumbnail" src="<?php echo e(asset('').$result['detail']['product_data'][0]->products_right_banner); ?>" alt="img-fluid">
                            </div>
                        <?php endif; ?>
                            <div class="col-12">
                                <div class="product-tabs">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-pills" id="myTab" role="tablist">
                                      <li class="nav-item">
                                        <a class="nav-link active" id="product-desc-tab" data-toggle="tab" href="#product_desc" role="tab" aria-controls="product_desc" aria-selected="true"><?php echo app('translator')->getFromJson('website.Products Description'); ?></a>
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
                                <h2><?php echo app('translator')->getFromJson('website.Related Products'); ?> 
                                <?php $__currentLoopData = $result['detail']['product_data'][0]->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php if(++$key === 1): ?>
                                    <small class="pull-right"><a href="<?php echo e(URL::to('/shop?category_id='.$category->categories_id)); ?>"><?php echo app('translator')->getFromJson('website.View All'); ?></a></small>
                                    <?php endif; ?>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </h2>
                                
                                <hr>
                            </div>
                        <div class="row">
                            
                            
                            <div class="products products-4x">
                                <?php $__currentLoopData = $result['simliar_products']['product_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$products): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            
                                <?php if($result['detail']['product_data'][0]->products_id != $products->products_id): ?>
                
                                <?php if(++$key<=5): ?>
                
                                <div class="product">
                                    <article>
                                        <div class="thumb"><img class="img-fluid" src="<?php echo e(asset('').$products->products_image); ?>" alt="<?php echo e($products->products_name); ?>"></div>
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
                                        
                                        <span class="tag text-center">
                                            <?php $__currentLoopData = $products->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    			<?php echo e($category->categories_name); ?><?php if(++$key === count($products->categories)): ?> <?php else: ?>, <?php endif; ?>		                                			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </span>
                                        
                                        <h2 class="title text-center"><?php echo e($products->products_name); ?></h2>                                            
                                        <div class="price text-center">
                                            <?php if(!empty($products->discount_price)): ?>
                                                <?php echo e($web_setting[19]->value); ?><?php echo e($products->discount_price+0); ?>

                                                <span><?php echo e($web_setting[19]->value); ?><?php echo e($products->products_price+0); ?></span> 
                                            <?php else: ?>
                                                <?php echo e($web_setting[19]->value); ?><?php echo e($products->products_price+0); ?>

                                            <?php endif; ?>
                                        </div>
                                                                                
                                        <div class="product-hover">
                                            <div class="icons">
                                                <div class="icon-liked">
                                                    <span products_id = '<?php echo e($products->products_id); ?>' class="fa <?php if($products->isLiked==1): ?> fa-heart <?php else: ?> fa-heart-o <?php endif; ?> is_liked"><span class="badge badge-secondary"><?php echo e($products->products_liked); ?></span></span>
                                                </div>
                                                <?php if($products->products_type!=2): ?>
                                                	<a href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>" class="fa fa-eye"></a>
                                                <?php endif; ?>
                                            </div>
                                            
                                            <div class="buttons">
                                            	<?php if($products->products_type==0): ?>
                                                    <?php if(!in_array($products->products_id,$result['cartArray'])): ?>
                                                        <button type="button" class="btn btn-block btn-secondary cart" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->getFromJson('website.Add to Cart'); ?></button>
                                                    <?php elseif($products->products_min_order>0): ?>
                                                         <a class="btn btn-block btn-secondary" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo app('translator')->getFromJson('website.View Detail'); ?></a>
                                                    <?php else: ?> 
                                                        <button type="button" class="btn btn-block btn-secondary active"><?php echo app('translator')->getFromJson('website.Added'); ?></button>
                                                    <?php endif; ?>
                                                <?php elseif($products->products_type==1): ?>
                                                    <a class="btn btn-block btn-secondary" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo app('translator')->getFromJson('website.View Detail'); ?></a>
                                                <?php elseif($products->products_type==2): ?>
                                                    <a href="<?php echo e($products->products_url); ?>" target="_blank" class="btn btn-block btn-secondary"><?php echo app('translator')->getFromJson('website.External Link'); ?></a>
                                                <?php endif; ?>
                                            </div>
                                            
                                         </div>
                                    </article>
                                  </div>
                
                                <?php endif; ?>		
                
                                <?php endif; ?>
                
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
    
                        </div>
                    </div>
                </div>
			</div>
		</div>
	</div>
</section>

<?php $__env->stopSection(); ?>





<?php echo $__env->make('layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>