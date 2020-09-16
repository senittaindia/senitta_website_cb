<?php $qunatity=0; ?>                
<?php $__currentLoopData = $result['commonContent']['cart']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cart_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>                
	<?php $qunatity += $cart_data->customers_basket_quantity; ?>                    
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

<a href="#" id="dropdownMenuButton" class="dropdown-toggle"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
	<span class="badge badge-secondary"><?php echo e($qunatity); ?></span>
	<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
	<span class="block">
		<span class="title"><?php echo app('translator')->getFromJson('website.My Cart'); ?></span>                    
		<?php if(count($result['commonContent']['cart'])>0): ?>                        
			<span class="items"><?php echo e(count($result['commonContent']['cart'])); ?>&nbsp;<?php echo app('translator')->getFromJson('website.items'); ?></span>
		<?php else: ?> 
			<span class="items">(0)&nbsp;<?php echo app('translator')->getFromJson('website.item'); ?></span>
		<?php endif; ?> 
	</span>
</a>

<?php if(count($result['commonContent']['cart'])>0): ?>

<div class="shopping-cart dropdown-menu dropdown-menu-right" style="pointer-events:auto !important;" aria-labelledby="dropdownMenuButton">

	<ul class="shopping-cart-items" >
		<?php
			$total_amount=0;
			$qunatity=0;
		?>
		<?php $__currentLoopData = $result['commonContent']['cart']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cart_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

		<?php 
		$total_amount += $cart_data->final_price*$cart_data->customers_basket_quantity;
		$qunatity 	  += $cart_data->customers_basket_quantity; ?>
		<li>

			<div class="item-thumb">
				<a href="javascript:void(0)" class="icon" onClick="delete_cart_product(<?php echo e($cart_data->customers_basket_id); ?>)"><img class="img-fluid" src="<?php echo e(asset('').'public/images/close.png'); ?>" alt="icon"></a>
				<div class="image">
					<img class="img-fluid" src="<?php echo e(asset('').$cart_data->image); ?>" alt="<?php echo e($cart_data->products_name); ?>"/>
				</div>
			</div>
			<h2 class="item-name"><?php echo e($cart_data->products_name); ?></h2>
			<span class="item-quantity"><?php echo app('translator')->getFromJson('website.Qty'); ?>&nbsp;:&nbsp;<?php echo e($cart_data->customers_basket_quantity); ?></span>
			<span class="item-price"> <?php echo e($web_setting[19]->value); ?><?php echo e($cart_data->final_price*$cart_data->customers_basket_quantity); ?></span>
		</li>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>                       
	</ul>
	<div class="tt-summary">
		<p><?php echo app('translator')->getFromJson('website.items'); ?><span><?php echo e($qunatity); ?></span></p>
		<p><?php echo app('translator')->getFromJson('website.SubTotal'); ?><span><?php echo e($web_setting[19]->value); ?><?php echo e($total_amount); ?></span></p>
	</div>
	<div class="buttons">
		<a class="btn btn-dark" href="<?php echo e(URL::to('/viewcart')); ?>"><?php echo app('translator')->getFromJson('website.View Cart'); ?></a>
		<a class="btn btn-secondary" href="<?php echo e(URL::to('/checkout')); ?>"><?php echo app('translator')->getFromJson('website.Checkout'); ?></a>
	</div>
</div>

<?php else: ?>

<div class="shopping-cart shopping-cart-empty dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
	<ul class="shopping-cart-items">
		<li><?php echo app('translator')->getFromJson('website.You have no items in your shopping cart'); ?></li>
	</ul>
</div>
<?php endif; ?>