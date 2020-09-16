<?php $__env->startSection('content'); ?>
<section class="site-content">
    <div class="container">
        <div class="breadcum-area">
            <div class="breadcum-inner">
                <h3><?php echo app('translator')->getFromJson('website.View Order'); ?></h3>
                <ol class="breadcrumb">                    
                    <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->getFromJson('website.Home'); ?></a></li>
                    <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/orders')); ?>"><?php echo app('translator')->getFromJson('website.My Orders'); ?></a></li>
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><?php echo app('translator')->getFromJson('website.View Order'); ?></a></li>
                </ol>
            </div>
        </div>
        <div class="orders-detail-area">
            <div class="row">
            	<div class="col-12 col-lg-3 spaceright-0">
                	<?php echo $__env->make('common.sidebar_account', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                </div>
                <div class="col-12 col-lg-9">
                    <div class="col-12 spaceright-0">
                        <div class="heading">
                            <h2><?php echo app('translator')->getFromJson('website.Order information'); ?></h2>
                            <hr>
                        </div>
                        <div class="row">
                            <div class="col-12 col-md-6 col-lg-6 card-box">
                                <div class="card">
                                    <div class="card-header">
                                        <?php echo app('translator')->getFromJson('website.orderID'); ?>&nbsp;<?php echo e($result['orders'][0]->orders_id); ?>

                                    </div>
                                    <div class="card-body">
                                        <div class="card-text">
                                            <p>
                                                <strong><?php echo app('translator')->getFromJson('website.orderStatus'); ?></strong>
                                                <?php if($result['orders'][0]->orders_status_id == '1'): ?>
                                                   <span class="badge badge-warning"><?php echo e($result['orders'][0]->orders_status); ?></span>
                                                <?php elseif($result['orders'][0]->orders_status_id == '2'): ?>
                                                    <span class="badge badge-primary"><?php echo e($result['orders'][0]->orders_status); ?></span>
                                                <?php elseif($result['orders'][0]->orders_status_id == '6'): ?>
                                                    <span class="badge badge-primary"><?php echo e($result['orders'][0]->orders_status); ?></span>    
                                                <?php elseif($result['orders'][0]->orders_status_id == '3'): ?>
                                                    <span class="badge badge-success"><?php echo e($result['orders'][0]->orders_status); ?></span>
                                                <?php elseif($result['orders'][0]->orders_status_id == '4'): ?>
                                                    <span class="badge badge-danger">Cancelled</span>        
                                                <?php else: ?>
                                                    <span class="badge badge-danger"><?php echo e($result['orders'][0]->orders_status); ?></span>
                                                <?php endif; ?>
                                            </p>
                                            <p><strong>Ordered Date</strong><?php echo e(date('d-m-Y', strtotime($result['orders'][0]->date_purchased))); ?></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-6 card-box">
                                <div class="card">
                                  <div class="card-header">                
                                    <?php echo app('translator')->getFromJson('website.Shipping Detail'); ?>
                                  </div>
                                  <div class="card-body">
                                    <div class="card-text">
                                        <p><strong><?php echo e($result['orders'][0]->delivery_name); ?></strong></p>
                                        <p><?php echo e($result['orders'][0]->delivery_street_address); ?>, <?php echo e($result['orders'][0]->delivery_city); ?>, <?php echo e($result['orders'][0]->delivery_state); ?>,
                                        <?php echo e($result['orders'][0]->delivery_postcode); ?>,  <?php echo e($result['orders'][0]->delivery_country); ?></p>
                                    </div>
                                  </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-6 card-box">
                                <div class="card">
                                  <div class="card-header">                
                                    <?php echo app('translator')->getFromJson('website.Billing Detail'); ?>
                                  </div>
                                  <div class="card-body">
                                    <div class="card-text">
                                        <p>
                                            <strong><?php echo e($result['orders'][0]->billing_name); ?></strong></p>
                                            <p><?php echo e($result['orders'][0]->billing_street_address); ?>, <?php echo e($result['orders'][0]->billing_city); ?>, <?php echo e($result['orders'][0]->billing_state); ?>,
                                            <?php echo e($result['orders'][0]->billing_postcode); ?>,  <?php echo e($result['orders'][0]->billing_country); ?>

                                        </p>
                                    </div>
                                  </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-6 card-box">
                                <div class="card">
                                  <div class="card-header">
                                    <?php echo app('translator')->getFromJson('website.Payment/Shipping Method'); ?>
                                  </div>
                                  <div class="card-body">
                                    <div class="card-text">
                                    <p><strong><?php echo app('translator')->getFromJson('website.Shipping Method'); ?></strong><?php echo e($result['orders'][0]->shipping_method); ?></p>
                                    <p><strong><?php echo app('translator')->getFromJson('website.Payment Method'); ?></strong><?php echo e($result['orders'][0]->payment_method); ?></p>
                    
                                    </div>
                                  </div>
                                </div>
                            </div>
                        </div>
                        <div class="row align-items-start">
                            <div class="col-12 col-md-6 col-lg-8">
                                <div class="table-responsive">
                                    <table class="table" style="margin-bottom:0;">
                                        <thead>
                                            <tr>
                                                <th align="left"><?php echo app('translator')->getFromJson('website.items'); ?></th>
                                                <th align="right"><?php echo app('translator')->getFromJson('website.Price'); ?></th>
                                                <th align="right"><?php echo app('translator')->getFromJson('website.Qty'); ?></th>
                                                <th align="right"><?php echo app('translator')->getFromJson('website.SubTotal'); ?></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php 
                                                $price = 0;
                                            ?>
                                            <?php if(count($result['orders']) > 0): ?>
                                                <?php $__currentLoopData = $result['orders'][0]->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $products): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php 
                                                    $price+= $products->final_price;					
                                                ?>
                                                <tr>
                                                    <td align="left" class="item">
                                                        <div class="cart-thumb">
                                                            <img class="img-fluid" src="<?php echo e(asset('').$products->image); ?>" alt="<?php echo e($products->products_name); ?>" alt="">
                                                        </div>
                                                        <div class="cart-product-detail">
                                                            <div class="title"><?php echo e($products->products_name); ?> <?php echo e($products->model); ?></div>
                                                            <?php if(count($products->attributes) >0): ?>
                                                                <ul>
                                                                    <?php $__currentLoopData = $products->attributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $attributes): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                        <li><?php echo e($attributes->products_options); ?><span><?php echo e($attributes->products_options_values); ?></span></li>
                                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                </ul>
                                                            <?php endif; ?>
                                                        </div>
                                                    </td>
                                                    
                                                    <td align="right" class="price"><span><?php echo e($result['orders'][0]->currency); ?><?php echo e($products->final_price/$products->products_quantity); ?></span></td>
                                                    <td align="right" class="Qty"><span><?php echo e($products->products_quantity); ?></span></td>
                                                
                                                    <td align="right" class="subtotal"><span><?php echo e($result['orders'][0]->currency); ?><?php echo e($products->final_price+0); ?></span>
                                                    </td>
                                                </tr>    
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php endif; ?>				
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="order-summary-outer">
                                    <div class="order-summary">
                                        <div class="table-responsive">
                                            <table class="table order-table">
                                                <thead>
                                                    <tr><th colspan="2"><?php echo app('translator')->getFromJson('website.Order Summary'); ?></th></tr>
                                                </thead>
                                                  <tbody>
                                                    <tr>
                                                        <th><span><?php echo app('translator')->getFromJson('website.Subtotal'); ?></span></th>
                                                        <!--<td><?php echo e($result['orders'][0]->currency); ?><?php echo e($products->final_price+0); ?></td>-->
                                                        <td valign="middle" align="right" id="subtotal"><?php echo e($result['orders'][0]->currency); ?><?php echo e($price+0); ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span><?php echo app('translator')->getFromJson('website.Tax'); ?></span></th>
                                                        <td valign="middle" align="right"><?php echo e($result['orders'][0]->currency); ?><?php echo e($result['orders'][0]->total_tax); ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span><?php echo app('translator')->getFromJson('website.Shipping Cost'); ?></br><small><?php echo e($result['orders'][0]->shipping_method); ?></small></span></th>
                                                        <td valign="middle" align="right"><?php echo e($result['orders'][0]->currency); ?><?php echo e($result['orders'][0]->shipping_cost); ?></td>
                                                    </tr>
                                                     <tr>
                                                        <th><span>Hygiene Discount</br><small></small></span></th>
                                                        <td valign="middle" align="right"><?php echo e($result['orders'][0]->currency); ?><?php echo e($result['orders'][0]->hygiene_currency); ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th><span>Coupon Price
                                                        <?php if($result['orders'][0]->coupon_amount >0): ?>
                                                               </br><small>Coupon Applied</small>
                                                            <?php endif; ?>
                                                                
                                                            </span></th>
                                                        <td valign="middle" align="right" id="discount"><?php echo e($result['orders'][0]->currency); ?><?php echo e(number_format((float)$result['orders'][0]->coupon_amount, 2, '.', '')+0); ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="last"><span><?php echo app('translator')->getFromJson('website.Total'); ?></span></th>
                                                        <td class="last" valign="middle" align="right" id="total_price"><?php echo e($result['orders'][0]->currency); ?><?php echo e(number_format((float)$result['orders'][0]->order_price+0, 2, '.', '')+0); ?></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12">
                                <?php if(count($result['orders'][0]->statusess)>0): ?>
                                    <div class="card">
                                        <div class="card-header">
                                        	<?php echo app('translator')->getFromJson('website.Comments'); ?>
                                        </div>
                                        <div class="card-body">
                                        <?php $__currentLoopData = $result['orders'][0]->statusess; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$statusess): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if(!empty($statusess->comments)): ?>
                                                <?php if(++$key==1): ?>
                                                	<h6><?php echo app('translator')->getFromJson('website.Order Comments'); ?>: <?php echo e(date('d/m/Y', strtotime($statusess->date_added))); ?></h6>
                                                   
                                                <?php else: ?>
                                                	<h6><?php echo app('translator')->getFromJson('website.Admin Comments'); ?>: <?php echo e(date('d/m/Y', strtotime($statusess->date_added))); ?></h6>
                                                <?php endif; ?>
                                                <p class="card-text"><?php echo e($statusess->comments); ?></p>  
                                            <?php endif; ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </div>
                                    </div>
                                <?php endif; ?> 
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