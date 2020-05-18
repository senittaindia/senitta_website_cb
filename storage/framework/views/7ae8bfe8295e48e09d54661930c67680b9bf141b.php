<nav id="categories" class="navbar navbar-expand-lg p-0 categories">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-categories" aria-controls="navbar-categories" aria-expanded="false" aria-label="Toggle navigation">
		<?php echo app('translator')->getFromJson('website.All Categories'); ?>
  </button>
  
  <div class="collapse navbar-collapse" id="navbar-categories">

    <ul class="navbar-nav flex-column">
     <?php $__currentLoopData = $result['commonContent']['categories']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $categories_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
     
      <li class="nav-item dropdown">
        <a href="<?php echo e(URL::to('/shop')); ?>?category=<?php echo e($categories_data->slug); ?>" class="nav-link dropdown-toggle">
          <img class="img-fuild" src="<?php echo e(asset('').$categories_data->icon); ?>"><?php echo e($categories_data->name); ?> <?php if(count($categories_data->sub_categories)>0): ?> <i class="fa fa-angle-right " aria-hidden="true"></i> <?php endif; ?>
        </a>
        
        <?php if(count($categories_data->sub_categories)>0): ?>
        <ul class="dropdown-menu multi-level">
        	<?php $__currentLoopData = $categories_data->sub_categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub_categories_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>            
            <li class="dropdown-submenu">
              <a  class="dropdown-item" tabindex="-1" href="<?php echo e(URL::to('/shop')); ?>?category=<?php echo e($sub_categories_data->sub_slug); ?>">
                <img class="img-fuild" src="<?php echo e(asset('').$sub_categories_data->sub_icon); ?>">
                <?php echo e($sub_categories_data->sub_name); ?>

              </a>              
            </li>            
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
          </ul>
          <?php endif; ?>
        </li>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </ul>
  </div>
</nav>


