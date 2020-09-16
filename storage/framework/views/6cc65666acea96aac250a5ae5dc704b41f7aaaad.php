<div style="width: 100%; display:block;">
<h2><?php echo e(trans('labels.WelcomeEamailTitle')); ?></h2>
<p>
	<strong><?php echo e(trans('labels.Hi')); ?> <?php echo e($userData[0]->customers_firstname); ?> <?php echo e($userData[0]->customers_lastname); ?>!</strong><br>
	<?php echo e(trans('labels.accountCreatedText')); ?><br><br>
	<strong><?php echo e(trans('labels.Sincerely')); ?>,</strong><br>
	<?php echo e(trans('labels.regardsForThanks')); ?>

</p>
</div>