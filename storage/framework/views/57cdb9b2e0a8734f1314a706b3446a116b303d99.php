<!-- New line required  -->

<?php if(count($result['commonContent']['homeBanners'])>0): ?>
    <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    
    <?php if($homeBanners->type==1): ?>
    
    <div class="new-product">
	<a title="Banner Image" href="<?php echo e($homeBanners->banners_url); ?>"><div class="like-bnr" style="background-image: url('<?php echo e(asset('').$homeBanners->banners_image); ?>');"></div></a>
    </div>

    <?php endif; ?>
    
     <?php if($homeBanners->type==2): ?>
    
    <a title="Banner Image" href="<?php echo e($homeBanners->banners_url); ?>"><div class="week-sale-bnr" style="background-image: url('<?php echo e(asset('').$homeBanners->banners_image); ?>');"></div></a>

    <?php endif; ?>
    
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>





