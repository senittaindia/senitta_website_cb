<div class="sidebar">
    <div class="widget block-categories">
        <div class="block-title">
            <h2><?php echo app('translator')->getFromJson('website.My Account'); ?></h2>
        </div>
        <div class="block-content">
            <ul class="list-categories">
                <li>
                    <a href="<?php echo e(URL::to('/profile')); ?>"><?php echo app('translator')->getFromJson('website.Profile'); ?></a>
                </li>
                <li>
                    <a href="<?php echo e(URL::to('/wishlist')); ?>"><?php echo app('translator')->getFromJson('website.Wishlist'); ?></a>
                </li>
                <li>
                    <a href="<?php echo e(URL::to('/orders')); ?>"><?php echo app('translator')->getFromJson('website.Orders'); ?></a>
                </li>
                <li>
                    <a href="<?php echo e(URL::to('/shipping-address')); ?>"><?php echo app('translator')->getFromJson('website.Shipping Address'); ?></a>
                </li>
                <li>
                    <a href="<?php echo e(URL::to('/logout')); ?>"><?php echo app('translator')->getFromJson('website.Logout'); ?></a>
                </li>
            </ul>
        </div>
    </div>
    <div class="widget block-images">
        <?php if(count($result['commonContent']['homeBanners'])>0): ?>
            <ul class="list-images ">
            <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>                
                <?php if($homeBanners->type==3 or $homeBanners->type==4 or $homeBanners->type==5): ?>
                <li> <a title="Banner Image" href="<?php echo e($homeBanners->banners_url); ?>"><img src="<?php echo e(asset('').$homeBanners->banners_image); ?>" alt="image"></a></li>                    
                <?php endif; ?>                
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </ul>
        <?php endif; ?>
    </div>
</div>