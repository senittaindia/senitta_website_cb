<?php $__env->startSection('content'); ?>
<section class="site-content">
	<div class="container">
        <div class="breadcum-area">
            <div class="breadcum-inner">
                <h3><?php echo app('translator')->getFromJson('website.Checkout'); ?></h3>
                <ol class="breadcrumb">                    
                    <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->getFromJson('website.Home'); ?></a></li>
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><?php echo app('translator')->getFromJson('website.Checkout'); ?></a></li>
                    <li class="breadcrumb-item">
                    	<a href="javascript:void(0)">
                    		<?php if(session('step')==0): ?>
                            	<?php echo app('translator')->getFromJson('website.Shipping Address'); ?>
                            <?php elseif(session('step')==1): ?>
                            	<?php echo app('translator')->getFromJson('website.Billing Address'); ?>
                            <?php elseif(session('step')==2): ?>
                            	<?php echo app('translator')->getFromJson('website.Shipping Methods'); ?>
                            <?php elseif(session('step')==3): ?>
                            	<?php echo app('translator')->getFromJson('website.Order Detail'); ?>
                            <?php endif; ?>
                    	</a>
                    </li>
                </ol>
            </div>
        </div>
		<div class="checkout-area">
            <div class="row">
				<div class="col-12 col-lg-8 checkout-left">
                <input type="hidden" id="hyperpayresponse" value="<?php if(!empty(session('paymentResponse'))): ?> <?php if(session('paymentResponse')=='success'): ?> <?php echo e(session('paymentResponse')); ?> <?php else: ?> <?php echo e(session('paymentResponse')); ?>  <?php endif; ?> <?php endif; ?>">
                <div class="alert alert-danger alert-dismissible" id="paymentError" role="alert" style="display:none;">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <?php if(!empty(session('paymentResponse')) and session('paymentResponse')=='error'): ?> <?php echo e(session('paymentResponseData')); ?> <?php endif; ?>
                </div>
                    <ul class="nav nav-pills" id="pills-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link <?php if(session('step')==0): ?> active <?php elseif(session('step')>0): ?> active-check <?php endif; ?>" id="shipping-tab" data-toggle="pill" href="#pills-shipping" role="tab" aria-controls="pills-shpping" aria-expanded="true"><?php echo app('translator')->getFromJson('website.Shipping Address'); ?></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?php if(session('step')==1): ?> active <?php elseif(session('step')>1): ?> active-check <?php endif; ?>" <?php if(session('step')>=1): ?> id="billing-tab" data-toggle="pill" href="#pills-billing" role="tab" aria-controls="pills-billing" aria-expanded="true" <?php endif; ?> ><?php echo app('translator')->getFromJson('website.Billing Address'); ?></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?php if(session('step')==2): ?> active <?php elseif(session('step')>2): ?> active-check <?php endif; ?>"  <?php if(session('step')>=2): ?>  id="shipping-methods-tab" data-toggle="pill" href="#pills-shipping-methods" role="tab" aria-controls="pills-shipping-methods" aria-expanded="true"  <?php endif; ?>><?php echo app('translator')->getFromJson('website.Shipping Methods'); ?></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?php if(session('step')==3): ?> active <?php elseif(session('step')>3): ?> active-check <?php endif; ?>"  <?php if(session('step')>=3): ?>  id="order-tab" data-toggle="pill" href="#pills-order" role="tab" aria-controls="pills-order" aria-expanded="true"  <?php endif; ?>><?php echo app('translator')->getFromJson('website.Order Detail'); ?></a>
                        </li>
                    </ul>
                    
                    <div class="tab-content" id="pills-tabContent">
                      <div class="tab-pane fade <?php if(session('step') == 0): ?> show active <?php endif; ?>" id="pills-shipping" role="tabpanel" aria-labelledby="shipping-tab">
                        
                        <form name="signup" enctype="multipart/form-data" class="form-validate" action="<?php echo e(URL::to('/checkout_shipping_address')); ?>" method="post">
                            <div class="form-row">
                              <div class="form-group col-md-6">
                                <label for="firstName"><?php echo app('translator')->getFromJson('website.First Name'); ?></label>
                                <input type="text" class="form-control field-validate" id="firstname" name="firstname" value="<?php if(count(session('shipping_address'))>0): ?><?php echo e(session('shipping_address')->firstname); ?><?php endif; ?>">
                                 <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your first name'); ?></span>  
                              </div>
                              <div class="form-group col-md-6">
                                <label for="lastName"><?php echo app('translator')->getFromJson('website.Last Name'); ?></label>
                                <input type="text" class="form-control field-validate" id="lastname" name="lastname" value="<?php if(count(session('shipping_address'))>0): ?><?php echo e(session('shipping_address')->lastname); ?><?php endif; ?>">
                                <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your last name'); ?></span> 
                              </div>
                              <div class="form-group col-md-6">
                                <label for="firstName"><?php echo app('translator')->getFromJson('website.Company'); ?></label>
                                <input type="text" class="form-control field-validate" id="company" name="company" value="<?php if(count(session('shipping_address'))>0): ?> <?php echo e(session('shipping_address')->company); ?><?php endif; ?>">
                                <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your company name'); ?></span> 
                              </div>
                              <div class="form-group col-md-6">
                                <label for="firstName"><?php echo app('translator')->getFromJson('website.Address'); ?></label>
                                <input type="text" class="form-control field-validate" id="street" name="street" value="<?php if(count(session('shipping_address'))>0): ?><?php echo e(session('shipping_address')->street); ?><?php endif; ?>">
                                <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your address'); ?></span> 
                              </div>
                              <div class="form-group col-md-6">
                                <label for="lastName"><?php echo app('translator')->getFromJson('website.Country'); ?></label>
                                  <select class="form-control field-validate" id="entry_country_id" onChange="getZones();" name="countries_id">
                                      <option value="" selected><?php echo app('translator')->getFromJson('website.Select Country'); ?></option>
                                      <?php if(count($result['countries'])>0): ?>
                                        <?php $__currentLoopData = $result['countries']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $countries): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($countries->countries_id); ?>" <?php if(count(session('shipping_address'))>0): ?> <?php if(session('shipping_address')->countries_id == $countries->countries_id): ?> selected <?php endif; ?> <?php endif; ?> ><?php echo e($countries->countries_name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                      <?php endif; ?>
                                  </select>
                                <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please select your country'); ?></span> 
                              </div>
                              <div class="form-group col-md-6">
                                <label for="firstName"><?php echo app('translator')->getFromJson('website.State'); ?></label>
                                <select class="form-control field-validate" id="entry_zone_id" name="zone_id">
                                      <option value="" selected><?php echo app('translator')->getFromJson('website.Select State'); ?></option>
                                       <?php if(count($result['zones'])>0): ?>
                                        <?php $__currentLoopData = $result['zones']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $zones): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($zones->zone_id); ?>" <?php if(count(session('shipping_address'))>0): ?> <?php if(session('shipping_address')->zone_id == $zones->zone_id): ?> selected <?php endif; ?> <?php endif; ?> ><?php echo e($zones->zone_name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                      <?php endif; ?>
                                      
                                       <option value="Other" <?php if(count(session('shipping_address'))>0): ?> <?php if(session('shipping_address')->zone_id == 'Other'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo app('translator')->getFromJson('website.Other'); ?></option>                      
                                </select>
                                <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please select your state'); ?></span> 
                              </div>
                              <div class="form-group col-md-6">
                                <label for="lastName"><?php echo app('translator')->getFromJson('website.City'); ?></label>
                                <input type="text" class="form-control field-validate" id="city" name="city" value="<?php if(count(session('shipping_address'))>0): ?><?php echo e(session('shipping_address')->city); ?><?php endif; ?>">
                                <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your city'); ?></span> 
                              </div>
                              <div class="form-group col-md-6">
                                <label for="lastName"><?php echo app('translator')->getFromJson('website.Zip/Postal Code'); ?></label>
                                <input type="text" class="form-control" id="postcode" name="postcode" value="<?php if(count(session('shipping_address'))>0): ?><?php echo e(session('shipping_address')->postcode); ?><?php endif; ?>">
                                <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your Zip/Postal Code'); ?></span> 
                              </div>	
                              <div class="form-group col-md-6">
                                <label for="lastName"><?php echo app('translator')->getFromJson('website.Phone Number'); ?></label>
                                <input type="text" class="form-control" id="delivery_phone" name="delivery_phone" value="<?php if(count(session('shipping_address'))>0): ?><?php echo e(session('shipping_address')->delivery_phone); ?><?php endif; ?>">
                                <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your valid phone number'); ?></span> 
                              </div>			  
                            </div>		
                            <div class="button"><button type="submit" class="btn btn-dark"><?php echo app('translator')->getFromJson('website.Continue'); ?></button></div>
                    	</form>
                      </div>
                      
                      
                      
                      <div class="tab-pane fade <?php if(session('step') == 1): ?> show active <?php endif; ?>" id="pills-billing" role="tabpanel" aria-labelledby="billing-tab">
                        <form name="signup" enctype="multipart/form-data" action="<?php echo e(URL::to('/checkout_billing_address')); ?>" method="post">
                        <div class="form-row">
                          <div class="form-group col-md-6">
                            <label for="firstName"><?php echo app('translator')->getFromJson('website.First Name'); ?></label>
                            <input type="text" class="form-control same_address" <?php if(count(session('billing_address'))>0): ?> <?php if(session('billing_address')->same_billing_address==1): ?> readonly <?php endif; ?> <?php else: ?> readonly <?php endif; ?>  id="billing_firstname" name="billing_firstname" value="<?php if(count(session('billing_address'))>0): ?><?php echo e(session('billing_address')->billing_firstname); ?><?php endif; ?>">
                            <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your first name'); ?></span>  
                          </div>
                          <div class="form-group col-md-6">
                            <label for="lastName"><?php echo app('translator')->getFromJson('website.Last Name'); ?></label>
                            <input type="text" class="form-control same_address" <?php if(count(session('billing_address'))>0): ?> <?php if(session('billing_address')->same_billing_address==1): ?> readonly <?php endif; ?> <?php else: ?> readonly <?php endif; ?>  id="billing_lastname" name="billing_lastname" value="<?php if(count(session('billing_address'))>0): ?><?php echo e(session('billing_address')->billing_lastname); ?><?php endif; ?>">
                            <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your last name'); ?></span> 
                          </div>
                          <div class="form-group col-md-6">
                            <label for="firstName"><?php echo app('translator')->getFromJson('website.Company'); ?></label>
                            <input type="text" class="form-control same_address" <?php if(count(session('billing_address'))>0): ?> <?php if(session('billing_address')->same_billing_address==1): ?> readonly <?php endif; ?> <?php else: ?> readonly <?php endif; ?>  id="billing_company" name="billing_company" value="<?php if(count(session('billing_address'))>0): ?><?php echo e(session('billing_address')->billing_company); ?><?php endif; ?>">
                            <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your company name'); ?></span> 
                          </div>
                          <div class="form-group col-md-6">
                            <label for="firstName"><?php echo app('translator')->getFromJson('website.Address'); ?></label>
                            <input type="text" class="form-control same_address" <?php if(count(session('billing_address'))>0): ?> <?php if(session('billing_address')->same_billing_address==1): ?> readonly <?php endif; ?> <?php else: ?> readonly <?php endif; ?>  id="billing_street" name="billing_street" value="<?php if(count(session('billing_address'))>0): ?><?php echo e(session('billing_address')->billing_street); ?><?php endif; ?>">
                            <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your address'); ?></span>
                          </div>
                          <div class="form-group col-md-6">
                            <label for="lastName"><?php echo app('translator')->getFromJson('website.Country'); ?></label>
                              <select class="form-control same_address_select" id="billing_countries_id"  onChange="getBillingZones();" name="billing_countries_id" <?php if(count(session('billing_address'))>0): ?> <?php if(session('billing_address')->same_billing_address==1): ?> disabled <?php endif; ?> <?php else: ?> disabled <?php endif; ?>  >
                                  <option value=""  ><?php echo app('translator')->getFromJson('website.Select Country'); ?></option>
                                  <?php if(count($result['countries'])>0): ?>
                                    <?php $__currentLoopData = $result['countries']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $countries): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($countries->countries_id); ?>" <?php if(count(session('billing_address'))>0): ?> <?php if(session('billing_address')->billing_countries_id == $countries->countries_id): ?> selected <?php endif; ?> <?php endif; ?> ><?php echo e($countries->countries_name); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                  <?php endif; ?>
                              </select>
                              <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please select your country'); ?></span> 
                          </div>
                          <div class="form-group col-md-6">
                            <label for="firstName"><?php echo app('translator')->getFromJson('website.State'); ?></label>
                            <select class="form-control same_address_select" id="billing_zone_id" name="billing_zone_id" <?php if(count(session('billing_address'))>0): ?> <?php if(session('billing_address')->same_billing_address==1): ?> disabled <?php endif; ?> <?php else: ?> disabled <?php endif; ?>  >
                                  <option value="" ><?php echo app('translator')->getFromJson('website.Select State'); ?></option>
                                  <?php if(count($result['zones'])>0): ?>
                                    <?php $__currentLoopData = $result['zones']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$zones): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($zones->zone_id); ?>" <?php if(count(session('billing_address'))>0): ?> <?php if(session('billing_address')->billing_zone_id == $zones->zone_id): ?> selected <?php endif; ?> <?php endif; ?> ><?php echo e($zones->zone_name); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>                        
                                  <?php endif; ?>
                                    <option value="Other" <?php if(count(session('billing_address'))>0): ?> <?php if(session('billing_address')->billing_zone_id == 'Other'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo app('translator')->getFromJson('website.Other'); ?></option>
                              </select>
                              <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please select your state'); ?></span> 
                          </div>
                          <div class="form-group col-md-6">
                            <label for="lastName"><?php echo app('translator')->getFromJson('website.City'); ?></label>
                            <input type="text" class="form-control same_address" <?php if(count(session('billing_address'))>0): ?> <?php if(session('billing_address')->same_billing_address==1): ?> readonly <?php endif; ?> <?php else: ?> readonly <?php endif; ?>  id="billing_city" name="billing_city" value="<?php if(count(session('billing_address'))>0): ?><?php echo e(session('billing_address')->billing_city); ?><?php endif; ?>">
                            <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your city'); ?></span>
                          </div>
                          <div class="form-group col-md-6">
                            <label for="lastName"><?php echo app('translator')->getFromJson('website.Zip/Postal Code'); ?></label>
                            <input type="text" class="form-control same_address"  <?php if(count(session('billing_address'))>0): ?> <?php if(session('billing_address')->same_billing_address==1): ?> readonly <?php endif; ?> <?php else: ?> readonly <?php endif; ?>  id="billing_zip" name="billing_zip" value="<?php if(count(session('billing_address'))>0): ?><?php echo e(session('billing_address')->billing_zip); ?><?php endif; ?>">
                            <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your Zip/Postal Code'); ?></span> 
                          </div>	
                          	
                          <div class="form-group col-md-6">
                            <label for="lastName"><?php echo app('translator')->getFromJson('website.Phone Number'); ?></label>
                            <input type="text" class="form-control same_address" <?php if(count(session('billing_address'))>0): ?> <?php if(session('billing_address')->same_billing_address==1): ?> readonly <?php endif; ?> <?php else: ?> readonly <?php endif; ?>  id="billing_phone" name="billing_phone" value="<?php if(count(session('billing_address'))>0): ?><?php echo e(session('billing_address')->billing_phone); ?><?php endif; ?>">
                            <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your valid phone number'); ?></span> 
                          </div>	  
                        </div>			
                        <div class="form-group">
                            <div class="form-check">
                              <label class="form-check-label">
                                  <input  class="form-check-input" id="same_billing_address" value="1" type="checkbox" name="same_billing_address" <?php if(count(session('billing_address'))>0): ?> <?php if(session('billing_address')->same_billing_address==1): ?> checked <?php endif; ?> <?php else: ?> checked  <?php endif; ?> > <?php echo app('translator')->getFromJson('website.Same shipping and billing address'); ?>
                              </label>
                            </div>
                        </div>
                        <div class="button"><button type="submit" class="btn btn-dark"> <?php echo app('translator')->getFromJson('website.Continue'); ?></button></div>
                    </form>
              	</div>
                
                <div class="tab-pane fade <?php if(session('step') == 2): ?> show active <?php endif; ?>" id="pills-shipping-methods" role="tabpanel" aria-labelledby="shipping-methods-tab">
                    <div class="shipping-methods">
                        <p class="title"><?php echo app('translator')->getFromJson('website.Please select a prefered shipping method to use on this order'); ?></p>
                    <form name="shipping_mehtods" method="post" id="shipping_mehtods_form" enctype="multipart/form-data" action="<?php echo e(URL::to('/checkout_payment_method')); ?>">
                        <?php if(count($result['shipping_methods'])>0): ?>
                            <input type="hidden" name="mehtod_name" id="mehtod_name">
                            <input type="hidden" name="shipping_price" id="shipping_price">
                            
		                    <?php $__currentLoopData = $result['shipping_methods']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $shipping_methods): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="heading">
                                    <h2><?php echo e($shipping_methods['name']); ?></h2>
                                    <hr>
                                </div>
                                <div class="form-check">
                                    
                                    <div class="form-row">
                                        <?php if($shipping_methods['success']==1): ?>
                                        <ul class="list">                              
                                            <?php $__currentLoopData = $shipping_methods['services']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $services): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                             <?php
                                                 if($services['shipping_method']=='upsShipping')
                                                    $method_name=$shipping_methods['name'].'('.$services['name'].')';
                                                 else{
                                                    $method_name=$services['name'];
                                                    }
                                                ?>
                                                <li>
                                                <input class="shipping_data" id="<?php echo e($method_name); ?>" type="radio" name="shipping_method" value="<?php echo e($services['shipping_method']); ?>" shipping_price="<?php echo e($services['rate']); ?>"  method_name="<?php echo e($method_name); ?>" <?php if(!empty(session('shipping_detail')) and count(session('shipping_detail')) > 0): ?> 
                                                <?php if(session('shipping_detail')->mehtod_name == $method_name): ?> checked <?php endif; ?>
                                                <?php elseif($shipping_methods['is_default']==1): ?> checked <?php endif; ?>
                                                >                                                    
                                                 <label for="<?php echo e($method_name); ?>"><?php echo e($services['name']); ?> --- <?php echo e($web_setting[19]->value); ?><?php echo e($services['rate']); ?></label>
                                                </li>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </ul>
                                        <?php else: ?>
                                            <ul class="list">
                                                <li><?php echo app('translator')->getFromJson('website.Your location does not support this'); ?> <?php echo e($shipping_methods['name']); ?>.</li>
                                            </ul>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                        <div class="alert alert-danger alert-dismissible error_shipping" role="alert" style="display:none;">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <?php echo app('translator')->getFromJson('website.Please select your shipping method'); ?>
                        </div>
                        <div class="button">
                            <button type="submit" class="btn btn-dark"><?php echo app('translator')->getFromJson('website.Continue'); ?></button>
                        </div>
                      </form>
                    </div>
                </div>
              
                <div class="tab-pane fade <?php if(session('step') == 3): ?> show active <?php endif; ?>" id="pills-order" role="tabpanel" aria-labelledby="order-tab"> 
                	 
                    <div class="order-review">
                        <?php 
                            $price = 0;
                        ?>
                        <form method='POST' id="update_cart_form" action='<?php echo e(URL::to('/place_order')); ?>' >
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th align="left"><?php echo app('translator')->getFromJson('website.items'); ?></th>
                                            <th align="right"><?php echo app('translator')->getFromJson('website.Price'); ?></th>
                                            <th align="right"><?php echo app('translator')->getFromJson('website.Qty'); ?></th>
                                            <th align="right"><?php echo app('translator')->getFromJson('website.SubTotal'); ?></th>
                                        </tr>
                                    </thead>
                                  
                                    <?php $__currentLoopData = $result['cart']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $products): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php 
                                        $price+= $products->final_price * $products->customers_basket_quantity;					
                                    ?>
                                     
                                    <tbody>
                                        <tr>
                                            <td align="left" class="item">
                                                <input type="hidden" name="cart[]" value="<?php echo e($products->customers_basket_id); ?>">
                                                <a href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>" class="cart-thumb">
                                                    <img class="img-fluid" src="<?php echo e(asset('').$products->image); ?>" alt="<?php echo e($products->products_name); ?>" alt="">
                                                </a>
                                                <div class="cart-product-detail">
                                                    <a href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>" class="title">
                                                        <?php echo e($products->products_name); ?> <?php echo e($products->model); ?>

                                                    </a>
                                                    <?php if(count($products->attributes) >0): ?>
                                                        <ul>
                                                            <?php $__currentLoopData = $products->attributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $attributes): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                <li><?php echo e($attributes->attribute_name); ?><span><?php echo e($attributes->attribute_value); ?></span></li>
                                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                        </ul>
                                                    <?php endif; ?>
                                                </div>
                                            </td>
                                        
                                            <td align="right" class="price"><span><?php echo e($web_setting[19]->value); ?><?php echo e($products->final_price+0); ?></span></td>
                                            <td align="right" class="Qty"><span><?php echo e($products->customers_basket_quantity); ?></span></td>
                                        
                                            <td align="right" class="subtotal"><span class="cart_price_<?php echo e($products->customers_basket_id); ?>"><?php echo e($web_setting[19]->value); ?><?php echo e($products->final_price * $products->customers_basket_quantity); ?></span>
                                            </td>
                                        </tr> 
                                        <tr>
                                            <td colspan="4" class="buttons">
                                                <a href="<?php echo e(URL::to('/editcart?id='.$products->customers_basket_id)); ?>" class="btn btn-sm btn-secondary"><?php echo app('translator')->getFromJson('website.Edit'); ?></a>
                                                <a href="<?php echo e(URL::to('/deleteCart?id='.$products->customers_basket_id)); ?>" class="btn btn-sm btn-secondary"><?php echo app('translator')->getFromJson('website.Remove Item'); ?></a>
                                            </td>
                                        </tr> 
                                    </tbody>            
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </table>
                            </div>                   
                            <?php			
                                if(!empty(session('shipping_detail')) and count(session('shipping_detail'))>0){
									
									if(!empty(session('coupon_shipping_free')) and session('coupon_shipping_free')=='yes'){
										$shipping_price = 0;
									}else{
										$shipping_price = session('shipping_detail')->shipping_price;
									}
									$shipping_name = session('shipping_detail')->mehtod_name;
                                }else{
                                    $shipping_price = 0;
									$shipping_name = '';
                                }				
                                $tax_rate = number_format((float)session('tax_rate'), 2, '.', '');
                                $coupon_discount = number_format((float)session('coupon_discount'), 2, '.', '');				
                                $total_price = ($price+$tax_rate+$shipping_price)-$coupon_discount;	
								session(['total_price'=>$total_price]);
											
                            ?>
                        </form>
                    </div>
                    <div class="notes-summary-area">
                    	<div class="heading">
                            <h2><?php echo app('translator')->getFromJson('website.orderNotesandSummary'); ?></h2>
                            <hr>
                        </div>
                    	<div class="row">
                        	<div class="col-xs-12 col-sm-6 order-notes">
                            	<p class="title"><?php echo app('translator')->getFromJson('website.Please write notes of your order'); ?></p>
                                <div class="form-group">
                                    <p for="order_comments"></p>
                                    <textarea name="comments" id="order_comments" class="form-control" placeholder="Order Notes"><?php if(!empty(session('order_comments'))): ?><?php echo e(session('order_comments')); ?><?php endif; ?></textarea>
                                </div>
                            </div>
    
                            <div class="col-xs-12 col-sm-6 order-summary">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <th><span><?php echo app('translator')->getFromJson('website.SubTotal'); ?></span></th>
                                                <td align="right" id="subtotal"><?php echo e($web_setting[19]->value); ?><?php echo e($price+0); ?></td>
                                            </tr>
                                            <tr>
                                                <th><span><?php echo app('translator')->getFromJson('website.Tax'); ?></span></th>
                                                <td align="right"><?php echo e($web_setting[19]->value); ?><?php echo e($tax_rate); ?></td>
                                            </tr>
                                            <tr>
                                                <th><span><?php echo app('translator')->getFromJson('website.Shipping Cost'); ?></br><small><?php echo e($shipping_name); ?></small></span></th>
                                                <td align="right"><?php echo e($web_setting[19]->value); ?><?php echo e($shipping_price); ?></td>
                                            </tr>
                                            <tr>
                                                <th><span><?php echo app('translator')->getFromJson('website.Discount(Coupon)'); ?></span></th>
                                                <td align="right" id="discount"><?php echo e($web_setting[19]->value); ?><?php echo e(number_format((float)session('coupon_discount'), 2, '.', '')+0); ?></td>
                                            </tr>
                                            <tr>
                                                <th class="last"><span><?php echo app('translator')->getFromJson('website.Total'); ?></span></th>
                                                <td class="last" align="right" id="total_price"><?php echo e($web_setting[19]->value); ?><?php echo e(number_format((float)$total_price+0, 2, '.', '')+0); ?></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div> 
                        </div>
                    </div>
                    <div class="payment-area">
                    	<div class="heading">
                            <h2><?php echo app('translator')->getFromJson('website.Payment Methods'); ?></h2>
                            <hr>
                        </div>
                        <div class="payment-methods">
                        <p class="title"><?php echo app('translator')->getFromJson('website.Please select a prefered payment method to use on this order'); ?></p>
                        
                        <div class="alert alert-danger error_payment" style="display:none" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <?php echo app('translator')->getFromJson('website.Please select your payment method'); ?>
                        </div>	
                                
                        <form name="shipping_mehtods" method="post" id="payment_mehtods_form" enctype="multipart/form-data" action="<?php echo e(URL::to('/order_detail')); ?>">
                            <ul class="list">
                                <?php $__currentLoopData = $result['payment_methods']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $payment_methods): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php if($payment_methods['active']==1): ?>
                                        <input id="payment_currency" type="hidden" onClick="paymentMethods();" name="payment_currency" value="<?php echo e($payment_methods['payment_currency']); ?>">
                                        <?php if($payment_methods['payment_method']=='braintree'): ?>
                                            
                                            <input id="<?php echo e($payment_methods['payment_method']); ?>_public_key" type="hidden" name="public_key" value="<?php echo e($payment_methods['public_key']); ?>">
                                            <input id="<?php echo e($payment_methods['payment_method']); ?>_environment" type="hidden" name="<?php echo e($payment_methods['payment_method']); ?>_environment" value="<?php echo e($payment_methods['environment']); ?>">
                                            <li>
                                            	<input type="radio" onClick="paymentMethods();" name="payment_method" class="payment_method" value="<?php echo e($payment_methods['payment_method']); ?>" <?php if(!empty(session('payment_method'))): ?> <?php if(session('payment_method')==$payment_methods['payment_method']): ?> checked <?php endif; ?> <?php endif; ?>>
                                                <label for="<?php echo e($payment_methods['payment_method']); ?>"><?php echo e($payment_methods['name']); ?></label>
                                            </li>
                
                                        <?php else: ?>
                                            <input id="<?php echo e($payment_methods['payment_method']); ?>_public_key" type="hidden" name="public_key" value="<?php echo e($payment_methods['public_key']); ?>">
                                            <input id="<?php echo e($payment_methods['payment_method']); ?>_environment" type="hidden" name="<?php echo e($payment_methods['payment_method']); ?>_environment" value="<?php echo e($payment_methods['environment']); ?>">
                                            
                                            <li>
                                            	<input onClick="paymentMethods();" type="radio" name="payment_method" class="payment_method" value="<?php echo e($payment_methods['payment_method']); ?>" <?php if(!empty(session('payment_method'))): ?> <?php if(session('payment_method')==$payment_methods['payment_method']): ?> checked <?php endif; ?> <?php endif; ?>>
                                            	<label for="<?php echo e($payment_methods['payment_method']); ?>"><?php echo e($payment_methods['name']); ?></label>
                                            </li>
                                        <?php endif; ?>
                                        
                                    <?php endif; ?>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>                             
                        </form>
                    </div>
                        
						<div class="button">
                            
                            <!--- paypal -->
                            <div id="paypal_button" class="payment_btns" style="display: none"></div>
                            
                            <button id="braintree_button" style="display: none" class="btn btn-dark payment_btns" data-toggle="modal" data-target="#braintreeModel" ><?php echo app('translator')->getFromJson('website.Order Now'); ?></button>
                            
                            <button id="stripe_button" class="btn btn-dark payment_btns" style="display: none" data-toggle="modal" data-target="#stripeModel" ><?php echo app('translator')->getFromJson('website.Order Now'); ?></button>
                            
                            <button id="cash_on_delivery_button" class="btn btn-dark payment_btns" style="display: none"><?php echo app('translator')->getFromJson('website.Order Now'); ?></button>
                            <button id="instamojo_button" class="btn btn-dark payment_btns" style="display: none" data-toggle="modal" data-target="#instamojoModel"><?php echo app('translator')->getFromJson('website.Order Now'); ?></button>
                            
                            <a href="<?php echo e(URL::to('/checkout/hyperpay')); ?>" id="hyperpay_button" class="btn btn-dark payment_btns" style="display: none"><?php echo app('translator')->getFromJson('website.Order Now'); ?></a>
                                                        
                         </div>
                    </div>
                    
                                     
                
                    <!-- The braintree Modal -->
                    <div class="modal fade" id="braintreeModel">
                      <div class="modal-dialog">
                        <div class="modal-content">
                            <form id="checkout" method="post" action="<?php echo e(URL::to('/place_order')); ?>">
                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title"><?php echo app('translator')->getFromJson('website.BrainTree Payment'); ?></h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                      <div id="payment-form"></div>
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-dark"><?php echo app('translator')->getFromJson('website.Pay'); ?> <?php echo e($web_setting[19]->value); ?><?php echo e(number_format((float)$total_price+0, 2, '.', '')); ?></button>
                                </div>
                            </form>
                        </div>
                       </div>
                    </div>
                    
                    <!-- The instamojo Modal -->
                    <div class="modal fade" id="instamojoModel">
                      <div class="modal-dialog">
                        <div class="modal-content">
                            <form id="instamojo_form" method="post" action="">
                            	<input type="hidden" name="amount" value="<?php echo e(number_format((float)$total_price+0, 2, '.', '')); ?>">
                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title"><?php echo app('translator')->getFromJson('website.Instamojo Payment'); ?></h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                               <div class="modal-body">
                                      <div class="form-group row">
                                        <label for="firstName" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.Full Name'); ?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="fullname" class="form-control" placeholder="<?php echo app('translator')->getFromJson('website.Full Name'); ?>" id="firstName">
                                            <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your full name'); ?></span>
                                        </div>
                                     </div>
                                      <div class="form-group row">
                                        <label for="firstName" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.Email'); ?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="email_id" class="form-control " placeholder="<?php echo app('translator')->getFromJson('website.Email'); ?>" id="email_id">
                                            <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your email address'); ?></span>
                                        </div>
                                     </div>
                                      <div class="form-group row">
                                        <label for="firstName" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.Phone Number'); ?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="phone_number" class="form-control" placeholder="<?php echo app('translator')->getFromJson('website.Phone Number'); ?>" id="insta_phone_number">
                                            <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your valid phone number'); ?></span>
                                        </div>
                                     </div>
                                     <div class="alert alert-danger alert-dismissible" id="insta_mojo_error" role="alert" style="display: none">
                                        <span class="sr-only"><?php echo app('translator')->getFromJson('website.Error'); ?>:</span>
                                        <span id="instamojo-error-text"></span>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" id="pay_instamojo" class="btn btn-dark"><?php echo app('translator')->getFromJson('website.Pay'); ?> <?php echo e($web_setting[19]->value); ?><?php echo e(number_format((float)$total_price+0, 2, '.', '')); ?></button>
                                </div>
                            </form>
                        </div>
                       </div>
                    </div>
                    
                    <!-- The stripe Modal -->
                    <div class="modal fade" id="stripeModel">
                        <div class="modal-dialog">
                            <div class="modal-content">
                            
                            <main>
                            <div class="container-lg">
                                <div class="cell example example2">
                                    <form>
                                      <div class="row">
                                        <div class="field">
                                          <div id="example2-card-number" class="input empty"></div>
                                          <label for="example2-card-number" data-tid="elements_examples.form.card_number_label"><?php echo app('translator')->getFromJson('website.Card number'); ?></label>
                                          <div class="baseline"></div>
                                        </div>
                                      </div>
                                      <div class="row">
                                        <div class="field half-width">
                                          <div id="example2-card-expiry" class="input empty"></div>
                                          <label for="example2-card-expiry" data-tid="elements_examples.form.card_expiry_label"><?php echo app('translator')->getFromJson('website.Expiration'); ?></label>
                                          <div class="baseline"></div>
                                        </div>
                                        <div class="field half-width">
                                          <div id="example2-card-cvc" class="input empty"></div>
                                          <label for="example2-card-cvc" data-tid="elements_examples.form.card_cvc_label"><?php echo app('translator')->getFromJson('website.CVC'); ?></label>
                                          <div class="baseline"></div>
                                        </div>
                                      </div>
                                    <button type="submit" class="btn btn-dark" data-tid="elements_examples.form.pay_button"><?php echo app('translator')->getFromJson('website.Pay'); ?> <?php echo e($web_setting[19]->value); ?><?php echo e(number_format((float)$total_price+0, 2, '.', '')); ?></button>
                                    
                                      <div class="error" role="alert"><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 17 17">
                                          <path class="base" fill="#000" d="M8.5,17 C3.80557963,17 0,13.1944204 0,8.5 C0,3.80557963 3.80557963,0 8.5,0 C13.1944204,0 17,3.80557963 17,8.5 C17,13.1944204 13.1944204,17 8.5,17 Z"></path>
                                          <path class="glyph" fill="#FFF" d="M8.5,7.29791847 L6.12604076,4.92395924 C5.79409512,4.59201359 5.25590488,4.59201359 4.92395924,4.92395924 C4.59201359,5.25590488 4.59201359,5.79409512 4.92395924,6.12604076 L7.29791847,8.5 L4.92395924,10.8739592 C4.59201359,11.2059049 4.59201359,11.7440951 4.92395924,12.0760408 C5.25590488,12.4079864 5.79409512,12.4079864 6.12604076,12.0760408 L8.5,9.70208153 L10.8739592,12.0760408 C11.2059049,12.4079864 11.7440951,12.4079864 12.0760408,12.0760408 C12.4079864,11.7440951 12.4079864,11.2059049 12.0760408,10.8739592 L9.70208153,8.5 L12.0760408,6.12604076 C12.4079864,5.79409512 12.4079864,5.25590488 12.0760408,4.92395924 C11.7440951,4.59201359 11.2059049,4.59201359 10.8739592,4.92395924 L8.5,7.29791847 L8.5,7.29791847 Z"></path>
                                        </svg>
                                        <span class="message"></span></div>
                                    </form>
                                                <div class="success">
                                                  <div class="icon">
                                                    <svg width="84px" height="84px" viewBox="0 0 84 84" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                                      <circle class="border" cx="42" cy="42" r="40" stroke-linecap="round" stroke-width="4" stroke="#000" fill="none"></circle>
                                                      <path class="checkmark" stroke-linecap="round" stroke-linejoin="round" d="M23.375 42.5488281 36.8840688 56.0578969 64.891932 28.0500338" stroke-width="4" stroke="#000" fill="none"></path>
                                                    </svg>
                                                  </div>
                                                  <h3 class="title" data-tid="elements_examples.success.title"><?php echo app('translator')->getFromJson('website.Payment successful'); ?></h3>
                                                  <p class="message"><span data-tid="elements_examples.success.message"><?php echo app('translator')->getFromJson('website.Thanks You Your payment has been processed successfully'); ?></p>
                                                </div>
                            
                                            </div>
                                        </div>
                                    </main>
                                </div>
                        	</div>
                    	</div>
                	</div>
				</div>
				</div> <!--CHECKOUT LEFT CLOSE-->
                
                <div class="col-12 col-lg-4 checkout-right">    
                    <div class="order-summary-outer">
                    	<div class="order-summary">
                            <div class="table-responsive">
                                <table class="table">
                                	<thead>
                                    	<tr>
                                        	<th colspan="2"><?php echo app('translator')->getFromJson('website.Order Summary'); ?> </th>
                                        </tr>
                                    </thead>
                                  	<tbody>
                                        <tr>
                                            <th><span><?php echo app('translator')->getFromJson('website.SubTotal'); ?></span></th>
                                            <td align="right" id="subtotal"><?php echo e($web_setting[19]->value); ?><?php echo e($price+0); ?></td>
                                        </tr>
                                        <tr>
                                            <th><span><?php echo app('translator')->getFromJson('website.Tax'); ?></span></th>
                                            <td align="right"><?php echo e($web_setting[19]->value); ?><?php echo e($tax_rate); ?></td>
                                        </tr>
                                        <tr>
                                            <th>
                                            	<span><?php echo app('translator')->getFromJson('website.Shipping Cost'); ?></br><small><?php echo e($shipping_name); ?></small>  <?php if(!empty($web_setting[82]->value)): ?></br><small><?php echo app('translator')->getFromJson('website.Avail free shpping on'); ?> <?php echo e($web_setting[19]->value); ?><?php echo e($web_setting[82]->value); ?>.</small><?php endif; ?></span></th>
                                            <td align="right"><?php echo e($web_setting[19]->value); ?><?php echo e($shipping_price); ?></td>
                                        </tr>
                                        <tr>
                                            <th><span><?php echo app('translator')->getFromJson('website.Discount(Coupon)'); ?></span></th>
                                            <td align="right" id="discount"><?php echo e($web_setting[19]->value); ?><?php echo e(number_format((float)session('coupon_discount'), 2, '.', '')+0); ?></td>
                                        </tr>
                                        <tr>
                                            <th class="last"><span><?php echo app('translator')->getFromJson('website.Total'); ?></span></th>
                                            <td class="last" align="right" id="total_price"><?php echo e($web_setting[19]->value); ?><?php echo e(number_format((float)$total_price+0, 2, '.', '')+0); ?></td>
                                        </tr>
                                	</tbody>
                                </table>
                            </div>
                        </div> 
                        <div class="coupons">
                        	<!-- applied copuns -->
                            
                            
                            <?php if(count(session('coupon')) > 0 and !empty(session('coupon'))): ?>
                            
                            	<div class="form-group"> 
                                    <label><?php echo app('translator')->getFromJson('website.Coupon Applied'); ?></label>         
                                    <?php $__currentLoopData = session('coupon'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $coupons_show): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>  
                                            
                                        <div class="alert alert-success">
                                            <a href="<?php echo e(URL::to('/removeCoupon/'.$coupons_show->coupans_id)); ?>" class="close"><span aria-hidden="true">&times;</span></a>
                                            <?php echo e($coupons_show->code); ?>

                                        </div>
                                        
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>    
                            <?php endif; ?>  
                            <form id="apply_coupon">
                                <div class="form-group">
                                    <label for="inputPassword2" class=""><?php echo app('translator')->getFromJson('website.Coupon Code'); ?></label>
                                    <input type="text" name="coupon_code" class="form-control" id="coupon_code">
                                </div>
                                <button type="submit" class="btn btn-sm btn-dark"><?php echo app('translator')->getFromJson('website.ApplyCoupon'); ?></button>
                                <div id="coupon_error" style="display: none"></div>
                                <div id="coupon_require_error" style="display: none"><?php echo app('translator')->getFromJson('website.Please enter a valid coupon code'); ?></div>
                            </form>
                        </div>
                    </div>	
                </div>	<!--CHECKOUT RIGHT CLOSE-->
            </div>
		</div>
	</div>
</section>
  
   


<?php $__env->stopSection(); ?> 	



<?php echo $__env->make('layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>