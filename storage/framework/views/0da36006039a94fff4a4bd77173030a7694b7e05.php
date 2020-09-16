<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<ol class="carousel-indicators">
		<?php $__currentLoopData = $result['slides']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$slides_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<li data-target="#myCarousel" data-slide-to="<?php echo e($key); ?>" class="<?php if($key==0): ?> active <?php endif; ?>"></li>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
	</ol>
	<div class="carousel-inner">
    	
		<?php $__currentLoopData = $result['slides']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$slides_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<div class="carousel-item  <?php if($key==0): ?> active <?php endif; ?>">
			<?php if($slides_data->type == 'category'): ?>
				<a href="<?php echo e(URL::to('/shop?category='.$slides_data->url)); ?>">
			<?php elseif($slides_data->type == 'product'): ?>
				<a href="<?php echo e(URL::to('/product-detail/'.$slides_data->url)); ?>">
			<?php elseif($slides_data->type == 'mostliked'): ?>
				<a href="<?php echo e(URL::to('shop?type=mostliked')); ?>">
			<?php elseif($slides_data->type == 'topseller'): ?>
				<a href="<?php echo e(URL::to('shop?type=topseller')); ?>">
			<?php elseif($slides_data->type == 'deals'): ?>
				<a href="<?php echo e(URL::to('shop?type=deals')); ?>">
			<?php endif; ?>
				<img width="100%" class="first-slide"  src="<?php echo e(asset('').$slides_data->image); ?>" width="100%" alt="First slide">
				</a>
			</div>
					
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


	</div>
	<a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
		<span class="fa fa-angle-left" aria-hidden="true"></span>
		<span class="sr-only"><?php echo app('translator')->getFromJson('website.Previous'); ?></span>
	</a>
	<a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
		<span class="fa fa-angle-right" aria-hidden="true"></span>
		<span class="sr-only"><?php echo app('translator')->getFromJson('website.Next'); ?></span>
	</a>
</div>