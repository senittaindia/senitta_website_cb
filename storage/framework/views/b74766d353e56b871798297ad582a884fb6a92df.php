
<div style="padding: 5px;">
  <div style="width: 100%; display: block">
    <h2 style="font-size: 20px;border-bottom: 1px solid #eee;padding-bottom: 20px;"><?php echo e(trans('labels.OrderID')); ?># <?php echo e($ordersData['orders_data'][0]->orders_id); ?> <span style="
    background-color: #3c8dbc;
    display: inline;
    padding: .2em .6em .3em;
    font-weight: 700;
    line-height: 1;
    color: #fff;
    text-align: center;
    white-space: nowrap;
    vertical-align: baseline;
    border-radius: .25em;
    font-size:14px !important;
    position: relative;
    top: -2px;
    margin: 0 5px;
    display: none;
    "> Pending</span> <small style="font-size: 14px;float: right;padding-right: 12px;margin-top: 6px;"><?php echo e(trans('labels.OrderedDate')); ?>: <?php echo e(date('d/m/Y', strtotime($ordersData['orders_data'][0]->date_purchased))); ?></small> </h2>
  </div>
  
  <!-- info row -->
  <div style="display: display: block;width: 100%;padding: 0 0 20px;">
    <div style="display: inline-block; width:32%"> <strong><?php echo e(trans('labels.CustomerInfo')); ?>:</strong>
      <address>
      <span style="text-transform: capitalize;"><?php echo e($ordersData['orders_data'][0]->customers_name); ?></span><br>
      <?php echo e($ordersData['orders_data'][0]->customers_street_address); ?> <br>
        <?php echo e($ordersData['orders_data'][0]->customers_city); ?>, <?php echo e($ordersData['orders_data'][0]->customers_state); ?> <?php echo e($ordersData['orders_data'][0]->customers_postcode); ?>, <?php echo e($ordersData['orders_data'][0]->customers_country); ?><br>
        <?php echo e(trans('labels.Phone')); ?>: <?php echo e($ordersData['orders_data'][0]->customers_telephone); ?><br>
        <?php echo e(trans('labels.Email')); ?>: <?php echo e($ordersData['orders_data'][0]->email); ?>

      </address>
    </div>
    <div style="display: inline-block; width:32%"> <strong><?php echo e(trans('labels.ShippingInfo')); ?>:</strong>
      <address>
      <span style="text-transform: capitalize;"><?php echo e($ordersData['orders_data'][0]->delivery_name); ?></span><br>
      <?php echo e($ordersData['orders_data'][0]->delivery_street_address); ?> <br>
      <?php echo e($ordersData['orders_data'][0]->delivery_city); ?>, <?php echo e($ordersData['orders_data'][0]->delivery_state); ?> <?php echo e($ordersData['orders_data'][0]->delivery_postcode); ?>, <?php echo e($ordersData['orders_data'][0]->delivery_country); ?>

      </address>
    </div>
    <div style="display: inline-block; width:32%"> <strong><?php echo e(trans('labels.BillingInfo')); ?>:</strong>
      <address>
      <span style="text-transform: capitalize;"><?php echo e($ordersData['orders_data'][0]->billing_name); ?></span><br>
       <?php echo e($ordersData['orders_data'][0]->billing_street_address); ?> <br>
       <?php echo e($ordersData['orders_data'][0]->billing_city); ?>, <?php echo e($ordersData['orders_data'][0]->billing_state); ?> <?php echo e($ordersData['orders_data'][0]->billing_postcode); ?>, <?php echo e($ordersData['orders_data'][0]->billing_country); ?>

      </address>
    </div>
    
    <!-- /.col --> 
  </div>
  <!-- /.row --> 
  
  <!-- Table row -->
  <table class="table table-striped" style="width: 100%;background-color: transparent;margin: 15px 0 15px;">
    <thead>
      <tr>
        <th align="center"><?php echo e(trans('labels.Qty')); ?></th>
        <th align="center" ><?php echo e(trans('labels.Image')); ?></th>
        <th align="center"><?php echo e(trans('labels.ProductName')); ?></th>
        <th align="center"><?php echo e(trans('labels.AdditionalAttributes')); ?></th>
        <th align="center"><?php echo e(trans('labels.Price')); ?></th>
      </tr>
    </thead>
    <tbody style="text-transform: capitalize;font-size: 12px;">
     <?php $__currentLoopData = $ordersData['orders_data'][0]->data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$products): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <tr <?php if($key%2==0): ?> style="background-color: #f9f9f9;" <?php endif; ?>>
      
        <?php if($key%2==0): ?> <td align="center" style="border-top: 1px solid #f4f4f4; padding: 8px;"> <?php else: ?> <td align="center" style="padding: 8px;"> <?php endif; ?> <?php echo e($products->products_quantity); ?></td>
        <?php if($key%2==0): ?> <td align="center" style="border-top: 1px solid #f4f4f4; padding: 8px;"> <?php else: ?> <td align="center" style="padding: 8px;"> <?php endif; ?><img src="<?php echo e(asset('').$products->image); ?>" width="60px"> </td>
        <?php if($key%2==0): ?> <td align="center" style="border-top: 1px solid #f4f4f4; padding: 8px;"> <?php else: ?> <td align="center" style="padding: 8px;"> <?php endif; ?>  <?php echo e($products->products_name); ?><br></td>
        <?php if($key%2==0): ?> <td align="center" style="border-top: 1px solid #f4f4f4; padding: 8px;"> <?php else: ?> <td align="center" style="padding: 8px;"> <?php endif; ?>
            <?php $__currentLoopData = $products->attribute; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $attributes): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <b>Name:</b> <?php echo e($attributes->products_options); ?><br>
                <b>Value:</b> <?php echo e($attributes->products_options_values); ?><br>
                <b>Price:</b> <?php echo e($attributes->price_prefix); ?><?php echo e($attributes->options_values_price); ?><br>
    
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </td>
        <?php if($key%2==0): ?> <td align="center" style="border-top: 1px solid #f4f4f4; padding: 8px;"> <?php else: ?> <td align="center" style="padding: 8px;"> <?php endif; ?><?php echo e($ordersData['orders_data'][0]->currency); ?><?php echo e($products->final_price); ?></td>
      </tr>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      
    </tbody>
  </table>
  
  <!-- /.row -->
  
  <div style="display: block;"> 
    <!-- accepted payments column -->
    <div style="float:left;width: 64%;padding-right: 4%;">
      <p class="lead" style="margin-bottom: 0;font-size: 18px;font-weight: bold;"><?php echo e(trans('labels.PaymentMethods')); ?>:</p>
      <p style="text-transform:capitalize; border: 1px solid #e3e3e3; padding: 10px;border-radius: 4px;background-color: #f5f5f5;margin-top: 5px;"> <?php echo e(str_replace('_',' ', $ordersData['orders_data'][0]->payment_method)); ?> </p>
      
      <?php if(!empty($ordersData['orders_data'][0]->coupon_code)): ?>
      <p style="margin-bottom: 5px;font-size: 18px;font-weight: bold;"><?php echo e(trans('labels.Coupons')); ?>:</p>
      <table style="text-align: center; width: 80%;
    border-radius: 3px;     margin-bottom: 20px;
    background-color: #f5f5f5;
    border: 1px solid #e3e3e3;">
        <tr>
          <th style="text-align: center; border-top: 1px solid #f4f4f4;     padding: 8px;
    line-height: 1.42857143;
    vertical-align: top;"><?php echo e(trans('labels.Code')); ?></th>
          <th style="text-align: center; border-top: 1px solid #f4f4f4;     padding: 8px;
    line-height: 1.42857143;
    vertical-align: top;"><?php echo e(trans('labels.Amount')); ?></th>
        </tr>
    
     <?php $__currentLoopData = json_decode($ordersData['orders_data'][0]->coupon_code); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $couponData): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <tr>
          <td style="text-align: center; border-top: 1px solid #e3e3e3;     padding: 8px;
    line-height: 1.42857143;
    vertical-align: top;"><?php echo e($couponData->code); ?></td>
    
          <td style="text-align: center; border-top: 1px solid #e3e3e3;     padding: 8px;
    line-height: 1.42857143;
    vertical-align: top;"><?php echo e($couponData->amount); ?> 
            
            <?php if($couponData->discount_type=='percent_product'): ?>
                (<?php echo e(trans('labels.Percent')); ?>)
            <?php elseif($couponData->discount_type=='percent'): ?>
                (<?php echo e(trans('labels.Percent')); ?>)
            <?php elseif($couponData->discount_type=='fixed_cart'): ?>
                (<?php echo e(trans('labels.Fixed')); ?>)
            <?php elseif($couponData->discount_type=='fixed_product'): ?>
                (<?php echo e(trans('labels.Fixed')); ?>)
            <?php endif; ?>
           </td>
        </tr>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        
      </table>
      
      <?php endif; ?>
      
    </div>
    <!-- /.col -->
    <div style=" float: right; width:30%"> 
      
        <table style="width: 100%;padding: 38px 0;">
          <tr>
            <th style="width:50%;padding: 10px 0; border-top: 1px solid #f4f4f4;" align="left"><?php echo e(trans('labels.Subtotal')); ?>:</th>
            <td align="right" style="border-top: 1px solid #f4f4f4;"><?php echo e($ordersData['orders_data'][0]->currency); ?><?php echo e($ordersData['subtotal']); ?></td>
          </tr>
          <tr>
            <th style="width:50%;padding: 10px 0; border-top: 1px solid #f4f4f4;" align="left"><?php echo e(trans('labels.Tax')); ?>:</th>
            <td align="right" style="border-top: 1px solid #f4f4f4;"><?php echo e($ordersData['orders_data'][0]->currency); ?><?php echo e($ordersData['orders_data'][0]->total_tax); ?></td>
          </tr>
          <tr>
            <th style="width:50%;padding: 10px 0; border-top: 1px solid #f4f4f4;" align="left"><?php echo e(trans('labels.ShippingCost')); ?>:</th>
            <td align="right" style="border-top: 1px solid #f4f4f4;"><?php echo e($ordersData['orders_data'][0]->currency); ?><?php echo e($ordersData['orders_data'][0]->shipping_cost); ?></td>
          </tr>
          <?php if(!empty($ordersData['orders_data'][0]->coupon_code)): ?>
          <tr>
            <th style="width:50%;padding: 10px 0; border-top: 1px solid #f4f4f4;" align="left"><?php echo e(trans('labels.DicountCoupon')); ?>:</th>
            <td align="right" style="border-top: 1px solid #f4f4f4;"><?php echo e($ordersData['orders_data'][0]->currency); ?><?php echo e($ordersData['orders_data'][0]->coupon_amount); ?></td>
          </tr>
          <?php endif; ?>
          <tr>
            <th style="width:50%;padding: 10px 0; border-top: 1px solid #f4f4f4;" align="left"><?php echo e(trans('labels.Total')); ?>:</th>
            <td align="right" style="border-top: 1px solid #f4f4f4;"><?php echo e($ordersData['orders_data'][0]->currency); ?><?php echo e($ordersData['orders_data'][0]->order_price); ?></td>
          </tr>
        </table>
        
    </div>
    
    <!-- /.col --> 
  </div>
  <!-- /.row --> 
  
  <!-- /.content --> 
</div>
