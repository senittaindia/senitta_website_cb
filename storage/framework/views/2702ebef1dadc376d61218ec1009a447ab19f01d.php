 <div class="container-fuild">
  <div class="container">
    <div class="products-area"> 
		<!-- heading -->
      
        <div class="heading">
        <h2><?php echo app('translator')->getFromJson('website.Top Selling of the Week'); ?> <small class="pull-right"><a href="<?php echo e(URL::to('/shop?type=topseller')); ?>" ><?php echo app('translator')->getFromJson('website.View All'); ?></a></small></h2>
        <hr>
        </div>
      	<div class="row"> 
        	<div class="col-xs-12 col-sm-12">
            	<!-- Items -->
                <div class="row">
                  	<div class="products products-5x">
                  	<?php if($result['featured']['success']==1): ?>                
                    <?php $__currentLoopData = $result['featured']['product_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$products): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php if($key==0): ?>
                    
                    <div class="product product-2x">
                        <span class="product-featured-tag"><i class="fa fa-flag-o" aria-hidden="true"></i>&nbsp;<?php echo app('translator')->getFromJson('website.Featured'); ?></span>
                        <div class="buttons-liked">
                        	
                            <span products_id = '<?php echo e($products->products_id); ?>' class="fa <?php if($products->isLiked==1): ?> fa-heart <?php else: ?> fa-heart-o <?php endif; ?> is_liked">
                            	<span class="badge badge-secondary"><?php echo e($products->products_liked); ?></span>
                            </span>
                        </div>
                        
                        <article>
                            <div class="thumb"><img class="img-fluid" src="<?php echo e(asset('').$products->products_image); ?>" alt="<?php echo e($products->products_name); ?>"></div>
                            <span class="tag" style="display: inline-block; min-height: inherit;"><?php $__currentLoopData = $products->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                	<?php echo e($category->categories_name); ?><?php if(++$key === count($products->categories)): ?> <?php else: ?>, <?php endif; ?>                                            	
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?></span>
                            <h2 class="title wrap-dot-1"><a href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo e($products->products_name); ?></a></h2>
                            <div class="price">
                                <?php if(!empty($products->discount_price)): ?>
                              
                                    <?php echo e($web_setting[19]->value); ?><?php echo e($products->discount_price+0); ?> <span><?php echo e($web_setting[19]->value); ?><?php echo e($products->products_price+0); ?></span>
                                <?php else: ?>
                                    
                                    <?php echo e($web_setting[19]->value); ?><?php echo e($products->products_price+0); ?>

                                
                                <?php endif; ?>
                            </div>
                            <div class="block"> 
                                <?php if(count($products->attributes)>0): ?> 
                                
                                    <?php $__currentLoopData = $products->attributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$attributes_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    
                                    <?php if($key==1): ?>
                                    
                                    <?php endif; ?> 
                                    
                                    <span class="option-name"><?php echo e($attributes_data['option']['name']); ?></span>
                                    
                                    <?php $__currentLoopData = $attributes_data['values']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$values_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    
                                    <span class="option-value"><?php echo e($values_data['value']); ?></span>
                                    
                                    <?php if($key+1!=count($attributes_data['values'])): ?>
                                    
                                    <span class="option-value">|</span>
                                    
                                    <?php endif; ?>
                                    
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                
                                <?php endif; ?>
                            
                            </div>
                            
                            <div class="buttons">
                                <?php if($products->products_type==0): ?>
                                    <?php if(!in_array($products->products_id,$result['cartArray'])): ?>
                                       <?php if($products->defaultStock==0): ?>
                                            <button type="button" class="btn btn-danger" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->getFromJson('website.Out of Stock'); ?></button>
                                        <?php elseif($products->products_min_order>1): ?>
                                   		 <a class="btn btn-block btn-secondary" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo app('translator')->getFromJson('website.View Detail'); ?></a>
                                   		<?php else: ?>
                                            <button type="button" class="btn btn-secondary cart" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->getFromJson('website.Add to Cart'); ?></button>
                                        <?php endif; ?>
                                    <?php else: ?>
                                        <button type="button" class="btn btn-secondary active"><?php echo app('translator')->getFromJson('website.Added'); ?></button>
                                    <?php endif; ?>
                                <?php elseif($products->products_type==1): ?>
                                    <a class="btn btn-secondary" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo app('translator')->getFromJson('website.View Detail'); ?></a>
                                <?php elseif($products->products_type==2): ?>
                                    <a href="<?php echo e($products->products_url); ?>" target="_blank" class="btn btn-secondary"><?php echo app('translator')->getFromJson('website.External Link'); ?></a>
                                <?php endif; ?>
                           </div>  
                        </article>
                    </div>
       
                    <?php endif; ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?> 
                    
                    <!-- Product sold -->
                    <?php if($result['weeklySoldProducts']['success']==1): ?>                
                    <?php $__currentLoopData = $result['weeklySoldProducts']['product_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$products): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>                
                        <?php if($key<=7): ?>
                            <div class="product">
                              <article>
                                <div class="thumb"> <img class="img-fluid" src="<?php echo e(asset('').$products->products_image); ?>" alt="<?php echo e($products->products_name); ?>"> </div>
                                    <?php
            
                                        $current_date = date("Y-m-d", strtotime("now"));
            
                                        $string = substr($products->products_date_added, 0, strpos($products->products_date_added, ' '));            
                                        $date=date_create($string);            
                                        date_add($date,date_interval_create_from_date_string($web_setting[20]->value." days")); 
            
                                        $after_date = date_format($date,"Y-m-d");            
                                        if($after_date>=$current_date){            
                                            print '<span class="new-tag">';            
                                            print __('website.New');            
                                            print '</span>';            
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
                                            <?php echo e($category->categories_name); ?><?php if(++$key === count($products->categories)): ?> <?php else: ?>, <?php endif; ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </span>
                                    
                                    <h2 class="title text-center wrap-dot-1"> <?php echo e($products->products_name); ?></a></h2>                                
                                    <div class="price text-center"> <?php if(!empty($products->discount_price)): ?>                                  
                                        <?php echo e($web_setting[19]->value); ?><?php echo e($products->discount_price+0); ?> <span><?php echo e($web_setting[19]->value); ?><?php echo e($products->products_price+0); ?></span> <?php else: ?>                                        
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
                                                    <?php if($products->defaultStock==0): ?>
                                                        <button type="button" class="btn btn-block btn-danger" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->getFromJson('website.Out of Stock'); ?></button>
                                                <?php elseif($products->products_min_order>1): ?>
                                   		 			<a class="btn btn-block btn-secondary" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo app('translator')->getFromJson('website.View Detail'); ?></a>
                                   				<?php else: ?>
                                                        <button type="button" class="btn btn-block btn-secondary cart" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->getFromJson('website.Add to Cart'); ?></button>
                                                <?php endif; ?>
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
                    
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    
                    <?php endif; ?>
                    </div>
                </div>
            </div>
      	</div>
    </div>
    
    <div class="group-banners">
    	<div class="row">
        	<div class="col-xs-12 col-md-12">
           		<?php if(count($result['commonContent']['homeBanners'])>0): ?>
                    <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>                
                        <?php if($homeBanners->type==6): ?>
                        <div class="banner-image en">
                            <a title="Banner Image" href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->banners_image); ?>" alt="Banner Image"></a>
                        </div>
                        <?php endif; ?>                
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?> 
            </div>
        </div>
    </div>
  </div>
</div>

<div class="container-fuild">
  <div class="container">
    <div class="products-area"> 
        <!-- heading -->
        <div class="heading">
        	<h2><?php echo app('translator')->getFromJson('website.Special products of the Week'); ?> <small class="pull-right"><a href="<?php echo e(URL::to('/shop?type=special')); ?>" ><?php echo app('translator')->getFromJson('website.View All'); ?></a></small></h2>
        	<hr>
        </div>
        <div class="row">         
            
            <div class="col-xs-12 col-sm-12">
                <div class="row">
                	<!-- Items -->
                    <div class="products products-5x">
                        <!-- Product --> 
                        
                        <?php if($result['special']['success']==1): ?>
                        <?php $__currentLoopData = $result['special']['product_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$special): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if($key<=9): ?>
                        <div class="product">
                          <article>
                            <div class="thumb"><img class="img-fluid" src="<?php echo e(asset('').$special->products_image); ?>" alt="<?php echo e($special->products_name); ?>"></div>
                            <?php
                                    $current_date = date("Y-m-d", strtotime("now"));
                                    
                                    $string = substr($special->products_date_added, 0, strpos($special->products_date_added, ' '));
                                    $date=date_create($string);
                                    date_add($date,date_interval_create_from_date_string($web_setting[20]->value." days"));
                                    
                                    //echo $top_seller->products_date_added . "<br>";
                                    $after_date = date_format($date,"Y-m-d");
                                    
                                    if($after_date>=$current_date){
                                        print '<span class="new-tag">';
                                        print __('website.New');
                                        print '</span>';
                                    }
                                    
                                    if(!empty($special->discount_price)){
                                        $discount_price = $special->discount_price;	
                                        $orignal_price = $special->products_price;	
                                        
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
                            <?php $__currentLoopData = $special->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            	<?php echo e($category->categories_name); ?><?php if(++$key === count($special->categories)): ?> <?php else: ?>, <?php endif; ?>
                        	<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </span>
                            <h2 class="title text-center wrap-dot-1"><?php echo e($special->products_name); ?></h2>                          
                            
                            <div class="price text-center">
                            <?php echo e($web_setting[19]->value); ?><?php echo e($special->discount_price+0); ?><span><?php echo e($web_setting[19]->value); ?><?php echo e($special->products_price+0); ?></span></div>
                            <div class="product-hover">
                                <div class="icons">
                                    <div class="icon-liked">
                                        <span products_id = '<?php echo e($special->products_id); ?>' class="fa <?php if($special->isLiked==1): ?> fa-heart <?php else: ?> fa-heart-o <?php endif; ?> is_liked"><span class="badge badge-secondary"><?php echo e($special->products_liked); ?></span></span>
                                    </div>
                                    <?php if($special->products_type!=2): ?>
                                        <a href="<?php echo e(URL::to('/product-detail/'.$special->products_slug)); ?>" class="fa fa-eye"></a>
                                    <?php endif; ?>
                                </div>
                                
                                <div class="buttons">                                    
                                    <?php if($special->products_type==0): ?>
                                        <?php if(!in_array($special->products_id,$result['cartArray'])): ?>
                                            <?php if($special->defaultStock==0): ?>
                                                <button type="button" class="btn btn-block btn-danger" products_id="<?php echo e($special->products_id); ?>"><?php echo app('translator')->getFromJson('website.Out of Stock'); ?></button>
                                            <?php elseif($products->products_min_order>1): ?>
                                             <a class="btn btn-block btn-secondary" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo app('translator')->getFromJson('website.View Detail'); ?></a>
                                            <?php else: ?>
                                                <button type="button" class="btn btn-block btn-secondary cart" products_id="<?php echo e($special->products_id); ?>"><?php echo app('translator')->getFromJson('website.Add to Cart'); ?></button>
                                            <?php endif; ?>
                                        <?php else: ?>
                                            <button type="button" class="btn btn-block btn-secondary active"><?php echo app('translator')->getFromJson('website.Added'); ?></button>
                                        <?php endif; ?>
                                    <?php elseif($special->products_type==1): ?>
                                        <a class="btn btn-block btn-secondary" href="<?php echo e(URL::to('/product-detail/'.$special->products_slug)); ?>"><?php echo app('translator')->getFromJson('website.View Detail'); ?></a>
                                    <?php elseif($special->products_type==2): ?>
                                        <a href="<?php echo e($special->products_url); ?>" target="_blank" class="btn btn-block btn-secondary"><?php echo app('translator')->getFromJson('website.External Link'); ?></a>
                                    <?php endif; ?>
                                </div>
                                
                             </div>
                          </article>
                        </div>
                        <?php endif; ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="group-banners">
    	<div class="row">
        	<div class="col-xs-12 col-sm-12">
                <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                    <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>                
                        <?php if($homeBanners->type==7): ?>
                        <div class="banner-image">
                            <a title="Banner Image" href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->banners_image); ?>" alt="Banner Image"></a>
                        </div>
                        <?php endif; ?>                
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>                 
            </div>
        </div>
    </div>
    
  </div>
</div>

<div class="container-fuild">
  <div class="container">
    <div class="products-area"> 
      <!-- heading -->
      <div class="heading">
        <h2><?php echo app('translator')->getFromJson('website.Categories'); ?> <small class="pull-right"><!--<a href="shop" ><?php echo app('translator')->getFromJson('website.View All'); ?></a>--></small></h2>
        <hr>
      </div>
        <div class="row"> 
            <div class="col-xs-12 col-sm-12">
                <div class="row">
                    <!-- Items -->
                    <div class="products products-5x">
                        <!-- categories --> 
                        <?php $counter = 0;?>
                        <?php $__currentLoopData = $result['commonContent']['categories']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $categories_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if($counter<=9): ?>
                                <div class="product">
                                    <div class="blog-post">
                                        <article>
                                            <div class="module">
                                            	<a href="<?php echo e(URL::to('/shop?category='.$categories_data->slug)); ?>" class="cat-thumb">
                                                   <img class="img-fluid" src="<?php echo e(asset('').$categories_data->image); ?>" alt="<?php echo e($categories_data->name); ?>">             
                                                </a>
                                                <a href="<?php echo e(URL::to('/shop?category='.$categories_data->slug)); ?>" class="cat-title">
                                                	<?php echo e($categories_data->name); ?>

                                                </a>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                                <?php endif; ?>	
                                <?php $counter++;?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>	
                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>
</div>

<div class="container-fuild">
  <div class="container">
    <div class="products-area"> 
      <!-- heading -->
      <div class="heading">
        <h2><?php echo app('translator')->getFromJson('website.Newest Products'); ?> <small class="pull-right"><a href="<?php echo e(URL::to('/shop')); ?>" ><?php echo app('translator')->getFromJson('website.View All'); ?></a></small></h2>
        <hr>
      </div>
        <div class="row"> 
            <div class="col-xs-12 col-sm-12">
                <div class="row">
                    <!-- Items -->
                    <div class="products products-5x">
                        <!-- Product --> 
                        <?php if($result['products']['success']==1): ?>              
                        <?php $__currentLoopData = $result['products']['product_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$products): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="product">
                          <article>
                            <div class="thumb"> <img class="img-fluid" src="<?php echo e(asset('').$products->products_image); ?>" alt="<?php echo e($products->products_name); ?>"> </div>
                            <?php
        
                                    $current_date = date("Y-m-d", strtotime("now"));
        
                                    
        
                                    $string = substr($products->products_date_added, 0, strpos($products->products_date_added, ' '));
        
                                    $date=date_create($string);
        
                                    date_add($date,date_interval_create_from_date_string($web_setting[20]->value." days"));
                                    $after_date = date_format($date,"Y-m-d");
        
                                    
        
                                    if($after_date>=$current_date){
        
                                        print '<span class="new-tag">';
        
                                        print __('website.New');
        
                                        print '</span>';
        
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
                                <?php echo e($category->categories_name); ?><?php if(++$key === count($products->categories)): ?> <?php else: ?>, <?php endif; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </span>
                            <h2 class="title text-center wrap-dot-1"><?php echo e($products->products_name); ?></h2>
                            <div class="price text-center"> <?php if(!empty($products->discount_price)): ?>
                              
                              <?php echo e($web_setting[19]->value); ?><?php echo e($products->discount_price+0); ?> <span> <?php echo e($web_setting[19]->value); ?><?php echo e($products->products_price+0); ?></span> <?php else: ?>
                              
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
                                            <?php if($products->defaultStock==0): ?>
                                                <button type="button" class="btn btn-block btn-danger" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->getFromJson('website.Out of Stock'); ?></button>
                                            <?php elseif($products->products_min_order>1): ?>
                                             <a class="btn btn-block btn-secondary" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo app('translator')->getFromJson('website.View Detail'); ?></a>
                                            <?php else: ?>
                                                <button type="button" class="btn btn-block btn-secondary cart" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->getFromJson('website.Add to Cart'); ?></button>
                                            <?php endif; ?>
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
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
  </div>
</div>


