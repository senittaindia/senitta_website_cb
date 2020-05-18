<?php $__env->startSection('content'); ?>

<section class="site-content">
	<div class="container">
    	<div class="breadcum-area">
            <div class="breadcum-inner">
                <h3><?php echo app('translator')->getFromJson('website.Shop'); ?></h3>
                <ol class="breadcrumb">                    
                    <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->getFromJson('website.Home'); ?></a></li>
                    
                    <?php if(!empty($result['category_name']) and !empty($result['sub_category_name'])): ?>
                    	<li class="breadcrumb-item"><a href="<?php echo e(URL::to('/shop')); ?>"><?php echo app('translator')->getFromJson('website.Shop'); ?></a></li>
                    	<li class="breadcrumb-item"><a href="<?php echo e(URL::to('/shop?category='.$result['category_slug'])); ?>"><?php echo e($result['category_name']); ?></a></li>
						<li class="breadcrumb-item active"><?php echo e($result['sub_category_name']); ?></li>
                    <?php elseif(!empty($result['category_name']) and empty($result['sub_category_name'])): ?>
                    	<li class="breadcrumb-item"><a href="<?php echo e(URL::to('/shop')); ?>"><?php echo app('translator')->getFromJson('website.Shop'); ?></a></li>
                    	<li class="breadcrumb-item active"><?php echo e($result['category_name']); ?></li>
                    <?php else: ?>                    
                    	<li class="breadcrumb-item active"><?php echo app('translator')->getFromJson('website.Shop'); ?></li>
                    <?php endif; ?>
                </ol>
            </div>
        </div>
		<div class="shop-area">
			<form method="get" enctype="multipart/form-data" id="load_products_form">
               <?php if(!empty(app('request')->input('search'))): ?>
                <input type="hidden"  name="search" value="<?php echo e(app('request')->input('search')); ?>">
               <?php endif; ?>
               <?php if(!empty(app('request')->input('category'))): ?>
                <input type="hidden"  name="category" value="<?php if(app('request')->input('category')!='all'): ?><?php echo e(app('request')->input('category')); ?> <?php endif; ?>">
               <?php endif; ?>
                <input type="hidden"  name="load_products" value="1">                
                <div class="row">                
                    <div class="col-12 col-lg-3 spaceright-0">
                        <?php echo $__env->make('common.sidebar_shop', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                    </div>
                    
       
                    <div class="col-12 col-lg-9">
                        <div class="col-12 spaceright-0">
                        	<div class="row">
                            
                            <?php if(!empty(app('request')->input('search'))): ?>
                                <div class="search-result">
                                    <h4><?php echo app('translator')->getFromJson('website.Search result for'); ?> '<?php echo e(app('request')->input('search')); ?>' <?php if($result['products']['total_record']>0): ?> <?php echo e($result['products']['total_record']); ?> <?php else: ?> 0 <?php endif; ?> <?php echo app('translator')->getFromJson('website.item found'); ?> <h4>
                                </div>
                            <?php endif; ?>
                            
                             <?php if($result['products']['total_record']>0): ?>
                                
                                <div class="toolbar mb-3">
                                    <div class="form-inline">
                                        <div class="form-group col-12 col-md-4">
                                            <label class="col-12 col-lg-5 col-form-label"><?php echo app('translator')->getFromJson('website.Display'); ?></label>
                                            <div class="col-12 col-lg-7 btn-group">
                                                <a href="javascript:void(0);" id="grid" class="btn btn-default active"> <i class="fa fa-th-large" aria-hidden="true"></i> </a>
                                                <a href="javascript:void(0);" id="list" class="btn btn-default"> <i class="fa fa-list" aria-hidden="true"></i> </a>
                                            </div>
                                        </div>
                                        <div class="form-group col-12 col-md-4 center">
                                            <label class="col-12 col-lg-4 col-form-label"><?php echo app('translator')->getFromJson('website.Sort'); ?></label>
                                            <select class="col-12 col-lg-6 form-control sortby" name="type">
                                                <option value="desc" <?php if(app('request')->input('type')=='desc'): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.Newest'); ?></option>
                                                <option value="atoz" <?php if(app('request')->input('type')=='atoz'): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.A - Z'); ?></option>
                                                <option value="ztoa" <?php if(app('request')->input('type')=='ztoa'): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.Z - A'); ?></option>
                                                <option value="hightolow" <?php if(app('request')->input('type')=='hightolow'): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.Price: High To Low'); ?></option>
                                                <option value="lowtohigh" <?php if(app('request')->input('type')=='lowtohigh'): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.Price: Low To High'); ?></option>
                                                <option value="topseller" <?php if(app('request')->input('type')=='topseller'): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.Top Seller'); ?></option>
                                                <option value="special" <?php if(app('request')->input('type')=='special'): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.Special Products'); ?></option>
                                                <option value="mostliked" <?php if(app('request')->input('type')=='mostliked'): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.Most Liked'); ?></option>
                                            </select>
                                        </div>                                
                                        <div class="form-group col-12 col-md-4">
                                            <label class="col-12 col-lg-4 col-form-label"><?php echo app('translator')->getFromJson('website.Limit'); ?></label>
                                            <select class="col-12 col-lg-3 form-control sortby" name="limit">
                                                <option value="15" <?php if(app('request')->input('limit')=='15'): ?> selected <?php endif; ?>>15</option>
                                                <option value="30" <?php if(app('request')->input('limit')=='30'): ?> selected <?php endif; ?>>30</option>
                                                <option value="60" <?php if(app('request')->input('limit')=='60'): ?> selected <?php endif; ?>>60</option>
                                            </select>
                                            <label class="col-12 col-lg-5 col-form-label"><?php echo app('translator')->getFromJson('website.per page'); ?></label>
                                        </div>
                                    </div>
                                </div>
                                
                                <!-- products-3x for gird -->
                                <!--products-list for list-->
                                <div class="products products-3x" id="listing-products">
                                    <?php if($result['products']['success']==1): ?>
                                    <?php $__currentLoopData = $result['products']['product_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$products): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    
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
                                            <div class="block-panel">
                                                <span class="tag">
                                                <?php $__currentLoopData = $products->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                	<?php echo e($category->categories_name); ?><?php if(++$key === count($products->categories)): ?> <?php else: ?>, <?php endif; ?>                                                	
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </span>
                                                <h2 class="title wrap-dot-1"><?php echo e($products->products_name); ?></h2>                                      
                                                <div class="description">
                                                    <?=stripslashes($products->products_description)?>
                                                    <p class="read-more"></p>
                                                </div>                                      
                                                <div class="block-inner">
                                                    <div class="price">
                                                    
                                                        <?php if(!empty($products->discount_price)): ?>
                                                            <?php echo e($web_setting[19]->value); ?><?php echo e($products->discount_price+0); ?>

                                                            <span> <?php echo e($web_setting[19]->value); ?><?php echo e($products->products_price+0); ?></span>
                                                        <?php else: ?>
                                                            <?php echo e($web_setting[19]->value); ?><?php echo e($products->products_price+0); ?>

                                                        <?php endif; ?>
                                                    </div>
                                                    
                                                    <div class="buttons">
                                                        <?php if(!in_array($products->products_id,$result['cartArray'])): ?>
                                                            <button type="button" class="btn btn-secondary btn-round cart" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->getFromJson('website.Add to Cart'); ?></button>
                                                        <?php elseif($products->products_min_order>1): ?>
                                                             <a class="btn btn-block btn-secondary" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo app('translator')->getFromJson('website.View Detail'); ?></a>
                                                        <?php else: ?>
                                                            <button type="button"  class="btn btn-secondary btn-round acitve"><?php echo app('translator')->getFromJson('website.Added'); ?></button>
                                                        <?php endif; ?>
                                                    </div>
                                                </div>
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
                        		
                                <div class="toolbar mt-3">
                                    <div class="form-inline">
                                        <div class="form-group  justify-content-start col-6">
                                        	<input id="record_limit" type="hidden" value="<?php echo e($result['limit']); ?>"> 
                                        	<input id="total_record" type="hidden" value="<?php echo e($result['products']['total_record']); ?>"> 
                                            <label for="staticEmail" class="col-form-label"> <?php echo app('translator')->getFromJson('website.Showing'); ?><span class="showing_record"><?php echo e($result['limit']); ?> </span> &nbsp; <?php echo app('translator')->getFromJson('website.of'); ?>  &nbsp;<span class="showing_total_record"><?php echo e($result['products']['total_record']); ?></span> &nbsp;<?php echo app('translator')->getFromJson('website.results'); ?></label>                                            
                                        </div>
                                        <div class="form-group justify-content-end col-6">
                                            <input type="hidden" value="1" name="page_number" id="page_number">
											<?php
                                                if(!empty(app('request')->input('limit'))){
                                                    $record = app('request')->input('limit');
                                                }else{
                                                    $record = '15';
                                                }
                                            ?>
                                            <button class="btn btn-dark" type="button" id="load_products" 
                                            <?php if(count($result['products']['product_data']) < $record ): ?> 
                                                style="display:none"
                                            <?php endif; ?> 
                                            ><?php echo app('translator')->getFromJson('website.Load More'); ?></button>        
                                        </div>
                                    </div>
                                </div>  
                                <?php elseif(empty(app('request')->input('search'))): ?>
                                    <p><?php echo app('translator')->getFromJson('website.Record not found'); ?></p>
                                <?php endif; ?>                             
                            </div>
                        </div>
                        
                    </div>
                    
                                        
				</div>
			</form>
		</div>
	</div>
</section>
<?php $__env->stopSection(); ?> 
<?php echo $__env->make('layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>