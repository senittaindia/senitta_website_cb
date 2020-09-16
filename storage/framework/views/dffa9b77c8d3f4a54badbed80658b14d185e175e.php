<?php $__env->startSection('content'); ?>
<section class="site-content">
	<div class="container">
    	<div class="breadcum-area">
            <div class="breadcum-inner">
                <h3><?php echo app('translator')->getFromJson('website.News Detail'); ?></h3>
                <ol class="breadcrumb">
                    
                    <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->getFromJson('website.Home'); ?></a></li>
                    <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/news?category='.$result['news'][0]->news_categories_slug)); ?>"> <?php echo e($result['news'][0]->categories_name); ?></a></li>
                     <li class="breadcrumb-item active"><?php echo app('translator')->getFromJson('website.News Detail'); ?></li>
                </ol>
            </div>
        </div>

        <div class="blog-area">
            <div class="row">
            	<div class="col-12 col-lg-3 spaceright-0">
                    <?php echo $__env->make('common.sidebar_news', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                 </div>
                 <div class="col-12 col-lg-9">
                 	<div class="col-12 spaceright-0">
                    	<div class="row">
                        	<div class="blogs blogs-detail" style="padding-left:0;">        
                                <div class="blog-post">
                                    <article>
                                       <div class="blog-thumb">
                                            <?php if($result['news'][0]->is_feature==1): ?>
                                                <span class="badge badge-success"><?php echo app('translator')->getFromJson('website.Featured'); ?></span>
                                            <?php endif; ?>
                                            <!--<span class="blog-date">
                                                <strong>
                                                    <?php
                                                        $timestamp = strtotime($result['news'][0]->news_date_added);
                                                        //echo date('d',$timestamp);
                                                    ?>
                                                </strong>
                                                <?php
                                                    
                                                    //echo date('M',$timestamp);
                                                ?>
                                            </span>-->
                                            <img class="img-fluid" src="<?php echo e(asset('').$result['news'][0]->news_image); ?>" alt="<?php echo e($result['news'][0]->news_name); ?>" style="height:300px">
                                        </div>
                                        
                                        <div class="blog-block">
                                            <h2 style="font-size:20px;"><b><?php echo e($result['news'][0]->news_name); ?></b></h2>
                
                                            <div class="blog-text" style="text-align:justify;">
                                                <?=stripslashes($result['news'][0]->news_description)?>
                                                <p style="padding:5px;"><a href="https://www.facebook.com/senittaofficial"><i class="fa fa-facebook"></i></a>&nbsp;&nbsp;<a href="https://twitter.com/senittaofficial"><i class="fa fa-twitter"></i></a>&nbsp;&nbsp;<a href="https://www.instagram.com/senitta_official/"><i class="fa fa-instagram"></i></a>&nbsp;&nbsp;<a href="https://www.linkedin.com/company/senittaofficial"><i class="fa fa-linkedin"></i></a></p>
                                            </div>
                                        </div>
                                    </article>
                                </div>      
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