<div class="sidebar">
    <div class="widget block-categories">
        <div class="block-title">
            <h2><?php echo app('translator')->getFromJson('website.Categories'); ?></h2>
        </div>
        <div class="block-content">
            <ul class="list-categories">
                <?php $__currentLoopData = $result['commonContent']['newsCategories']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $categories): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> 
                    <li>
                        <a href="<?php echo e(URL::to('/news?category='.$categories->slug)); ?>"><?php echo e($categories->name); ?></a>   
                    </li>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </ul>
        </div>
    </div>
    <?php if($result['commonContent']['featuredNews']['success']==1): ?>
    <div class="widget block-recent-posts">
        <div class="block-title">
            <h2><?php echo app('translator')->getFromJson('website.Featured News'); ?></h2>
        </div>
        <div class="block-content">                                
         <?php $__currentLoopData = $result['commonContent']['featuredNews']['news_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$news_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="media">
              <img class="img-fluid" src="<?php echo e(asset('').$news_data->news_image); ?>" alt="<?php echo e($news_data->news_name); ?>">
              <div class="media-body">
                <h5 class="media-title"><a href="<?php echo e(URL::to('/news-detail/'.$news_data->news_slug)); ?>"><?php echo e($news_data->news_name); ?> </a> <span class="badge badge-success"><?php echo app('translator')->getFromJson('website.Featured'); ?></span></h5>
                <div class="media-content"><?=stripslashes($news_data->news_description)?></div>
                <em><?php
                        $timestamp = strtotime($news_data->news_date_added);
                        echo date('d M, Y',$timestamp);
                     ?></em>
              </div>
            </div>
         <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
    <?php endif; ?>
</div>